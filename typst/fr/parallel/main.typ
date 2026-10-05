#import "nelson_help.typ": *

= Parallel

Le module parallel fournit des outils pour exécuter des calculs de manière asynchrone en arrière-plan, gérer la planification des tâches et récupérer les résultats.

 Il permet aux programmes Nelson d'exécuter des fonctions de manière concurrente, améliorant l'efficacité et la réactivité en déléguant le travail à des workers en arrière-plan.

== Functions

- #nlink(<parallel:afterAll>)[afterAll]: Exécuter une fonction après que toutes les fonctions en arrière-plan soient terminées.
- #nlink(<parallel:afterEach>)[afterEach]: Exécuter une fonction après chaque fin d'exécution en arrière-plan.
- #nlink(<parallel:backgroundPool>)[backgroundPool]: Environnement pour exécuter du code Nelson en arrière-plan.
- #nlink(<parallel:cancel>)[cancel]: Arrêter une fonction s'exécutant en arrière-plan.
- #nlink(<parallel:cancelAll>)[cancelAll]: Arrêter toutes les fonctions s'exécutant en arrière-plan.
- #nlink(<parallel:fetchNext>)[fetchNext]: Récupérer les prochaines sorties non lues d'un tableau FevalFuture.
- #nlink(<parallel:fetchOutputs>)[fetchOutputs]: Récupérer les résultats d'une fonction s'exécutant dans le pool d'arrière-plan.
- #nlink(<parallel:parfeval>)[parfeval]: Exécuter une fonction en arrière-plan.
- #nlink(<parallel:wait>)[wait]: Attendre la complétion des futures.


#nested[
#pagebreak(weak: true)
#include "afterAll.typ"
#pagebreak(weak: true)
#include "afterEach.typ"
#pagebreak(weak: true)
#include "backgroundPool.typ"
#pagebreak(weak: true)
#include "cancel.typ"
#pagebreak(weak: true)
#include "cancelAll.typ"
#pagebreak(weak: true)
#include "fetchNext.typ"
#pagebreak(weak: true)
#include "fetchOutputs.typ"
#pagebreak(weak: true)
#include "parfeval.typ"
#pagebreak(weak: true)
#include "wait.typ"
]
