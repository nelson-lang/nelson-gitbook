#import "nelson_help.typ": *

= mcpinfo <ai:mcpinfo>

Retourne les informations du serveur MCP Nelson.

== Syntaxe

- #raw("info = mcpinfo()");

== Description

#strong[mcpinfo]; retourne la version, le transport, le mode d'affichage par defaut, la racine de workspace par defaut, la limite de sortie par defaut, les outils, les ressources, les prompts exposes et les politiques par defaut.


== Voir aussi

#nlink(<ai:mcpserver>)[mcpserver];, #nlink(<ai:mcpusage>)[mcpusage];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)
