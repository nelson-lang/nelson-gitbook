#import "nelson_help.typ": *

= countcats <categorical:countcats>

Compter les elements categoriels par categorie.

== Syntaxe

- #raw("counts = countcats(A)");
- #raw("counts = countcats(A, dim)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ dim: Dimension de comptage. Les valeurs prises en charge sont #strong[1]; et #strong[2];.

== Argument de sortie

/ counts: Comptes dans l'ordre des categories. Les elements non definis ne sont pas comptes.

== Description

#strong[countcats]; compte le nombre d'elements appartenant a chaque categorie de #strong[A];.

 Pour les matrices, #strong[dim]; indique si le comptage se fait par colonne ou par ligne.


== Exemples

Compter les elements dans chaque categorie.

``````matlab
A = categorical({'red','blue','red',''}); counts = countcats(A)
``````

Compter par ligne.

``````matlab
A = categorical({'red','blue'; 'red','red'}); counts = countcats(A, 2)
``````


== Voir aussi

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:histcounts>)[histcounts];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<data_analysis:summary>)[summary];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
