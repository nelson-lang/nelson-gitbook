# nflow\_solvers

Choisir comment un diagramme est integre (choix du solveur).

## 📝 Syntaxe

- Page concept : pas fixe vs solveurs ODE globaux, tolerances, generation de code

## 📄 Description


nflow integre un diagramme de deux manieres. Par defaut il execute un moteur <b>discret a pas fixe</b> : chaque bloc se met a jour une fois par echantillon du modele (le <b>sampleTime</b> du diagramme), et chaque bloc continu s'integre par un pas d'Euler par bloc. Selectionner un <b>solveur</b> bascule sur le chemin <b>ODE global</b> : tous les etats continus sont assembles en un seul vecteur et integres ensemble, avec detection de passage par zero et, pour les solveurs adaptatifs, controle du pas. 

<b>Selectionner un solveur</b> 

Renseignez le champ <b>solver</b> du modèle, en script avec <b>set\_param(model, 'Solver', nom)</b>, ou depuis <b>Simulation Settings</b> dans le menu Simulation de l'éditeur. Les réglages s'ouvrent dans l'onglet Model de l'inspecteur. Le défaut (pas de solveur, ou <b>'discrete'</b>) garde le moteur à pas fixe, donc les modèles existants sont inchangés — le chemin global est purement optionnel. 

<b>Solveurs disponibles</b> 

- <b>discrete</b> (defaut) — pas fixe, Euler par bloc pour les etats continus. 
- <b>ode1</b> — Euler explicite a pas fixe sur l'etat global. 
- <b>ode4</b> — Runge-Kutta classique d'ordre 4 a pas fixe (bien plus precis qu'ode1 au meme pas). 
- <b>ode45</b> — <b>Dormand-Prince 5(4)</b> adaptatif natif : sous-pas variables dans chaque intervalle de communication, controles par les tolerances. Bon defaut quand la dynamique est rapide ou pour la precision sans regler le pas a la main. 
- <b>variableNonstiff</b> / <b>variableStiff</b> / <b>cvodesBdf</b> / <b>cvodesAdams</b> — backends CVODES (SUNDIALS) adaptatifs ; utiliser une variante raide quand la dynamique a des echelles de temps tres separees. 

<b>Tolerances</b> 

Les solveurs adaptatifs sont controles par <b>RelTol</b> (relative, defaut 1e-6), <b>AbsTol</b> (absolue, defaut 1e-8) et un plafond optionnel <b>MaxStep</b>. Reglez-les avec <b>set\_param</b>, dans les champs du diagramme, ou dans les champs de tolerance de l'editeur (affiches quand un solveur a pas variable est choisi). Des tolerances plus serrees donnent une trajectoire plus precise au prix de plus de sous-pas. 

<b>Generation de code</b> 

Les solveurs a pas fixe <b>ode1</b> / <b>ode4</b> et le solveur adaptatif <b>ode45</b> sont abaisses en C et Rust autonomes par <b>nflow\_codegenerate</b> et <b>NFlow.exportfmu</b> : le code genere reproduit l'integration globale du moteur (le stepper ode45 genere reproduit le backend ode45) et colle a la simulation. Les backends CVODES / IDAS n'ont pas d'abaissement embarque et sont <b>rejetes</b> par la generation de code avec un message actionnable — exportez un tel modele avec ode4 ou ode45, ou simulez-le avec le solveur. 

<b>Raison du defaut</b> 

Le defaut reste a pas fixe pour que chaque modele existant continue de produire exactement la meme trajectoire et que le code genere corresponde par construction a la simulation par defaut. Passer a un solveur global est un changement d'une ligne. 

<b>Arrêter et réinitialiser</b> 

Stop termine l'exécution courante tout en conservant les résultats déjà calculés. Reset remet aussi le temps de simulation à zéro et efface les résultats affichés. Aucune de ces commandes ne modifie le solveur configuré.


## 🔗 Voir aussi

[sim](../nflow_engine/sim.md), [nflow_multirate](../nflow_gui/nflow_multirate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
