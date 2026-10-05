#import "nelson_help.typ": *

= NFlow.plotScopes <nflow_engine:NFlow.plotScopes>

Ouvre une figure par scope d'un résultat de simulation nflow.

== Syntaxe

- #raw("figures = NFlow.plotScopes(out)");
- #raw("NFlow.plotScopes(out)");

== Argument d'entrée

/ out: la structure retournée par #strong[sim]; (elle doit contenir un champ #strong[logsout];).

== Argument de sortie

/ figures: un vecteur de handles de figures, un par scope tracé.

== Description

#strong[NFlow.plotScopes]; ouvre une figure par signal journalisé dans #strong[out.logsout];, en traçant chaque voie d'un scope comme une courbe sur les mêmes axes. Chaque figure est titrée avec l'identifiant du scope.

 C'est pratique comme #strong[stopFcn]; de modèle : affectez le StopFcn d'un modèle à #strong[NFlow.plotScopes(out)]; pour que les courbes des scopes s'ouvrent automatiquement à l'arrêt de la simulation, aussi bien depuis #strong[sim]; que depuis le bouton Run de l'éditeur nflow.


== Exemple

Simuler une démo et tracer ses scopes.

``````matlab
model = [modulepath('nflow_blocks'), '/examples/causal/Second_Order_Responses_Demo.nflow'];
out = sim(model);
NFlow.plotScopes(out);
``````


== Voir aussi

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
