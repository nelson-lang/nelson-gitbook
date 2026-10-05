#import "nelson_help.typ": *

= fmiModelExchange <nflow_fmi:fmiModelExchange>

Importe et intègre une FMU FMI 2.0 ou 3.0 Model Exchange.

== Syntaxe

- #raw("result = fmiModelExchange(fmu, tStop)");
- #raw("result = fmiModelExchange(fmu, tStop, dt)");

== Argument d'entrée

/ fmu: une chaîne de caractères : le chemin d'une archive #strong[.fmu];, ou d'un répertoire de FMU déjà extrait. La FMU doit fournir l'interface Model Exchange.
/ tStop: un scalaire réel strictement positif : l'instant d'arrêt. La simulation débute à l'instant #strong[0];.
/ dt: un scalaire réel strictement positif optionnel : le pas d'intégration fixe. En son absence il vaut par défaut #strong[tStop \/ 1000];. Le Model Exchange demande en général un pas plus fin que la co-simulation, car Nelson intègre lui-même les états.

== Argument de sortie

/ result: une structure scalaire avec les champs #strong[time]; (N x 1), #strong[outputNames]; (1 x nOut) et #strong[outputs]; (N x nOut).

== Description

#strong[fmiModelExchange]; importe une #strong[unité de maquette fonctionnelle]; (FMU) conforme à l'interface #strong[FMI 2.0]; ou #strong[3.0]; #strong[Model Exchange]; et l'intègre avec le solveur de Nelson.

 La différence essentielle avec #strong[fmiCoSimulate]; est de savoir qui possède le solveur. Une FMU de co-simulation contient son propre solveur et est avancée par #strong[doStep];. Une FMU Model Exchange n'expose que les équations du modèle (dérivées des états, sorties et indicateurs d'événement) ; c'est l'outil importateur qui fournit le solveur. #strong[fmiModelExchange]; intègre les états continus de la FMU avec une méthode de Runge-Kutta d'ordre 4 à pas fixe et gère les événements d'état détectés en fin de pas (passage en mode événement, exécution du point fixe de mise à jour discrète, relecture des états continus).

 Aucune entrée externe n'est appliquée : les paramètres et entrées conservent leurs valeurs initiales. Une erreur est levée lorsque la FMU ne fournit pas l'interface Model Exchange.


== Exemple

Intégrer l'oscillateur de Van der Pol comme FMU Model Exchange.

``````matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/VanDerPol.fmu'];
r = fmiModelExchange(fmu, 20, 0.01);
plot(r.time, r.outputs); legend(r.outputNames);
``````


== Voir aussi

#nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
