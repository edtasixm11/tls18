# TLS / SSL
## @edt ASIX M11-SAD Curs 2018-2019

Podeu trobar les imatges docker al Dockehub de [edtasixm11](https://hub.docker.com/u/edtasixm11/)

Podeu trobar la documentació del mòdul a [ASIX-M11](https://sites.google.com/site/asixm11edt/)

ASIX M06-ASO Escola del treball de barcelona


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


