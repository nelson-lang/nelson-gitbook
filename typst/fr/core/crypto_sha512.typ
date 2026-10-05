#import "nelson_help.typ": *

= crypto.sha512 <core:crypto_sha512>

Calcule le hash SHA-512.

== Syntaxe

- #raw("hexa_hash = crypto.sha512(str)");
- #raw("hexa_hash = crypto.sha512(filename)");
- #raw("hexa_hash = crypto.sha512(bytes)");
- #raw("hexa_hash = crypto.sha512(str, '-file')");
- #raw("hexa_hash = crypto.sha512(str, '-string')");

== Argument d'entrée

/ str: vecteur de caractères, cellule de chaînes ou tableau de chaînes : les octets UTF-8 du texte sont hachés.
/ filename: chaîne : nom de fichier existant : les octets bruts du fichier sont hachés.
/ bytes: vecteur uint8 : octets bruts à hacher.
/ '-file' ou '-string': force à traiter comme fichier ou comme contenu de chaîne (par défaut, un texte désignant un fichier existant est haché comme fichier).

== Argument de sortie

/ hexa\_hash: vecteur de caractères, cellule de chaînes ou tableau de chaînes : 128 caractères hexadécimaux minuscules par entrée (vide si un fichier ne peut pas être lu).

== Description

#strong[crypto.sha512]; calcule le condensé SHA-512 (FIPS 180-4) d'un texte, d'octets bruts ou d'un fichier, avec les mêmes conventions que #strong[sha256];.


== Fonction(s) utilisée(s)

Monocypher

== Bibliographie

https:\/\/monocypher.org\/

== Exemples

``````matlab
R = crypto.sha512('abc')
R = crypto.sha512(uint8('abc'))
R = crypto.sha512({'Hello', 'World'})
``````

hacher un fichier

``````matlab
filename = [tempdir(), 'sha512_example.txt'];
filewrite(filename, 'abc');
R = crypto.sha512(filename, '-file')
``````


== Voir aussi

#nlink(<core:sha256>)[sha256];, #nlink(<core:crypto_hmac>)[crypto.hmac];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
