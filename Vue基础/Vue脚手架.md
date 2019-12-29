### Vue脚手架（Vue CLI）

1. CLI:Command -Line Interface,即命令行界面，即我们通常所称的脚手架，使用脚手架可以快速的搭建对应的Vue的开发环境。

使用环境:

​	1.安装NodeJs及对应的NPM

​    2.依赖Webpack环境

安装Vue脚手架

方式:使用npm install -g @vue/cli



脚手架2创建项目

vue init webpack 项目名称（不能包含中文）

Vue 全家桶:Vuecore +Vue-router+Vuex



Vue项目的目录介绍

build：包含webpack的相关配置文件

config：包含webpack的相关配置文件

Vue程序的执行过程:template---(parse,解析)--->ast(Abstract Sytnas Tree,抽象语法树)--->rander函数--->(VDOM)虚拟DOM----->真实UI
render函数:function(createElement){
//1.方法参数,根据传入的标签创建对应的元素
	return createElement("h2"，{class:"box"},[Hello World!])
//2.传入对应的组件
	return createElement(组件名称)
	
	return h(App)
 }



2.Vue-CLI3创建项目及对应的目录介绍
	1.选择自定义的创建方式，选择对应的插件信息
	2.修改Vue-CLI3配置文件的方式
		2.1:使用vue ui命令
		2.2:nodel_models---->@Vue--->cli-service(不建议使用)
		2.3:在src目录下创建vue.config.js文件
				定义格式:module.exports={},导出对应的配置文件，在后期会将自定义的内容与原本的内容结合起来。
				
				
3.箭头函数的基本使用
		1.定义:在ES6中可以使用箭头定义函数
			const fun1 = (参数列表)=>{}    如:const fun1 = ()=>{}
			
		2.参数问题:const sum = (num1,num2)=>{return num1+num2}   //2个参数的情况
				const power = (num)=>{return num*num} //1个参数时参数列表的（）可以省略，即可以写成:const power = num =>{return num*num}
	
		
		3.函数体:在函数体中包含多行代码时，按照对应的方式逐行编写即可，函数体中只有一行代码时，可以进行简写
				如:const squre = (num1,num2) =>num1*num2，无返回值时，可以进行打印 
				如:const  kos = (num1,num2)  =>console.log("Hello Demo")
				
		4.this 的使用
			结论:箭头函数的this 引用的是最近作用域中的this(向外层作用域中查找，一层层查找，直到找到this为止)
			
4.路由的相关信息（Router）
		路由:决定数据从来源到目的地的路径 
		后端路由:后端处理url与页面之间的对应关系
		
		
5.监听URL改变
		1.location.hash="abd"  //此时，浏览器不会进行自动刷新与再次请求，当hash发生改变时，依据前端的路由映射，获取对应的组件进行渲染显v          示
		2.history.pushState({},'','home') //此时，浏览器不会进行自动刷新与再次请求
		

6.	前端路由的配置及基本内容     
		export default new Router({
  routes: [
    {
      path:'/',
      //重定向redict
      redirect:'/home'
    },
    {
      path:'/home',
      component:Home
    },
    {
      path:'/about',
      component:About
    },
  ],
  mode:'history'
	})
	
	相关组件:
			 <router-view></router-view>
			<!-- router-view起占位的左右，后期对应的组件就展示在router-view组件位置 -->
			<router-link to="/home" tag="button" replace active-class="active">首页</router-link>  ,replace后将无法使用返回的操作
			<router-link to="/about">关于</router-link>
			
			
7.动态路由
	如:/user/zhangsan
		path:'/user/:user_id'
		this.$route.params.user_id
		
8.打包js文件的内容
		1.app.(3bd7dd3778d4dfa34639).js：代表用户编写的自定义的业务及对应的js代码
		2.vendor.(ef830d4d130c712b8963).js：代表开发应用程序时所使用到的相关依赖的js文件打包
		3.manifest.(2ae2e69a05c33dfc65f8).js：为开发的web应用程序做底层的内容支撑
		
9.本地运行vue打包后的项目
		1.安装nginx
		2.删除html文件夹中的所有文件，将打包后的文件夹放在该目录中(dist)
		3.修改配置文件nginx.conf,修改其中的listen(端口)及location(文件的位置如:index.html)
		4.输入localhost:listen查看项目
		注意:1.taskkill /im "nginx.exe":关闭nginx命令     2.taskkill |finstr "nginx.exe"：查询nginx进程的PID及任务信息
		
10.路由懒加载
		概念:将相关的路由文件进行分离，相关路由的js文件在使用时在进行相关的js代码加载显示
		
			
			



