-----ATTENDANCE RESTful API---------

* 软件架构说明
	1.Jax-rs Web 服务使用jersey库实现
		
		这个层面只负责交换信息， 不涉逻辑操作；相关逻辑均在Bo或者Dao层实现，见attendance类 resource，bo，dao注释
		
	2.Bo层和Dao层 使用 Spring 集成Hibernate，主要实现DI 和 数据便捷操作
	
		
		具体配置： Attendance（项目名称）\src\main\webapp\WEB-INF\applicationContext.xml
		
	3.主要返回JSON 格式（GET 参数表返回 数据和http 具体状态代码，这个根据具体沟通和需求 实现）
	5.远程访问地址：还在准备，讲localhost换成稍后再邮件提供的ip（我家公网ip老表，路由转发不稳定。。。。）
	6.初始化数据 在项目下端SQL文件夹里面， 表格是Hibernate自动创建，测试数据是网上工具生成的
	  自己写了一个addSignupTestData  存储过程为了给每个员工创建一天两次打卡记录（这个不严密，因为有时有的人漏打卡，需改进）
	
	   ***数据的链接及差异化配置，请修改applicationContext.xml里面的dataSource
	
	7.部署说明 Tomcat 9.0， java 1.7,windows10
	
* 业务逻辑

	1. POST 模拟打卡/补打卡，增加一条签到记录
		
	传入用户id，时间自动生成，signup表格增加一条记录
	http://localhost:8082/Attendance/webapi/signup?staffId=4
	
	2.GET/PUT 公司标准上班时间/下班时间，迟到几分钟算迟到/早退几分钟算早退/工作时间小于几小时算缺勤。
	
	获取参数表，JSON数组， HTTP GET- http://localhost:8082/Attendance/webapi/params
	更新参数表，传入JSON数组， HTTP PUT- http://localhost:8082/Attendance/webapi/params
	
	@上班时间 startTime 时间 08:30:00
	@下班时间 offTime   时间格式08:30:00
	@迟到/早退 为了更符合实际需求， 采用int格式，分钟含义，比如 15 代表迟到15分钟算迟到
	@工作时间 同上， 采用小时，double格式，比如，6.5 代表工作时间为6.5 小时
	
	-----------------------------------------------
	
	3.GET 通过员工id获取 一个员工某个月的考勤表	
	返回JSON 数组 http://localhost:8082/Attendance/webapi/attendances/3?month=9
	
	4.GET 获取某月全体员工异常考勤表，正常结果不用返回
	返回JSON 数组 http://localhost:8082/Attendance/webapi/attendances/odds
	
	这两题的实现逻辑，或者整个系统的核心逻辑 如下：
	
	 1>Java架构的程序 通过GET/PUT/POST与外部信息交换
	 
	 2>所有的数据逻辑整合，由数据库操作时间，以存储过程 stored procedure实现
	 	比如，计算是否迟到，早退，矿工，异常等
	 	
	 3）创建 SP createForAll，设置Event 每天凌晨自动从staff表查找用户，并给他们每人创建一条空的考勤记录
	  
	   核心sql 如下：
	   INSERT INTO `attendance` VALUES(0,id,@staffName,NULL,NULL,NULL,NULL,NULL,NULL,@dayy,@monthh,@dayOfWeekk,@yearr);
	 
	 4）创建SP addforAll（调用addForEachId）， 设置Event， 每天子夜 从signup查找上班，下班时间，更新之前创建的空记录
	
	 核心sql如下：
	 
	 	UPDATE `attendance` SET firstTime=@firstTime, lastTime=@lastTime,workTime=@workTime,late=@late,earlyLeave=@earlyLeave,absence=@absence
        WHERE NAME=@namme AND staffId=@id AND DAY=@dayy AND MONTH=@monthh AND YEAR=@yearr;
	 
	5）针对“异常”讨论
	   
	  根据实际经验， “异常”考勤记录应该改是没有数据记录， 员工没有打卡， 或者只打了一次卡
	  迟到，早退，矿工，这些都是正常的，因为都是有数据记录的，可以直接传给 工资系统 进行业务操作
	 
	 所以从这次，我先采用这个角度 实现 查找 “异常”
	 
	    *1 用户打卡一次， 那么attendance表中的firstTime 和lastTime相等（因为是通过 order by signupTime desc/asc limit 1 方式获取的）
	    
	    *2 用户没打卡， 子夜的更新SP 根本不会更新仍和数据， 那么firstTime 和lastTime是Null
	    
	 所以查找“异常”的逻辑是	 
	 where year=？ and month=？ and fritTime is null or firstTime=lastTime
	 
	 
*  已知的bug和系统缺陷
     
     1） 由于jersey 和spring container 是分离的，数据存储这边从 Spring容器外调用数据操作
     	会涉及Hibernate和Spring Transaction 管理的整合，实施过程出现好几次bug，如数据访问权限
     	hibernate只读不写等，已解决。    	
     
     2）有时返回json数组 会报没有 APPLICATUION/JSON 类型的 MessgaeWriter 
       stackoverflow说是 估计是jersey版本问题，我这边没能验证解决
     
     3）只有第一题实现response返回http状态吗，其余均返回原始json，需要改善，且 异常处理未作太多考虑，需要进一步完善增强
	 
	
	
	
	
	
	
	
	
	
	
	
	