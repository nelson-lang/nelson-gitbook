#import "nelson_help.typ": *

= crypto.crc32 <core:crypto_crc32>

Somme de contrôle CRC-32 (alias de l'espace crypto).

== Syntaxe

- #raw("hexa_hash = crypto.crc32(...)");

== Argument d'entrée

/ ...: voir #strong[crc32];.

== Argument de sortie

/ hexa\_hash: chaîne hexadécimale, identique à #strong[crc32];.

== Description

#strong[crypto.crc32]; est un alias de #strong[crc32];, dans l'espace de noms #strong[crypto]; (mêmes arguments et même résultat).


== Voir aussi

#nlink(<core:crc32>)[crc32];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
