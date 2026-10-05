#import "nelson_help.typ": *

= Moteur

Le module Engine gère l'environnement d'exécution de Nelson lui-même.

 Il fournit des mécanismes pour gérer le démarrage et l'arrêt du programme, l'intégration en ligne de commande et les modes d'exécution.

 Cela inclut le support des scripts d'initialisation et de terminaison définis par l'utilisateur, les exigences système spécifiques à la plateforme et les directives d'interpréteur pour l'exécution de scripts multiplateforme.

 Il sert d'interface principale entre Nelson et le système d'exploitation sous-jacent pour configurer et contrôler le lancement du logiciel.

== Functions

- #nlink(<engine:argv>)[argv]: Arguments de la ligne de commande de Nelson.
- #nlink(<engine:executable>)[executable]: Executables pour demarrer le logiciel Nelson.
- #nlink(<engine:finish>)[finish]: Script de terminaison défini par l'utilisateur pour Nelson.
- #nlink(<engine:getnelsonmode>)[getnelsonmode]: Retourne le mode courant de Nelson.
- #nlink(<engine:getwebmode>)[getwebmode]: Renvoie le mode de lancement effectif de Nelson WebView.
- #nlink(<engine:getweburl>)[getweburl]: Retourne l'URL et le port Web GUI courants.
- #nlink(<engine:isquietmode>)[isquietmode]: Renvoie vrai si Nelson a été démarré avec l'option --quiet.
- #nlink(<engine:nelson_system_requirement>)[Exigences système]: Exigences système par plateforme.
- #nlink(<engine:shebang>)[\#! shebang]: Sur Unix\/Linux, analyse la première ligne du script comme directive d'interpréteur.
- #nlink(<engine:startup>)[startup]: Script de démarrage défini par l'utilisateur pour Nelson.


#nested[
#pagebreak(weak: true)
#include "argv.typ"
#pagebreak(weak: true)
#include "executable.typ"
#pagebreak(weak: true)
#include "finish.typ"
#pagebreak(weak: true)
#include "getnelsonmode.typ"
#pagebreak(weak: true)
#include "getwebmode.typ"
#pagebreak(weak: true)
#include "getweburl.typ"
#pagebreak(weak: true)
#include "isquietmode.typ"
#pagebreak(weak: true)
#include "nelson_system_requirement.typ"
#pagebreak(weak: true)
#include "shebang.typ"
#pagebreak(weak: true)
#include "startup.typ"
]
