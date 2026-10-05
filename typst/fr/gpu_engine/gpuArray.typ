#import "nelson_help.typ": *

= gpuArray <gpu_engine:gpuArray>

Copie un tableau vers le périphérique GPU.

== Syntaxe

- #raw("G = gpuArray(A)");

== Argument d'entrée

/ A: un tableau numérique réel, logique, complexe ou entier de petite taille.

== Argument de sortie

/ G: un gpuArray stocké sur le périphérique.

== Description

#strong[G \= gpuArray(A)]; copie le tableau #strong[A]; vers le GPU et renvoie un objet #strong[gpuArray];. Les opérations sur #strong[G]; s'exécutent sur le périphérique ; utilisez #strong[gather]; pour ramener le résultat vers l'hôte.

 Le périphérique stocke les données en simple précision : une entrée #strong[double]; est convertie en #strong[single];. Les entrées réelles, #strong[logical]; et complexes sont prises en charge ; les entrées creuses ne le sont pas.

 Les petites classes entières #strong[int8];, #strong[uint8];, #strong[int16]; et #strong[uint16]; sont préservées : leurs valeurs sont exactes en simple précision, l'arithmétique sature à l'intervalle de la classe et #strong[gather]; renvoie la classe d'origine.

 #strong[int32]; et #strong[uint32]; sont également préservées (stockées sous forme de bits entiers 32 bits bruts) : l'aller-retour, les opérations saturantes #strong[+];, #strong[-];, #strong[.\*];, #strong[.\/];, #strong[.\\];, le moins unaire, #strong[abs];, #strong[max];\/#strong[min]; (élément par élément et réductions), #strong[sum];, #strong[prod];, #strong[mean];, #strong[cumsum];, #strong[cumprod];, #strong[sort];, #strong[find];, la puissance entière (#strong[.^]; avec un exposant non négatif), les opérateurs relationnels et les opérations de remise en forme \/ d'indexation sont pris en charge. Les opérations sans signification entière (les fonctions mathématiques transcendantes élément par élément) déclenchent une erreur claire. Les classes entières 64 bits ne sont pas prises en charge.

 Un GPU compatible est requis (voir #strong[canUseGPU];).

 Un tableau du périphérique peut aussi être créé directement avec #strong[zeros(sz, 'gpuArray')]; \/ #strong[ones(sz, 'gpuArray')];, ou avec la forme #strong['like']; #strong[zeros(sz, 'like', G)]; où #strong[G]; est un gpuArray.


== Exemple

``````matlab
A = single(rand(1000));
G = gpuArray(A);
R = gather(G .* G + sqrt(G));
class(G)
``````


== Voir aussi

#nlink(<gpu_engine:gather>)[gather];, #nlink(<gpu_engine:isgpuarray>)[isgpuarray];, #nlink(<gpu_engine:canUseGPU>)[canUseGPU];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
