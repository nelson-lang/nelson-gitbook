#import "nelson_help.typ": *

= crypto.x25519.shared <core:crypto_x25519_shared>

Calcule un secret partagé X25519.

== Syntaxe

- #raw("sharedSecret = crypto.x25519.shared(secretKey, peerPublicKey)");

== Argument d'entrée

/ secretKey: vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : votre clé privée.
/ peerPublicKey: vecteur uint8 de 32 octets ou 64 caractères hexadécimaux : clé publique de l'autre partie.

== Argument de sortie

/ sharedSecret: vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).

== Description

#strong[crypto.x25519.shared]; calcule le secret partagé Diffie-Hellman (RFC 7748) à partir de votre clé secrète et d'une clé publique de pair. Les deux parties obtiennent la même valeur.

 N'utilisez pas le secret partagé brut comme clé de chiffrement : hachez-le d'abord, par exemple avec #strong[crypto.blake2b(shared, \[\], 32)];.


== Fonction(s) utilisée(s)

Monocypher

== Bibliographie

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Exemple

les deux pairs obtiennent le même secret

``````matlab
[aPub, aSec] = crypto.x25519.keypair();
[bPub, bSec] = crypto.x25519.keypair();
isequal(crypto.x25519.shared(aSec, bPub), crypto.x25519.shared(bSec, aPub))
``````


== Voir aussi

#nlink(<core:crypto_x25519_public>)[crypto.x25519.public];, #nlink(<core:crypto_x25519_keypair>)[crypto.x25519.keypair];, #nlink(<core:crypto_aead_encrypt>)[crypto.aead.encrypt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
