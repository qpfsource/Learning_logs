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
				

					  
	


