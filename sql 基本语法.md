一、基本构成:可以把 SQL 分为两个部分：数据操作语言 (DML) 和 数据定义语言 (DDL)。
二、DML（数据操作语言）
	DML（数据操作语言）:SQL (结构化查询语言)是用于执行查询的语法。但是 SQL 语言也包含用于更新、插入和删除记录的语法。
		查询和更新指令构成了 SQL 的 DML 部分：
				1.SELECT - 从数据库中获取对应的信息数据
				2.UPDATE - 更新数据库表中的数据
				3.DELETE - 从数据库表中删除数据
				4.INSERT INTO - 向数据库的对应表中插入数据
				
		SQL 的数据定义语言 (DDL) 部分使我们有能力创建或删除表格。我们也可以定义索引（键），规定表之间的链接，以及施加表间的约束。
				1.CREATE DATABASE - 创建数据库
				2.ALTER DATABASE - 修改数据库
				3.CREATE TABLE - 创建数据表
				4.ALTER TABLE - 变更（改变）数据表
				5.DROP TABLE - 删除数据表
				6.CREATE INDEX - 创建索引
				7.DROP INDEX - 删除索引
				
				
三、基本sql 语法
	1.SELECT 基本查询语句
				1.SELECT 语句，SELECT 语句用于从表中选取数据。
				语法: SELECT 列名称1,列名称2,.....  FROM 表名称  或 SELECT * FROM 表名称（* 为通配符，代表查出当前数据表中的所有数据）
					  注:SQL 语句对大小写不敏感。SELECT 等效于 select。
					  
				2.SELECT DISTINCT 语句,在表格中可能会存在重复的数据，使用distinct 语句可以查询出表中的不相同的数据部分。（关键词 DISTINCT 用于返回唯一不同的值。）
				语法: SELECT DISTINCT 列名称 FROM 表名称     SELECT DISTINCT sex FROM student
				
				3.WHERE 子句 （一般用于有选择性的从表格中选取数据和操作数据）
				语法: SELECT 列名称 FROM 表名称 WHERE 列名 运算符 值     如:SELECT score FROM student WHERE score >=80
						注:[WHERE子句中可使用的运算符如下:=(等于)、<>(不等于)、>(大于)、<(小于)、>=(大于等于)、<=(小于等于)、BETWEEN(在某个范围内)、LIKE(搜索某种模式，即模糊查询)]
				
				4.AND 与 OR 运算符 ，AND 和 OR 运算符用于基于一个以上的条件对记录进行过滤。
				注:(1.)AND 和 OR 可在 WHERE 子语句中把两个或多个条件结合起来。(2.)如果第一个条件和第二个条件都成立，则 AND 运算符显示一条记录;如果第一个条件和第二个条件中只要有一个成立，则 OR 运算符显示一条记录。
				语法: SELECT 列名  FROM 表名 WHERE 条件语句1 AND(OR) 条件语句2  如:SELECT * FROM Persons WHERE FirstName='Thomas' AND LastName='Carter'
					AND 和 OR 运算符可结合进行使用    如:SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William')AND LastName='Carter'
					
				5.ORDER BY 语句，ORDER BY 语句用于对结果集进行排序(ORDER BY 语句用于根据指定的列对结果集进行排序,默认按照升序对记录进行排序,如果需要使用的排序方式为降序则需要使用DESC关键字)。
				语法:SELECT 列名 FROM 表名称 ORDER BY 列名    如:SELECT Company, OrderNumber FROM Orders ORDER BY Company(以字母顺序显示公司名称)
				案例1:SELECT Company, OrderNumber FROM Orders ORDER BY Company, OrderNumber(以字母顺序显示公司名称（Company），并以数字顺序显示顺序号（OrderNumber))
				案例2:SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC (以逆字母顺序显示公司名称)
				案例3:SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC(以逆字母顺序显示公司名称，并以数字顺序显示顺序号)
	
	2.INSERT 基本插入语句
				1.INSERT INTO 语句，INSERT INTO 语句用于向表格中插入新的行。
				语法:INSERT INTO 表名称 VALUES (值1,值2,值3........)    如:INSERT INTO sutdent VALUES (15,"root","男","看报纸","香港特别经济行政区")
					 INSERT INTO 表名称 (列1,列2,列3....) VALUES (值1,值2,值3.........) 如:INSERT INTO student (id ,username ,sex) VALUES (19,"admin","女")
					 
	3.UPDATE 基本更新语句
				1.Update 语句，Update 语句用于修改表中的数据。
				语法:UPDATE 表名称 SET 列名 = 新值 WHERE 列名称 = 某值   如:UPDATE student SET address = "江苏省南京市鼓楼区" WHERE ID=19;
					 UPDATE 表名称 SET 列名1 = 新值1,列名2 = 新值2  WHERE 列名称 = 某值  如:UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing' WHERE LastName = 'Wilson'
	
	4.DELETE 基本删除语句
				1.DELETE 语句，DELETE 语句用于删除表中的行。
				语法:DELETE FROM 表名称 WHERE 列名称 = 值    如:DELETE FROM student WHERE username = "王龙"
				2.DELETE 语句，删除所有行    DELETE FROM student 或  DELETE * FROM student(删除表中的所有行，但表的数据结构及属性等会保存下来)
				

					  
	


