# TLS / SSL
## @edt ASIX M11-SAD Curs 2018-2019

Documentació / configuracions per a realitzar exercicis de OpenSSL.

**certs-keys**  Directori de claus privades i certificats.

**tls18:https** Fitxersper crear un container docker amb un 
servidor https amb quatre seus virtuals, dues amb certificat
autosignat i dues amb certificat avalat per la CA *VeritatAbsoluta*.

**tls18:ldaps** Fitxers per generar un container docker ldaps, 
amb una base de dades ldap accessible via *ldaps* i via *starttls*.
Ampliat el certificat per poder usar noms alternatius de server.

**tls18:vpn** Fitxers de claus i certificats per crerar túnels
 virtuals amb OpenVPN. Utilitza l'entitatt de certificació 
*VeritatAbsluta* i crea certificats propis per a client i servidor.


