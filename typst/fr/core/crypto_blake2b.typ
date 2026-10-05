#import "nelson_help.typ": *

= crypto.blake2b <core:crypto_blake2b>

Calcule le hash BLAKE2b, avec clé optionnelle.

== Syntaxe

- #raw("hexa_hash = crypto.blake2b(message)");
- #raw("hexa_hash = crypto.blake2b(message, key)");
- #raw("hexa_hash = crypto.blake2b(message, key, digestSize)");
- #raw("hexa_hash = crypto.blake2b(filename, key, digestSize, '-file')");

== Argument d'entrée

/ message: vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) : contenu à hacher.
/ filename: chaîne : fichier existant dont les octets bruts sont hachés.
/ key: vecteur uint8 (octets bruts) ou vecteur de caractères (octets UTF-8) d'au plus 64 octets, ou \[\] pour un hachage sans clé (défaut).
/ digestSize: entier entre 1 et 64 : longueur du condensé en octets (défaut : 64).
/ '-file': le premier argument est un nom de fichier (toujours en dernier argument).

== Argument de sortie

/ hexa\_hash: vecteur de caractères : 2 \* digestSize caractères hexadécimaux minuscules.

== Description

#strong[crypto.blake2b]; calcule un condensé BLAKE2b (RFC 7693) : un hachage cryptographique rapide à taille de sortie configurable. Avec une clé, il sert de code d'authentification de message sans la construction HMAC.


== Fonction(s) utilisée(s)

Monocypher

== Bibliographie

https:\/\/www.rfc-editor.org\/rfc\/rfc7693, https:\/\/monocypher.org\/

== Exemples

``````matlab
R = crypto.blake2b('abc')
R = crypto.blake2b('abc', [], 20)
R = crypto.blake2b('abc', 'my secret key', 32)
``````

hacher un fichier

``````matlab
filename = [tempdir(), 'blake2b_example.txt'];
filewrite(filename, 'abc');
R = crypto.blake2b(filename, [], 64, '-file')
``````


== Voir aussi

#nlink(<core:crypto_sha512>)[crypto.sha512];, #nlink(<core:crypto_hmac>)[crypto.hmac];, #nlink(<core:crypto_argon2>)[crypto.argon2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
