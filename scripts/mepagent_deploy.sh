echo "MEP_IP should set be the host ip!"

docker run –itd –name mepagent
--network=mep-net
-e MEP_IP=10.151.154.36
-e MEP_AUTH_PORT=10443
-e MEP_APIGW_PORT=8443
-e MEP_SRV_ROUTE=mepssl
-e ENABLE_WAIT=true
-v /tmp/mepserver/ca.crt:/etc/mepssl/ca.crt
-e "CA_CERT=/etc/mepssl/ca.crt"
-e "CA_CERT_DOMAIN_NAME=edgegallery.org"
-v app_instance_info.yaml:/usr/app/conf/app_instance_info.yaml \
edgegallery/mep-agent:latest –ak QVUJMSUMgS0VZLS0tLS0 –sk DXPb4sqElKhcHe07Kw5uorayETwId1JOjjOIRomRs5wyszoCR5R7AtVa28KT3lSc
