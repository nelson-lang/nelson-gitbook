#import "nelson_help.typ": *

= gather <gpu_engine:gather>

Transfère un gpuArray vers l'espace de travail hôte.

== Syntaxe

- #raw("A = gather(G)");

== Argument d'entrée

/ G: un gpuArray, ou toute valeur hôte.

== Argument de sortie

/ A: un tableau hôte avec les mêmes valeurs et le même type sous-jacent.

== Description

#strong[A \= gather(G)]; copie le #strong[gpuArray]; #strong[G]; du périphérique vers l'espace de travail hôte. Le résultat est un tableau #strong[single];, #strong[logical]; ou #strong[single]; complexe, correspondant au type sous-jacent de #strong[G];.

 Lorsque #strong[G]; est déjà une valeur hôte, #strong[gather]; la renvoie inchangée.


== Exemple

``````matlab
G = gpuArray(single([1 2 3]));
A = gather(G + 1)
``````


== Voir aussi

#nlink(<gpu_engine:gpuArray>)[gpuArray];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
