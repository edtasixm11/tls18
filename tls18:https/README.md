# HTTPS
## @ edt ASIX M11-SAD Curs 2018-2019

Servidor https amb certificats digitals.

Seus virtuals:

 * www.auto1.cat amb selfsigned certificate
 * www.auto2.cat amb seldsigned certificate
 * www.web1.org certificat de servidor avalat per la ca VeritatAbsoluta
 * www.web2.org certificat de servidor avalat per la ca VeritatAbsoluta

#### Generació de claus, requests i certs

openssl req -new -x509 -days 3650 -nodes -keyout serverkey.auto1.pem -out servercert.auto1.pem

openssl genrsa -out serverkey.auto2.pem
openssl req -new -x509 -days 3650 -nodes -key serverkey.auto2.pem -out servercert.auto2.pem

openssl genrsa -out serverkey.web1.pem
openssl req -new -key serverkey.web1.pem -out serverreq.web1.pem
openssl x509 -CAkey cakey.pem -CA cacert.pem -req -in serverreq.web1.pem -days 3650 -CAcreateserial -out servercert.web1.pem

#ca.conf
basicConstraints = critical,CA:FALSE 
extendedKeyUsage = serverAuth,emailProtection 
openssl genrsa -out serverkey.web2.pem
openssl req -new -key serverkey.web2.pem -out serverreq.web2.pem
openssl x509 -CAkey cakey.pem -CA cacert.pem -req -in serverreq.web2.pem -days 3650 -CAcreateserial -extfile ca.conf -out servercert.web2.pem

