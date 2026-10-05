#import "nelson_help.typ": *

= Communication inter-processus

Le module ipc fournit des outils de base pour interagir avec les processus et permettre la communication entre eux.

 Il permet de récupérer les identifiants de processus et d'utiliser un objet communicateur pour échanger des informations entre les processus Nelson.

== Functions

- #nlink(<ipc:getpid>)[getpid]: Obtenir l'identifiant de processus Nelson.
- #nlink(<ipc:ipc>)[ipc]: Communicateur inter-processus.


#nested[
#pagebreak(weak: true)
#include "getpid.typ"
#pagebreak(weak: true)
#include "ipc.typ"
]
