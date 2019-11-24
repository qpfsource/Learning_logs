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
				
				
四、高级用法
	1.LIMIT 语句用于规定返回的查询结果数
		语法格式:SELECT COLUMN(s) FROM 表名 LIMIT  number(即需要返回的记录数)   如:SELECT * FROM student LIMIT 3(从学生表中查询3条数据)
		
	2. LIKE 操作符，LIKE 操作符用于在 WHERE 子句中搜索列中的指定模式。
		语法格式:SELECT COLUMN(s) FROM 表名称 WHERE column_name LIKE pattern    如:SELECT * FROM student WHERE username LIKE '王%' 
		注:"%" 可用于定义通配符（模式中缺少的字母）。
		案例1:SELECT * FROM Persons WHERE City LIKE '%lon%'(查询居住城市包含字母lon的人)     案例2:SELECT * FROM Persons WHERE City LIKE '%g'(查询居住城市以g结尾的人)
		使用NOT关键字可以进行内容的反选，如:SELECT * FROM Persons WHERE City NOT LIKE '%lon%' (查询居住城市不包含lon的人)
		
	3.SQL 通配符，在搜索数据库中的数据时，SQL 通配符可以替代一个或多个字符。SQL 通配符必须与 LIKE 运算符一起使用。
	     SQL 中的通配符如下:%(替代一个或多个字符)、_(仅替代一个字符)、[charlist](字符列中的任何单一字符)、[^charlist]或[!charlist](不在字符列中的任何一个字符)
		案例1:SELECT * FROM student WHERE City LIKE 'Ne%'    案例2:SELECT * FROM student WHERE City LIKE '%lond%'   案例3:SELECT * FROM student WHERE City LIKE '_eroge'
		案例4:SELECT * FROM Persons WHERE City LIKE '[ALN]%'(从上面的 "Persons" 表中选取居住的城市以 "A" 或 "L" 或 "N" 开头的人)
	
	4.IN 操作符，IN 操作符允许我们在 WHERE 子句中规定多个值。
		语法格式:SELECT COLUMN(s) FROM 表名  WHERE  COLUMN_NAME IN(VALUE1,VALUE2....)
		案例:SELECT * FROM Persons WHERE LASTNAME IN('Adams','Carter')----------->从Persons表中选取姓氏为 Adams 和 Carter 的人
		
	5.BETWEEN 操作符 ，BETWEEN 操作符在 WHERE 子句中使用，作用是选取介于两个值之间的数据范围。操作符 BETWEEN ... AND 会选取介于两个值之间的数据范围。这些值可以是数值、文本或者日期。
		语法格式:SELECT COLUMN(s) FROM 表名 WHERE COLUMN_NAME BETWEEN  VALUE1 AND VALUE2
		案例1:SELECT * FROM Persons WHERE LASTNAME BETWEEN 'Adams' AND 'Carter'------>以字母顺序显示介于 "Adams"（包括）和 "Carter"（不包括）之间的人。
		案例2:SELECT * FROM Persons WHERE LastName NOT BETWEEN 'Adams' AND 'Carter'----->使用上面的例子显示范围之外的人，请使用 NOT 操作符。
	
	6.ALIAS 操作符，可以为列名称和表名称指定别名（Alias）。
		语法格式:1、SELECT COLUMN(s) FROM 表名 AS ALIAS_NAME(表的ALIAs语法)   2、SELECT COLUMN_NAME  as  ALIAS_NAME FROM 表名		
		案例:使用表名称别名,假设我们有两个表分别是："Persons" 和 "Product_Orders"。我们分别为它们指定别名 "p" 和 "po"。
		现在，我们希望列出 "John Adams" 的所有定单。
		多表的SQL语句如下:SELECT po.OrderID, p.LastName, p.FirstName
					FROM Persons AS p, Product_Orders AS po
					WHERE p.LastName='Adams' AND p.FirstName='John'
					
		单表的指定别名:SELECT st.`id` FROM student AS st  WHERE st.`username`='张三'; (查询学生表中的名字为张三的学生id,将学生表指定别名为st)
							
		使用列名别名:SELECT LastName AS Family, FirstName AS Name FROM Persons(指定表中的列的别名)
	
	7.JoIn 语法，用于根据两个或多个表中的列之间的关系，从这些表中查询数据。
		有时为了得到完整的结果，我们需要从两个或更多的表中获取结果。我们就需要执行 join。
		数据库中的表可通过键将彼此联系起来。主键（Primary Key）是一个列，在这个列中的每一行的值都是唯一的。在表中，每个主键的值都是唯一的。
		这样做的目的是在不重复每个表中的所有数据的情况下，把表间的数据交叉捆绑在一起。
		语法格式:	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
					FROM Persons, Orders
					WHERE Persons.Id_P = Orders.Id_P 
		说明:从订单表中查询出对应的订单信息，订单表中的用户ID和用户表中的ID对应一致即可。
		案例:	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
				FROM Persons
				INNER JOIN Orders
				ON Persons.Id_P = Orders.Id_P
				ORDER BY Persons.LastName
			
	8.SQL INNER JOIN 关键字,在表中存在至少一个匹配时，INNER JOIN 关键字返回行。
		语法格式:	SELECT column_name(s)
					FROM table_name1
					INNER JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
					
					
		注:INNER JOIN 关键字在表中存在至少一个匹配时返回行。如果 "Persons" 中的行在 "Orders" 中没有匹配，就不会列出这些行。
		###################################################################################################################
		组合查询的相关语法:
	    select * from (
			SELECT
            t_company_userinfo.`name` companyName,
            t_m_z_user.id userId,
            t_m_z_user.`using`,
            t_m_z_user.company_id companyId
            FROM
            t_m_z_user
            INNER JOIN t_company_userinfo ON t_company_userinfo.ID = t_m_z_user.company_id
            WHERE t_m_z_user.phonenumber = 15861336291 
            ORDER BY t_m_z_user.create_time DESC)a
            GROUP BY  a.companyId


