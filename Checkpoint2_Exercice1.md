## Checkpoint2_Exercice1

- Q.1.1

**WINSERV**
IP : 172.16.10.10
Masque : 255.255.255.0

**CLIENT1**
IP : 172.16.100.50
Masque 255.255.255.0

![q11](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/q11.PNG?raw=true)

Le ping ne réeussit pas car le serveur et le client ne sont pas sur le même réseau.

On modifie IP sur client1 et on redémarre le poste
![changeIP](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/changeIpPNG.PNG?raw=true)

On modifie l'adresse ip sur le client1
![ipconfig](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/ipconfig.PNG?raw=true)

Ping OK depuis le serveur
![pingok](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/pingok.PNG?raw=true)


- Q.1.2

![pingclient1](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/pingclient1.PNG?raw=true)

Le ping réussi avec les adresses IPV6.

- Q.1.3

![ipv6descative](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/ipv6desactive.PNG?raw=true)

En désactivant le protocole IPv6 sur le client, le ping du nom se rapporte au protocole IPv4.

Je ne comprends pas la modification à apporter car le ping fonctionne déja.

- Q.1.4

Sur le client mettre en DHCP
![dhcp](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/dhcp.PNG?raw=true)


Sur le serveur dans server manager le DHCP est bien configuré

- Q.1.5

Le client ne prend pas la première adresse disponible (172.16.10.1) car il y a une exclusion pour cette adresse. (les adresses sont exclues entre .1 et .19 et aussi de .241 à .254)

![exclu](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/adresseexclu.PNG?raw=true)


DHCP Ok 
![dhcp](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/dhcpOK.PNG?raw=true)

- Q.1.6

![résa](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/r%C3%A9sa.PNG?raw=true)

On redémarre le client 1 et il a bien pris l'adresse réservé.
![15](https://github.com/Seyia11/Checkpoint-2/blob/main/Captures/15.PNG?raw=true)

- Q.1.7

L'intérêt de l'IPv6 est de se soustraire de toutes ces manipulations.

- Q.1.8

Oui dans ce cas le serveur DHCP est obsolète.










