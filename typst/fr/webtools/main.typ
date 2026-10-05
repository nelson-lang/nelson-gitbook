#import "nelson_help.typ": *

= Web tools

Le module WebTools fournit des fonctions pour interagir avec des ressources web, transférer des données via des URLs et travailler avec des services web RESTful.

== Functions

- #nlink(<webtools:checkupdate>)[checkupdate]: Vérifier la mise à jour de l'application Nelson
- #nlink(<webtools:repo>)[repo]: Outil de gestion de dépôt Git pour Nelson
- #nlink(<webtools:urlencode>)[urlencode]: Remplacer les caractères spéciaux dans les URLs par des séquences d'échappement.
- #nlink(<webtools:weboptions>)[weboptions]: Spécifier les paramètres pour les services web RESTful
- #nlink(<webtools:webread>)[webread]: Lire des données depuis un service web RESTful vers une variable Nelson
- #nlink(<webtools:websave>)[websave]: Enregistrer les données d'un service web RESTful dans un fichier
- #nlink(<webtools:webwrite>)[webwrite]: Envoyer des données à un service web RESTful


#nested[
#pagebreak(weak: true)
#include "checkupdate.typ"
#pagebreak(weak: true)
#include "repo.typ"
#pagebreak(weak: true)
#include "urlencode.typ"
#pagebreak(weak: true)
#include "weboptions.typ"
#pagebreak(weak: true)
#include "webread.typ"
#pagebreak(weak: true)
#include "websave.typ"
#pagebreak(weak: true)
#include "webwrite.typ"
]
