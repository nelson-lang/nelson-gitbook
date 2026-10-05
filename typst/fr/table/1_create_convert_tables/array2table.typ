#import "../nelson_help.typ": *

= array2table <table:1_create_convert_tables.array2table>

Convertir un tableau homogène en table.

== Syntaxe

- #raw("T = array2table(A)");

== Argument d'entrée

/ A: matrice : single, double, types entiers, logique, char, string, struct, cell.

== Argument de sortie

/ T: Objet Table.

== Description

#strong[T \= array2table(A)]; convertit un tableau m-by-n#strong[A]; en une table m-by-n, où chaque colonne de #strong[A]; devient une variable dans la table résultante #strong[T];.

 Par défaut,#strong[array2table]; utilise le nom du tableau d'entrée, combiné avec le numéro de colonne, pour créer les noms de variables dans la table. Si ces noms ne sont pas des identifiants valides, il attribue des noms par défaut sous la forme #strong['Var1', 'Var2', ... , 'VarN'];, où #strong[N]; est le nombre de colonnes de #strong[A];.


== Exemple

``````matlab
A = magic(6);
T = array2table(A)
T = array2table(magic(6))
``````


== Voir aussi

#nlink(<table:1_create_convert_tables.table2array>)[table2array];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
