#import "nelson_help.typ": *

= crypto.x25519.keypair <core:crypto_x25519_keypair>

Génère une paire de clés X25519.

== Syntaxe

- #raw("[publicKey, secretKey] = crypto.x25519.keypair()");

== Argument d'entrée

/ (aucun): cette fonction ne prend aucun argument d'entrée.

== Argument de sortie

/ publicKey: vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets).
/ secretKey: vecteur de caractères : 64 caractères hexadécimaux minuscules (32 octets aléatoires sûrs) ; à garder secret.

== Description

#strong[crypto.x25519.keypair]; génère une paire de clés Curve25519 aléatoire (RFC 7748) via #strong[crypto.random];. Partagez la clé publique et gardez la clé secrète privée.


== Fonction(s) utilisée(s)

Monocypher

== Bibliographie

https:\/\/www.rfc-editor.org\/rfc\/rfc7748, https:\/\/monocypher.org\/

== Exemple

générer une paire de clés

``````matlab
[pub, sec] = crypto.x25519.keypair()
``````


== Voir aussi

#nlink(<core:crypto_x25519_public>)[crypto.x25519.public];, #nlink(<core:crypto_x25519_shared>)[crypto.x25519.shared];, #nlink(<core:crypto_random>)[crypto.random];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
