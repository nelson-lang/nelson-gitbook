#import "nelson_help.typ": *

= gpuDevice <gpu_engine:gpuDevice>

Interroge le périphérique GPU sélectionné.

== Syntaxe

- #raw("d = gpuDevice()");

== Argument de sortie

/ d: une structure décrivant le périphérique GPU sélectionné.

== Description

#strong[d \= gpuDevice()]; renvoie une structure décrivant le périphérique GPU sélectionné, avec les champs suivants :

 #strong[Index]; : l'indice du périphérique.

 #strong[Name]; : le nom de l'adaptateur.

 #strong[Vendor]; : le fabricant du matériel.

 #strong[Architecture]; : l'architecture du périphérique.

 #strong[Backend]; : le backend graphique utilisé (Vulkan, Metal ou D3D12).

 #strong[MaxBufferSize]; : la taille maximale en octets d'un tampon unique du périphérique.

 Une erreur est déclenchée lorsqu'aucun périphérique GPU compatible n'est disponible.


== Exemple

``````matlab
if canUseGPU()
  d = gpuDevice()
end
``````


== Voir aussi

#nlink(<gpu_engine:gpuDeviceCount>)[gpuDeviceCount];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
