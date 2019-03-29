# TLS/SSL Certs
## @edt ASIX M11-SAD Currs 2018-2019


Creació de claus privades, request i certificats:



#### test1: Aplicar extensions als certificats

Creació de certificats usant extensions del fitxer de configuració local **openssl.conf**
```
cd test1
openssl x509 -CAkey cakey.pem  -CA cacert.pem  -req -in req.pem -CAcreateserial -extfile openssl.cnf -extensions my_client  -out cert.pem
openssl x509 -noout -text -in cert1.pem 
```

Aplicar extensions amb un fitxer propi d'extensins:
```
cd test1
openssl x509 -CAkey cakey.pem  -CA cacert.pem  -req -in req.pem -CAcreateserial -extfile ext.myserver.conf  -out cert2.pem
openssl x509 -noout -text -in cert2.pem
```

#### test: personalitzar el req

```
[ req_distinguished_name ]
countryName                     = Country Name
countryName_default             = ca
countryName_min                 = 2
countryName_max                 = 2
stateOrProvinceName             = State or Province Name (full name)
stateOrProvinceName_default     = Barcelona
localityName                    = Locality Name (eg, city)
localityName_default            = Santaco
0.organizationName              = Organization Name (eg, company)
0.organizationName_default      = Escola del Treball
organizationalUnitName          = Organizational Unit Name (eg, section)
organizationalUnitName_default  = informatica
commonName                      = Common Name (eg, your name or your server\'s hostname)
commonName_max                  = 64
emailAddress                    = Email Address
emailAddress_max                = 64
email_Address_default           = edt@edt.org
```

```
cd test2

```
