#import "nelson_help.typ": *

= sprand <sparse:sprand>

Matrice sparse aléatoire à distribution uniforme.

== Syntaxe

- #raw("R = sprand(S)");
- #raw("R = sprand(m,n,density)");

== Argument d'entrée

/ S: Matrice d'entrée
/ m: Nombre de lignes
/ density: Densité des éléments non nuls

== Argument de sortie

/ S: une matrice sparse.

== Description

#strong[R \= sprand(S)]; crée une matrice sparse qui a le même motif de sparsité que la matrice S, mais avec des entrées aléatoires distribuées uniformément.

 #strong[R \= sprand(m,n,density)]; crée une matrice sparse aléatoire m-par-n avec approximativement density\*m\*n entrées non nulles distribuées uniformément pour une densité dans l'intervalle \[0,1\].


== Exemples

sprand avec motif de matrice

``````matlab
S = [1 0 0; 0 1 0; 0 0 1]; R = sprand(S)
``````

sprand avec taille et densité

``````matlab
R = sprand(5, 5, 0.2)
``````


== Voir aussi

#nlink(<sparse:sprandn>)[sprandn];, #nlink(<random:rng>)[rng];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
