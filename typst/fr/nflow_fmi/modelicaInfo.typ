#import "nelson_help.typ": *

= modelicaInfo <nflow_fmi:modelicaInfo>

Indique l'OpenModelica utilisé par le pont Modelica de nflow.

== Syntaxe

- #raw("info = modelicaInfo()");

== Argument de sortie

/ info: une structure scalaire décrivant l'installation d'OpenModelica, avec les champs listés ci-dessous.

== Description

#strong[modelicaInfo]; indique le compilateur #strong[OpenModelica]; (#strong[omc];) que le pont Modelica de nflow utilisera. Un bloc #strong[modelica]; compile un modèle Modelica en FMU avec OpenModelica puis le simule via le chemin FMI de nflow ; #strong[modelicaInfo]; indique si cela est possible et quel OpenModelica est sélectionné.

 La structure #strong[info]; renvoyée a les champs suivants :

 

#table(
  columns: 3,
  [Champ], [Classe], [Détails], 
  [available], [logical], [#strong[true]; lorsqu'un exécutable #strong[omc]; a été trouvé et s'exécute.], 
  [capable], [logical], [#strong[true]; lorsqu'OpenModelica est non seulement présent mais capable d'exporter une FMU (le runtime d'export FMI est installé). Un modèle ne se simule que si #strong[capable]; vaut #strong[true];.], 
  [omc], [char], [le chemin résolu vers l'exécutable #strong[omc];, ou une chaîne vide.], 
  [home], [char], [le répertoire d'installation d'OpenModelica, ou une chaîne vide.], 
  [version], [char], [la chaîne de version renvoyée par #strong[omc];.], 
  [reason], [char], [un état lisible ; en cas d'indisponibilité, il explique la cause et la solution.], 
)
 La présence n'est pas la capacité : un exécutable #strong[omc]; peut s'exécuter tout en étant incapable de construire une FMU si son installation ne comporte pas le runtime d'export FMI. Dans ce cas #strong[available]; vaut #strong[true]; mais #strong[capable]; vaut #strong[false];, et un bloc #strong[modelica]; bloque la simulation avec un message clair.

 L'emplacement d'OpenModelica est résolu dans l'ordre suivant : un chemin configuré avec #strong[modelicaConfigure];, la variable d'environnement #strong[NELSON\_OPENMODELICA\_HOME]; (spécifique à Nelson), la variable d'environnement #strong[OPENMODELICAHOME];, les répertoires d'installation standard, puis #strong[PATH];.


== Exemple

Vérifier qu'un modèle Modelica peut être simulé.

``````matlab
info = modelicaInfo();
if ~info.capable
  disp(info.reason);
end
``````


== Voir aussi

#nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
