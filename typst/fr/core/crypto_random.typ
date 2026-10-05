#import "nelson_help.typ": *

= crypto.random <core:crypto_random>

Génère des octets aléatoires cryptographiquement sûrs.

== Syntaxe

- #raw("bytes = crypto.random(n)");
- #raw("hexa = crypto.random(n, '-hex')");

== Argument d'entrée

/ n: entier entre 1 et 1048576 : nombre d'octets aléatoires.
/ '-hex': renvoie les octets sous forme de chaîne hexadécimale au lieu d'un uint8.

== Argument de sortie

/ bytes: vecteur ligne uint8 de n octets aléatoires sûrs.
/ hexa: vecteur de caractères : 2 \* n caractères hexadécimaux minuscules.

== Description

#strong[crypto.random]; renvoie des octets issus de la source aléatoire sécurisée du système d'exploitation (#strong[BCryptGenRandom]; sous Windows, #strong[\/dev\/urandom]; ailleurs). Utilisez-la pour les clés, les nonces et les sels. Contrairement à #strong[rand];, sa sortie est imprévisible et ne doit pas être initialisée par une graine.


== Exemple

``````matlab
key = crypto.random(32)
nonce = crypto.random(24, '-hex')
``````


== Voir aussi

#nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
