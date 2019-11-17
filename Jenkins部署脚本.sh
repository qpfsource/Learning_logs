#!/usr/bin/env bash
# ���������ɱ����
BUILD_ID=DONTKILLME
#����+����orderվ��
#��Ҫ�������²���
# ��Ŀ·��, ��Execute Shell��������Ŀ·��, pwd �Ϳ��Ի�ø���Ŀ·��
export PROJ_PATH=/root/.jenkins/workspace

# ������Ļ�����tomcat��ȫ·��
export TOMCAT_APP_PATH=/usr/local/apache-tomcat-7.0.96

### base ����
killTomcat()
{
pid=`ps -ef|grep tomcat|grep java|awk '{print $2}'`
if [ "$pid" = "" ]
then
echo "no tomcat pid alive"
else
kill -9 $pid
fi
}
cd $PROJ_PATH/orderstep
mvn clean install

# ֹͣtomcat
killTomcat

# ɾ��ԭ�й���
rm -rf $TOMCAT_APP_PATH/webapps/ROOT
rm -rf $TOMCAT_APP_PATH/webapps/ROOT.war
rm -rf $TOMCAT_APP_PATH/webapps/order.war

# �����µĹ���
cp $PROJ_PATH/orderstep/target/order.war $TOMCAT_APP_PATH/webapps/

cd $TOMCAT_APP_PATH/webapps/
mv order.war ROOT.war

# ����Tomcat
cd $TOMCAT_APP_PATH/
sh bin/startup.sh