
ldapsearch -x  -H ldap://ldap.edt.org 
ldapsearch -x  -H ldaps://ldap.edt.org 

ldapsearch -x -Z -H ldap://ldap.edt.org 
ldapsearch -x -ZZ -H ldap://ldap.edt.org 

ldapsearch -x -ZZ -H ldaps://ldap.edt.org 


ldapsearch -x -ZZ -H ldap://ldap.edt.org -d1   dn  2> log
