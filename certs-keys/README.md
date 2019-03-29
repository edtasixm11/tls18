# TLS/SSL Certs
## @edt ASIX M11-SAD Currs 2018-2019


Creació de claus privades, request i certificats:



#### test1: Aplicar extensions als certificats

Creació de certificats usant extensions del fitxer de configuració local openssl.conf
```
cd test1
openssl x509 -CAkey cakey.pem  -CA cacert.pem  -req -in req.pem -CAcreateserial -extfile openssl.cnf -extensions my_client  -out cert.pem
openssl x509 -noout -text -in cert1.pem 
```

Aplicar extensions amb un fitxer propi d'extensió:
```
cd test1
openssl x509 -CAkey cakey.pem  -CA cacert.pem  -req -in req.pem -CAcreateserial -extfile ext.myserver.conf  -out cert2.pem
openssl x509 -noout -text -in cert2.pem
```


