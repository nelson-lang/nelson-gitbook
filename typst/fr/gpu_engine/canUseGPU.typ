#import "nelson_help.typ": *

= canUseGPU <gpu_engine:canUseGPU>

Indique si un GPU compatible est disponible.

== Syntaxe

- #raw("tf = canUseGPU()");

== Argument de sortie

/ tf: logique : true lorsqu'un périphérique GPU compatible est disponible.

== Description

#strong[tf \= canUseGPU()]; renvoie #strong[true]; lorsqu'un périphérique GPU compatible est présent et utilisable, et #strong[false]; sinon (par exemple sur une machine sans backend Vulkan, Metal ou Direct3D 12 pris en charge).

 Utilisez-le pour écrire du code qui s'exécute sur le GPU lorsque c'est possible et retombe sur le CPU sinon.


== Exemple

``````matlab
if canUseGPU()
  A = gpuArray(single(rand(1000)));
else
  A = single(rand(1000));
end
``````


== Voir aussi

#nlink(<gpu_engine:gpuDevice>)[gpuDevice];, #nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
