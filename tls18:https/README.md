

openssl req -new -x509 -days 3650 -nodes -keyout serverkey.auto1.pem -out servercert.auto1.pem

openssl genrsa -out serverkey.auto2.pem
openssl req -new -x509 -days 3650 -nodes -key serverkey.auto2.pem -out servercert.auto2.pem

openssl req -new -key serverkey.web1.pem -out serverreq.web1.pem
openssl x509 -CAkey cakey.pem -CA cacert.pem -req -in serverreq.web1.pem -days 3650 -CAcreateserial -out servercert.web1.pem


