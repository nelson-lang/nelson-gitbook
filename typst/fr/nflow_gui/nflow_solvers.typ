#import "nelson_help.typ": *

= nflow\_solvers <nflow_gui:nflow_solvers>

Choisir comment un diagramme est integre (choix du solveur).

== Syntaxe

- #raw("Page concept : pas fixe vs solveurs ODE globaux, tolerances, generation de code");

== Description

nflow integre un diagramme de deux manieres. Par defaut il execute un moteur #strong[discret a pas fixe]; : chaque bloc se met a jour une fois par echantillon du modele (le #strong[sampleTime]; du diagramme), et chaque bloc continu s'integre par un pas d'Euler par bloc. Selectionner un #strong[solveur]; bascule sur le chemin #strong[ODE global]; : tous les etats continus sont assembles en un seul vecteur et integres ensemble, avec detection de passage par zero et, pour les solveurs adaptatifs, controle du pas.

 #strong[Selectionner un solveur];

 Renseignez le champ #strong[solver]; du modèle, en script avec #strong[set\_param(model, 'Solver', nom)];, ou depuis #strong[Simulation Settings]; dans le menu Simulation de l'éditeur. Les réglages s'ouvrent dans l'onglet Model de l'inspecteur. Le défaut (pas de solveur, ou #strong['discrete'];) garde le moteur à pas fixe, donc les modèles existants sont inchangés — le chemin global est purement optionnel.

 #strong[Solveurs disponibles];

 

- #strong[discrete]; (defaut) — pas fixe, Euler par bloc pour les etats continus.
- #strong[ode1]; — Euler explicite a pas fixe sur l'etat global.
- #strong[ode4]; — Runge-Kutta classique d'ordre 4 a pas fixe (bien plus precis qu'ode1 au meme pas).
- #strong[ode45]; — #strong[Dormand-Prince 5(4)]; adaptatif natif : sous-pas variables dans chaque intervalle de communication, controles par les tolerances. Bon defaut quand la dynamique est rapide ou pour la precision sans regler le pas a la main.
- #strong[variableNonstiff]; \/ #strong[variableStiff]; \/ #strong[cvodesBdf]; \/ #strong[cvodesAdams]; — backends CVODES (SUNDIALS) adaptatifs ; utiliser une variante raide quand la dynamique a des echelles de temps tres separees. #strong[Tolerances];

 Les solveurs adaptatifs sont controles par #strong[RelTol]; (relative, defaut 1e-6), #strong[AbsTol]; (absolue, defaut 1e-8) et un plafond optionnel #strong[MaxStep];. Reglez-les avec #strong[set\_param];, dans les champs du diagramme, ou dans les champs de tolerance de l'editeur (affiches quand un solveur a pas variable est choisi). Des tolerances plus serrees donnent une trajectoire plus precise au prix de plus de sous-pas.

 #strong[Generation de code];

 Les solveurs a pas fixe #strong[ode1]; \/ #strong[ode4]; et le solveur adaptatif #strong[ode45]; sont abaisses en C et Rust autonomes par #strong[nflow\_codegenerate]; et #strong[NFlow.exportfmu]; : le code genere reproduit l'integration globale du moteur (le stepper ode45 genere reproduit le backend ode45) et colle a la simulation. Les backends CVODES \/ IDAS n'ont pas d'abaissement embarque et sont #strong[rejetes]; par la generation de code avec un message actionnable — exportez un tel modele avec ode4 ou ode45, ou simulez-le avec le solveur.

 #strong[Raison du defaut];

 Le defaut reste a pas fixe pour que chaque modele existant continue de produire exactement la meme trajectoire et que le code genere corresponde par construction a la simulation par defaut. Passer a un solveur global est un changement d'une ligne.

 #strong[Arrêter et réinitialiser];

 Stop termine l'exécution courante tout en conservant les résultats déjà calculés. Reset remet aussi le temps de simulation à zéro et efface les résultats affichés. Aucune de ces commandes ne modifie le solveur configuré.


== Voir aussi

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
