## Checkpoint2_Exercice3

### B. Découverte du réseau

- Q.3.1

Le matériel réseau A est un switch (couche 2 du modèle OSI), il permet la mise en réseau des ordinateurs entre eux et aussi avec le routeur B.

- Q.3.2

Le matériel B est un routeur (couche 3 du modèle OSI). Il sert de passerelle pour le réseau 10.10.0.0/16.

- Q.3.3

Ce sont deux ports réseaux distinct.

- Q.3.4

Le /16 correspond au CIDR, cela implique un masque de sous réseau égale à 255.255.0.0

- Q.3.5

Pour cet ordinateur, l'adresse 10.10.255.254 représente la passerelle (pour pouvoir atteindre d'autres réseaux).
Si le routage est fait sur les 2 routeurs au dessus, ce poste pourra atteindre le réseau 172.16.5.0/24.

### C. Etude théorique

- Q.3.6

**PC1:**
    - adresse de réseau = 10.10.0.0/16
    - adresse départ = 10.10.0.1/16
    - dernière adresse = 10.10.255.254/16
    - adress Broadcast = 10.10.255.255/16

**PC2:**
    - adresse de réseau = 10.11.0.0/16
    - adresse départ = 10.11.0.1/16
    - dernière adresse = 10.11.255.254/16
    - adress Broadcast = 10.11.255.255/16 

**PC5:**

IP = 10.10.4.7/15

Masque = 1111 1111.1111 1110.0.0 = 255.254.0.0
adresse =0000 0110.0000 0110.0000 0100.0000 0111
Masque inversé =0000 0000.0000 0001.1111 1111.1111 1111
OU Logique = 0000 0110.0000 0111.1111 1111.1111 1111
         


    - adresse de réseau = 10.10.0.0/15
    - adresse départ = 10.0.0.1/15
    - dernière adresse = 10.7.255.254/15
    - adress Broadcast = 10.7.255.255/15 


- Q.3.7

  - Vont communiquer entre eux les PC : PC1 / PC3 / PC4

  - et : PC1 / PC4 /PC

  - Le PC2 ne peut communiquer avec aucun car 11 sur le deuxième Octet

- Q.3.8

Les PC1/PC3/PC4 vont poouvoir atteindre le réseau 172.16.5.0/24 en passant par la passerelle 10.10.255.254/16

- Q.3.9

Si on intervertit les ports de connexion sur le switch il n'y aura aucune incidence

- Q.3.10

Il faudra paramétrer les ordinateurs en DHCP afin qu'ils obtiennent automatiquement une IP fournit par le routeur

pare exemple sera fournit

| PC | Adresse IP|
|   :---------: |  :-------: |
| PC1 | 10.10.0.1/16 |
| PC2 | 10.10.0.2/16 |
| PC3 | 10.10.0.3/16 |
| PC4 | 10.10.0.4/16 |
| PC5 | 10.10.0.5/16 |

### C. Analyse de trames

- Q.3.11

adresse MAC source : 00.50.79.66.68.00
nom du matériel: PC1

- Q.3.12

Cette communication en protocol ICMP est un ping. Le ping a réussi car on voit un TTL de 64ms et une réponse (reply) au paquet n°6.

- Q.3.13

Matériel 1 : Ip 10.10.4.1; mac 00.50.79.66.68.00, nom : PC1

Matériel 2 : Ip 10.10.4.2; mac 00.50.79.66.68.03, nom : PC4

- Q.3.14

Le protocole encapsulé est ARP, il sert à initialiser la connexion.

- Q.3.15

   - Le matériel A est le switch qui met en relation le routeur B et les 2 ordinateurs.
   - B est le routeur qui fait office de passerelle


- Q.3.16

10.10.80.3 ; nom : PC3

- Q.3.17

Le protocole encapsulé est ICMP qui permet le ping entre matériel.

- Q.3.18

Le ping n'a pas réussi, pas de réponse de la part de 10.11.80.2 (PC2). On voit l'erreur Destination unreachable.

- Q.3.19 

L'adresse 10.10.255.254 est la passerelle (routeur) pour le matériel 10.10.80.3. Cette passerelle ne route pas vers le réseau du PC2 10.11.80.2.

- Q.3.20

   - Le matériel A est le switch.
   - B est la passerelle.

- Q.3.21

    - Matériel source : PC4, adresse IP 10.10.4.2
    - Matériel destiantion : R2, adresse IP 172.16.5.253

 - Q.3.22 

    - Matériel source : adresse mac ca:01:da:d2:00:1c
    - Matériel destiantion : adresse mac ca:03:9e:ef:00:38

On peut en déduire que le matériel source est le PC4 qui arrive à joindre le réseau 172.16.5.0/24 accès internet en passant par le routeur R2.

- Q.3.23 

sur le réseau 172.16.5.0/24.