#import "nelson_help.typ": *

= crypto.sha256 <core:crypto_sha256>

Somme de contrôle SHA-256 (alias de l'espace crypto).

== Syntaxe

- #raw("hexa_hash = crypto.sha256(...)");

== Argument d'entrée

/ ...: voir #strong[sha256];.

== Argument de sortie

/ hexa\_hash: chaîne hexadécimale, identique à #strong[sha256];.

== Description

#strong[crypto.sha256]; est un alias de #strong[sha256];, dans l'espace de noms #strong[crypto]; (mêmes arguments et même résultat).


== Voir aussi

#nlink(<core:sha256>)[sha256];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
