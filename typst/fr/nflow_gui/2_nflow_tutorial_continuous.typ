#import "nelson_help.typ": *

= nflow\_tutorial\_continuous <nflow_gui:2_nflow_tutorial_continuous>

Tutoriel 2 sur 3 : simuler un système continu et choisir un solveur.

== Syntaxe

- #raw("Tutoriel : construire un système du premier ordre avec rebouclage, puis choisir un solveur.");

== Description

Ce deuxième tutoriel construit un système continu et montre comment le solveur change sa façon d'être intégré. Le modèle est un retard du premier ordre : une entrée en échelon pilote un état qui tend vers l'entrée avec la constante de temps tau. L'équation est dx\/dt \= (u - x) \/ tau, que vous construisez avec un Sum, un Gain et un Integrator reliés en boucle de rebouclage. Il suppose que vous avez fait #strong[nflow\_tutorial\_first\_model];.

 #strong[Poser les blocs];

 

+ Depuis le groupe #strong[Source];, faites glisser un bloc #strong[Step]; sur le diagramme.
+ Depuis le groupe #strong[Math];, faites glisser un bloc #strong[Sum]; et un bloc #strong[Gain];.
+ Depuis le groupe #strong[Continuous];, faites glisser un bloc #strong[Integrator];.
+ Depuis le groupe #strong[Sinks];, faites glisser un bloc #strong[Scope];. #strong[Régler les paramètres des blocs];

 Sélectionnez le bloc #strong[Sum]; et réglez ses signes sur un plus et un moins, afin qu'il calcule l'entrée moins l'état rebouclé. Sélectionnez le bloc #strong[Gain]; et réglez #strong[Gain]; sur 1 \/ tau ; pour tau \= 0,5 s, réglez-le sur 2. Laissez l'#strong[Integrator]; avec une condition initiale de 0.

 #strong[Relier les blocs];

 

+ Reliez la sortie du #strong[Step]; à l'entrée plus du #strong[Sum];.
+ Reliez la sortie du #strong[Sum]; au #strong[Gain];, et la sortie du #strong[Gain]; à l'#strong[Integrator];.
+ Reliez la sortie de l'#strong[Integrator]; au #strong[Scope];, et aussi à l'entrée moins du #strong[Sum]; pour fermer la boucle. Le fil qui part de l'Integrator vers le Sum est le chemin de rebouclage. C'est lui qui fait que l'état se stabilise au lieu de croître sans limite.

 
#image("nflow_tutorial_continuous_diagram.png")


 #strong[Exécuter avec le moteur par défaut];

 Réglez #strong[Temps d'arrêt (s)]; sur environ 5 dans l'onglet Modèle et appuyez sur #strong[Exécuter];. Sans solveur sélectionné, nflow utilise le moteur discret à pas fixe, et chaque bloc continu s'intègre avec un pas d'Euler propre au bloc, au #strong[Temps d'échantillonnage (s)]; du modèle. Le Scope montre l'état qui monte vers la valeur de l'échelon selon une courbe exponentielle.

 #strong[Choisir un solveur];

 Ouvrez l'onglet Modèle et réglez le #strong[Solveur];. La valeur par défaut (discrete) conserve le moteur à pas fixe. Choisissez #strong[ode4]; pour une intégration Runge-Kutta d'ordre quatre à pas fixe, plus précise qu'Euler au même pas. Choisissez #strong[ode45]; pour un pas adaptatif piloté par les tolérances. Quand un solveur adaptatif est sélectionné, réglez #strong[Tolérance relative]; et #strong[Tolérance absolue];, ainsi qu'un plafond optionnel #strong[Pas maximal (0 \= auto)];. Des tolérances plus serrées donnent une trajectoire plus précise au prix de plus de sous-pas. Voir #strong[nflow\_solvers]; pour la liste complète et la correspondance de chaque solveur avec le code C et Rust généré.

 
#image("nflow_tutorial_continuous_solver.png")


 #strong[Comparer le pas];

 Réduisez le #strong[Temps d'échantillonnage (s)]; et relancez avec le moteur discret pour voir le résultat d'Euler se rapprocher de celui d'ode4. C'est l'arbitrage qu'un solveur gère pour vous : la précision contre le nombre de pas.

 #strong[Pour aller plus loin];

 Ajoutez un second Integrator et un gain de rebouclage pour obtenir un système du second ordre tel qu'un système masse-ressort-amortisseur, puis poursuivez avec #strong[nflow\_tutorial\_dashboard]; pour piloter le modèle avec des commandes en direct pendant l'exécution.


== Exemple

Ouvrir un modèle continu et essayer différents solveurs dessus.

``````matlab
open_system([modulepath('nflow_blocks', 'root'), '/examples/causal/Second_Order_Responses_Demo.nflow']);
``````


== Voir aussi

#nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers];, #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate];, #nlink(<nflow_gui:1_nflow_tutorial_first_model>)[nflow\_tutorial\_first\_model];, #nlink(<nflow_gui:3_nflow_tutorial_dashboard>)[nflow\_tutorial\_dashboard];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
