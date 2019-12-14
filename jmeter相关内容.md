一、JMETER常用测试原件
	1.测试计划:编写计划名称及基本项目内容描述（项目内容一般使用英文描述）
	2.线程组:通过多线程技术模拟用户数量进行相关测试
	3.监听器:通过添加监听器的相关方式查看测试结果
	
	可以添加http请求默认值，设置ip地址和端口号,后期请求中将不用再次添加对应的内容
	正则表达式提取登录的TOAKEN:如x-webtoken:使用正则表达式提取对应的toaken(正则提取器放在对应的登录请求中),
	获取TOKEN的正则表达式:"toaken":"(.+?)"      模板:$1$           匹配数字:0(可使用debug请求查看参数)
	使用变量:${变量名}
	
	并发:添加同步定时处理(Sycongonize timer)
	
	
	
	
	配置文件:jmeter.properties
二、代理脚本录制
	1.开启相关代理服务
	2.录制脚本（人为执行对应的操作流程）
	3.保存脚本jmx文件
	4.调试脚本
	5.录制https协议的服务时需要进行配置
	
	流程:创建线程组(目标控制器选择)---->添加代理服务器(设置请求过滤)--->开启代理--->启动代理
	
	请求过滤:排除模式下对包含指定格式的文件请求进行过滤(.*\.php.*、.*\.js.*、.*\.png.*)
	jmeter -n -t <测试JMX文件> -l <测试日志文件> -e -o <输出文件夹的路径>
	
	

三、变量参数化
				1.CSV Data Set Config:  采用VSV模板生成对应的测试数据
				2.User Defined Varlisbles:用户自定义变量(定义用户名、密码等相关信息)
				3._CSVRead:函数助手,参数可使用对应的函数进行生成
				4.User Varlisbles:用户参数
			
			线程组--->配置原件--->CSV数据文件配置
					1.文件名:文件所在路径
					2.编码格式:utf-8
					3.变量名称:username,pass
					4.线程共享模式:当前线程组
			使用变量名称:${username},${pass}
			
			
	
四、服务端监控技术
		服务器资源查看:CPU、内存、IO、网络
		
		服务端技术jar包:     Server Agent.jar
		
		测试端jar包:JmeterPlugins-Standard.jar、JmeterPlugins-Extras.jar
		
		
		
		使用nmon技术
	
	
	
相关参考地址:
		https://blog.csdn.net/qq_39720249/article/details/85044581#一、jmeter报告仪表板相关信息

		https://www.cnblogs.com/imyalost/p/10239317.html

		https://www.cnblogs.com/mawenqiangios/p/8321047.html
		
		参数化配置:https://www.cnblogs.com/tudou-22/p/9197992.html
		
		
		https://www.cnblogs.com/kittyy/p/11670769.html

