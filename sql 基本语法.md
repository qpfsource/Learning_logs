һ����������:���԰� SQL ��Ϊ�������֣����ݲ������� (DML) �� ���ݶ������� (DDL)��
����DML�����ݲ������ԣ�
	DML�����ݲ������ԣ�:SQL (�ṹ����ѯ����)������ִ�в�ѯ���﷨������ SQL ����Ҳ�������ڸ��¡������ɾ����¼���﷨��
		��ѯ�͸���ָ����� SQL �� DML ���֣�
				1.SELECT - �����ݿ��л�ȡ��Ӧ����Ϣ����
				2.UPDATE - �������ݿ���е�����
				3.DELETE - �����ݿ����ɾ������
				4.INSERT INTO - �����ݿ�Ķ�Ӧ���в�������
				
		SQL �����ݶ������� (DDL) ����ʹ����������������ɾ���������Ҳ���Զ����������������涨��֮������ӣ��Լ�ʩ�ӱ���Լ����
				1.CREATE DATABASE - �������ݿ�
				2.ALTER DATABASE - �޸����ݿ�
				3.CREATE TABLE - �������ݱ�
				4.ALTER TABLE - ������ı䣩���ݱ�
				5.DROP TABLE - ɾ�����ݱ�
				6.CREATE INDEX - ��������
				7.DROP INDEX - ɾ������
				
				
��������sql �﷨
	1.SELECT ������ѯ���
				1.SELECT ��䣬SELECT ������ڴӱ���ѡȡ���ݡ�
				�﷨: SELECT ������1,������2,.....  FROM ������  �� SELECT * FROM �����ƣ�* Ϊͨ�������������ǰ���ݱ��е��������ݣ�
					  ע:SQL ���Դ�Сд�����С�SELECT ��Ч�� select��
					  
				2.SELECT DISTINCT ���,�ڱ���п��ܻ�����ظ������ݣ�ʹ��distinct �����Բ�ѯ�����еĲ���ͬ�����ݲ��֡����ؼ��� DISTINCT ���ڷ���Ψһ��ͬ��ֵ����
				�﷨: SELECT DISTINCT ������ FROM ������     SELECT DISTINCT sex FROM student
				
				3.WHERE �Ӿ� ��һ��������ѡ���ԵĴӱ����ѡȡ���ݺͲ������ݣ�
				�﷨: SELECT ������ FROM ������ WHERE ���� ����� ֵ     ��:SELECT score FROM student WHERE score >=80
					ע:[WHERE�Ӿ��п�ʹ�õ����������:=(����)��<>(������)��>(����)��<(С��)��>=(���ڵ���)��<=(С�ڵ���)��BETWEEN(��ĳ����Χ��)��LIKE(����ĳ��ģʽ����ģ����ѯ)]
				
				4.AND �� OR ����� ��AND �� OR ��������ڻ���һ�����ϵ������Լ�¼���й��ˡ�
				ע:(1.)AND �� OR ���� WHERE ������а����������������������(2.)�����һ�������͵ڶ����������������� AND �������ʾһ����¼;�����һ�������͵ڶ���������ֻҪ��һ���������� OR �������ʾһ����¼��
				�﷨: SELECT ����  FROM ���� WHERE �������1 AND(OR) �������2  ��:SELECT * FROM Persons WHERE FirstName='Thomas' AND LastName='Carter'
					AND �� OR ������ɽ�Ͻ���ʹ��    ��:SELECT * FROM Persons WHERE (FirstName='Thomas' OR FirstName='William')AND LastName='Carter'
					
				5.ORDER BY ��䣬ORDER BY ������ڶԽ������������(ORDER BY ������ڸ���ָ�����жԽ������������,Ĭ�ϰ�������Լ�¼��������,�����Ҫʹ�õ�����ʽΪ��������Ҫʹ��DESC�ؼ���)��
				�﷨:SELECT ���� FROM ������ ORDER BY ����    ��:SELECT Company, OrderNumber FROM Orders ORDER BY Company(����ĸ˳����ʾ��˾����)
				����1:SELECT Company, OrderNumber FROM Orders ORDER BY Company, OrderNumber(����ĸ˳����ʾ��˾���ƣ�Company������������˳����ʾ˳��ţ�OrderNumber))
				����2:SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC (������ĸ˳����ʾ��˾����)
				����3:SELECT Company, OrderNumber FROM Orders ORDER BY Company DESC, OrderNumber ASC(������ĸ˳����ʾ��˾���ƣ���������˳����ʾ˳���)
	
	2.INSERT �����������
				1.INSERT INTO ��䣬INSERT INTO ������������в����µ��С�
				�﷨:INSERT INTO ������ VALUES (ֵ1,ֵ2,ֵ3........)    ��:INSERT INTO sutdent VALUES (15,"root","��","����ֽ","����ر𾭼�������")
					 INSERT INTO ������ (��1,��2,��3....) VALUES (ֵ1,ֵ2,ֵ3.........) ��:INSERT INTO student (id ,username ,sex) VALUES (19,"admin","Ů")
					 
	3.UPDATE �����������
				1.Update ��䣬Update ��������޸ı��е����ݡ�
				�﷨:UPDATE ������ SET ���� = ��ֵ WHERE ������ = ĳֵ   ��:UPDATE student SET address = "����ʡ�Ͼ��й�¥��" WHERE ID=19;
					 UPDATE ������ SET ����1 = ��ֵ1,����2 = ��ֵ2  WHERE ������ = ĳֵ  ��:UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing' WHERE LastName = 'Wilson'
	
	4.DELETE ����ɾ�����
				1.DELETE ��䣬DELETE �������ɾ�����е��С�
				�﷨:DELETE FROM ������ WHERE ������ = ֵ    ��:DELETE FROM student WHERE username = "����"
				2.DELETE ��䣬ɾ��������    DELETE FROM student ��  DELETE * FROM student(ɾ�����е������У���������ݽṹ�����ԵȻᱣ������)
				
				
�ġ��߼��÷�
	1.LIMIT ������ڹ涨���صĲ�ѯ�����
		�﷨��ʽ:SELECT COLUMN(s) FROM ���� LIMIT  number(����Ҫ���صļ�¼��)   ��:SELECT * FROM student LIMIT 3(��ѧ�����в�ѯ3������)
		
	2. LIKE ��������LIKE ������������ WHERE �Ӿ����������е�ָ��ģʽ��
		�﷨��ʽ:SELECT COLUMN(s) FROM ������ WHERE column_name LIKE pattern    ��:SELECT * FROM student WHERE username LIKE '��%' 
		ע:"%" �����ڶ���ͨ�����ģʽ��ȱ�ٵ���ĸ����
		����1:SELECT * FROM Persons WHERE City LIKE '%lon%'(��ѯ��ס���а�����ĸlon����)     ����2:SELECT * FROM Persons WHERE City LIKE '%g'(��ѯ��ס������g��β����)
		ʹ��NOT�ؼ��ֿ��Խ������ݵķ�ѡ����:SELECT * FROM Persons WHERE City NOT LIKE '%lon%' (��ѯ��ס���в�����lon����)
		
	3.SQL ͨ��������������ݿ��е�����ʱ��SQL ͨ����������һ�������ַ���SQL ͨ��������� LIKE �����һ��ʹ�á�
	     SQL �е�ͨ�������:%(���һ�������ַ�)��_(�����һ���ַ�)��[charlist](�ַ����е��κε�һ�ַ�)��[^charlist]��[!charlist](�����ַ����е��κ�һ���ַ�)
		����1:SELECT * FROM student WHERE City LIKE 'Ne%'    ����2:SELECT * FROM student WHERE City LIKE '%lond%'   ����3:SELECT * FROM student WHERE City LIKE '_eroge'
		����4:SELECT * FROM Persons WHERE City LIKE '[ALN]%'(������� "Persons" ����ѡȡ��ס�ĳ����� "A" �� "L" �� "N" ��ͷ����)
	
	4.IN ��������IN ���������������� WHERE �Ӿ��й涨���ֵ��
		�﷨��ʽ:SELECT COLUMN(s) FROM ����  WHERE  COLUMN_NAME IN(VALUE1,VALUE2....)
		����:SELECT * FROM Persons WHERE LASTNAME IN('Adams','Carter')----------->��Persons����ѡȡ����Ϊ Adams �� Carter ����
		
	5.BETWEEN ������ ��BETWEEN �������� WHERE �Ӿ���ʹ�ã�������ѡȡ��������ֵ֮������ݷ�Χ�������� BETWEEN ... AND ��ѡȡ��������ֵ֮������ݷ�Χ����Щֵ��������ֵ���ı��������ڡ�
		�﷨��ʽ:SELECT COLUMN(s) FROM ���� WHERE COLUMN_NAME BETWEEN  VALUE1 AND VALUE2
		����1:SELECT * FROM Persons WHERE LASTNAME BETWEEN 'Adams' AND 'Carter'------>����ĸ˳����ʾ���� "Adams"���������� "Carter"����������֮����ˡ�
		����2:SELECT * FROM Persons WHERE LastName NOT BETWEEN 'Adams' AND 'Carter'----->ʹ�������������ʾ��Χ֮����ˣ���ʹ�� NOT ��������
	
	6.ALIAS ������������Ϊ�����ƺͱ�����ָ��������Alias����
		�﷨��ʽ:1��SELECT COLUMN(s) FROM ���� AS ALIAS_NAME(���ALIAs�﷨)   2��SELECT COLUMN_NAME  as  ALIAS_NAME FROM ����		
		����:ʹ�ñ����Ʊ���,����������������ֱ��ǣ�"Persons" �� "Product_Orders"�����Ƿֱ�Ϊ����ָ������ "p" �� "po"��
		���ڣ�����ϣ���г� "John Adams" �����ж�����
		����SQL�������:SELECT po.OrderID, p.LastName, p.FirstName
					FROM Persons AS p, Product_Orders AS po
					WHERE p.LastName='Adams' AND p.FirstName='John'
					
		�����ָ������:SELECT st.`id` FROM student AS st  WHERE st.`username`='����'; (��ѯѧ�����е�����Ϊ������ѧ��id,��ѧ����ָ������Ϊst)
							
		ʹ����������:SELECT LastName AS Family, FirstName AS Name FROM Persons(ָ�����е��еı���)
	
	7.JoIn �﷨�����ڸ��������������е���֮��Ĺ�ϵ������Щ���в�ѯ���ݡ�
		��ʱΪ�˵õ������Ľ����������Ҫ�����������ı��л�ȡ��������Ǿ���Ҫִ�� join��
		���ݿ��еı��ͨ�������˴���ϵ������������Primary Key����һ���У���������е�ÿһ�е�ֵ����Ψһ�ġ��ڱ��У�ÿ��������ֵ����Ψһ�ġ�
		��������Ŀ�����ڲ��ظ�ÿ�����е��������ݵ�����£��ѱ������ݽ���������һ��
		�﷨��ʽ:	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
					FROM Persons, Orders
					WHERE Persons.Id_P = Orders.Id_P 
		˵��:�Ӷ������в�ѯ����Ӧ�Ķ�����Ϣ���������е��û�ID���û����е�ID��Ӧһ�¼��ɡ�
		����:	SELECT Persons.LastName, Persons.FirstName, Orders.OrderNo
				FROM Persons
				INNER JOIN Orders
				ON Persons.Id_P = Orders.Id_P
				ORDER BY Persons.LastName
			
	8.SQL INNER JOIN �ؼ���,�ڱ��д�������һ��ƥ��ʱ��INNER JOIN �ؼ��ַ����С�
		�﷨��ʽ:	SELECT column_name(s)
					FROM table_name1
					INNER JOIN table_name2 
					ON table_name1.column_name=table_name2.column_name
					
					
		ע:INNER JOIN �ؼ����ڱ��д�������һ��ƥ��ʱ�����С���� "Persons" �е����� "Orders" ��û��ƥ�䣬�Ͳ����г���Щ�С�
		###################################################################################################################
		��ϲ�ѯ������﷨:
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


