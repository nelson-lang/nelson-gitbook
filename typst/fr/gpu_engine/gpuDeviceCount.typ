#import "nelson_help.typ": *

= gpuDeviceCount <gpu_engine:gpuDeviceCount>

Nombre de périphériques GPU compatibles.

== Syntaxe

- #raw("n = gpuDeviceCount()");

== Argument de sortie

/ n: double : le nombre de périphériques GPU compatibles détectés (0 si aucun).

== Description

#strong[n \= gpuDeviceCount()]; renvoie le nombre de périphériques GPU compatibles disponibles sur le système. La valeur #strong[0]; signifie qu'aucun périphérique pris en charge n'a été trouvé.


== Exemple

``````matlab
gpuDeviceCount()
``````


== Voir aussi

#nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
