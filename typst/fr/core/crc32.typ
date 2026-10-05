#import "nelson_help.typ": *

= crc32 <core:crc32>

Calcul du CRC32.

== Syntaxe

- #raw("hexa_hash = crc32(str)");
- #raw("hexa_hash = crc32(filename)");
- #raw("hexa_hash = crc32(str, '-file')");
- #raw("hexa_hash = crc32(str, '-string')");
- #raw("hexa_hash = crypto.crc32(...)");

== Argument d'entrée

/ str: chaîne ou octets : données à hacher
/ filename: une chaîne : nom de fichier existant : le contenu du fichier sera haché.
/ '-file' or '-string': force le hachage comme contenu de fichier ou de chaîne.

== Argument de sortie

/ hexa\_hash: entier : valeur CRC32

== Description

Calcule la valeur CRC32 d'une chaîne de caractères ou d'un fichier.

 #strong[crypto.crc32]; est un alias de #strong[crc32];, dans l'espace de noms #strong[crypto]; partagé avec #strong[crypto.ed25519.verify]; et #strong[crypto.ed25519.sign];.


== Exemples

``````matlab
R = crc32('Nelson')
``````

``````matlab
R = crc32({'Hello', 'World'})
``````

``````matlab
R = crc32(["Hello"; "World"])
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
``````

``````matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
``````


== Voir aussi

#nlink(<core:sha256>)[sha256];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
