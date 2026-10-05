#import "nelson_help.typ": *

= Intégration IA et MCP.

== Functions

- #nlink(<ai:aiask>)[aiask]: Interroge un fournisseur IA externe depuis Nelson.
- #nlink(<ai:aimodels>)[aimodels]: Liste les modeles disponibles chez un fournisseur IA.
- #nlink(<ai:aioptions>)[aioptions]: Cree les options pour les requetes a un fournisseur IA.
- #nlink(<ai:mcpinfo>)[mcpinfo]: Retourne les informations du serveur MCP Nelson.
- #nlink(<ai:mcpserver>)[mcpserver]: Demarre le serveur MCP Nelson sur l'entree et la sortie standard.
- #nlink(<ai:mcpusage>)[mcpusage]: Utiliser Nelson via MCP depuis un agent IA.


#nested[
#pagebreak(weak: true)
#include "aiask.typ"
#pagebreak(weak: true)
#include "aimodels.typ"
#pagebreak(weak: true)
#include "aioptions.typ"
#pagebreak(weak: true)
#include "mcpinfo.typ"
#pagebreak(weak: true)
#include "mcpserver.typ"
#pagebreak(weak: true)
#include "mcpusage.typ"
]
