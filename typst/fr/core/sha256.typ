#import "nelson_help.typ": *

= sha256 <core:sha256>

Calcule le hash SHA-256.

== Syntaxe

- #raw("hexa_hash = sha256(str)");
- #raw("hexa_hash = sha256(filename)");
- #raw("hexa_hash = sha256(str, '-file')");
- #raw("hexa_hash = sha256(str, '-string')");
- #raw("hexa_hash = crypto.sha256(...)");

== Argument d'entrée

/ str: vecteur de caractères, cellule de chaînes ou tableau de chaînes : contenu de la chaîne à hacher
/ filename: chaîne : nom de fichier existant dont le contenu sera haché
/ '-file' or '-string': force à traiter comme fichier ou contenu de chaîne

== Argument de sortie

/ hexa\_hash: vecteur de caractères, cellule de chaînes ou tableau de chaînes : résultat haché (checksum)

== Description

Calcule la valeur de hachage SHA-256 d'une chaîne ou d'un fichier.

 #strong[crypto.sha256]; est un alias de #strong[sha256];, dans l'espace de noms #strong[crypto]; partagé avec #strong[crypto.ed25519.verify]; et #strong[crypto.ed25519.sign];.


== Exemples

``````matlab
R = sha256('Nelson')
``````

``````matlab
R = sha256({'Hello', 'World'})
``````

``````matlab
R = sha256(["Hello"; "World"])
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
``````

``````matlab
R = sha256([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
``````


== Voir aussi

#nlink(<core:crc32>)[crc32];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
