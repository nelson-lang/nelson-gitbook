#import "nelson_help.typ": *

= nflow\_multirate <nflow_gui:nflow_multirate>

Exécuter des blocs à des cadences différentes (multi-rate).

== Syntaxe

- #raw("Page concept : sample time par bloc, cadence sous-échantillonnée, bloqueur d'ordre zéro");

== Description

Par défaut, tous les blocs d'un diagramme s'exécutent au pas de base du modèle (le #strong[sampleTime]; du diagramme). Un diagramme peut être #strong[multi-rate]; : certains blocs s'exécutent plus lentement que le pas de base, ne se mettant à jour qu'à leurs propres échéances d'échantillonnage.

 #strong[Sample time par bloc];

 Donnez à un bloc discret un paramètre #strong[SampleTime]; pour le faire tourner à cette cadence. Lorsque #strong[SampleTime]; vaut un multiple #strong[N]; du pas de base, le bloc ne fait sa mise à jour que tous les #strong[N]; échantillons ; entre les échéances sa sortie est tenue (bloqueur d'ordre zéro). Un bloc sans #strong[SampleTime];, ou dont la valeur est inférieure ou égale au pas de base, s'exécute à chaque pas exactement comme avant — le multi-rate est une extension purement optionnelle, un diagramme mono-cadence est donc inchangé.

 Le comportement est identique sous le moteur à pas fixe et sous un solveur continu (ode1\/ode4\/CVODES) : dans les deux cas un bloc discret plus lent sous-échantillonne et tient sa sortie entre les échéances.

 #strong[Exemple];

 Un retard unitaire alimenté par une rampe de pente 1 suit la rampe à chaque pas à la cadence de base ; à quatre fois le pas de base il échantillonne un pas sur quatre, produisant un escalier grossier. Voir #strong[Multirate\_Demo.m]; dans les exemples du module.

 #strong[Blocs liés];

 Le bloc #strong[rateTransition]; est une primitive d'échantillonnage-blocage dédiée au franchissement entre deux cadences à une frontière de signal ; un #strong[SampleTime]; par bloc fixe directement la cadence propre d'un bloc.

 #strong[Portée actuelle];

 La cadence sous-échantillonnée s'applique aux blocs de premier niveau qui tiennent un état entre les mises à jour (leur sortie tenue découle de l'état). Un #strong[SampleTime]; qui ne peut pas être honoré est signalé par une erreur plutôt qu'appliqué silencieusement : celui qui n'est pas un multiple entier du pas de base, celui posé sur un bloc feedthrough sans état, et celui posé sur un bloc imbriqué dans un sous-système (le multi-rate ne couvre que les blocs de premier niveau). La génération de code honore un #strong[SampleTime]; par bloc sur #strong[unitDelay]; et #strong[difference]; (le C\/Rust généré garde l'avance d'état sur l'index de pas majeur), et les blocs discrets à #strong[Ts]; propre (zoh, ddelay, dtf, dstateSpace, foh) s'auto-cadencent dans le code généré ; un #strong[SampleTime]; sur tout autre type de bloc est rejeté plutôt qu'ignoré silencieusement. Pas encore couvert : la propagation automatique du sample time dans le graphe, et l'échantillonnage-blocage de sortie pour les blocs sans état (feedthrough).


== Voir aussi

#nlink(<nflow_blocks:discrete.rateTransition>)[rateTransition];, #nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_engine:sim>)[sim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
