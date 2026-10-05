#import "nelson_help.typ": *

= crypto.x25519.public <core:crypto_x25519_public>

Dérive une clé publique X25519.

== Syntaxe

- #raw("publicKey = crypto.x25519.public(secretKey)");

== Argument d'entrée

/ secretKey: vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé privée.

== Argument de sortie

/ publicKey: vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).

== Description

#strong[crypto.x25519.public]; dérive la clé publique Curve25519 (RFC 7748) correspondant à une clé secrète de 32 octets.

 Générez la clé secrète avec #strong[crypto.random(32)]; ou utilisez #strong[crypto.x25519.keypair]; pour obtenir les deux.


== Fonction(s) utilisée(s)

Monocypher

== Bibliographie

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Exemple

dériver la clé publique d'une clé secrète

``````matlab
sec = crypto.random(32, '-hex');
pub = crypto.x25519.public(sec)
``````


== Voir aussi

#nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];, #nlink(<core:crypto_random>)[crypto.random];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
