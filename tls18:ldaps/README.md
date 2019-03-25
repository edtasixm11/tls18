# LDAPS
## @edt ASIX M11-SAD Curs 2018-2019

Creació d'un container docker amb un servei ldap
i la base de dades *dc=edt,dc=org*. Aquest servei
permet l'accés segur via TLS/SSL amb *ldaps* i 
també *starttls*.

Exemples de connexió client  en text plà i en tls/ssl
```
ldapsearch -x  -H ldap://ldap.edt.org 
ldapsearch -x  -H ldaps://ldap.edt.org 
```

Exemples usant startls:
```
ldapsearch -x -Z -H ldap://ldap.edt.org 
ldapsearch -x -ZZ -H ldap://ldap.edt.org 
```

Exemple '*erroni*', usar starttls sobre una connexió que 
ja és tls/ssl:
```
ldapsearch -x -ZZ -H ldaps://ldap.edt.org 
```

Desar e un fitxer el debug:
```
ldapsearch -x -ZZ -H ldap://ldap.edt.org -d1   dn  2> log
```
