#import "../nelson_help.typ": *

= tail <table:3_summary_information.tail>

Obtenir les dernières lignes d'une table ou d'un tableau.

== Syntaxe

- #raw("tail(A)");
- #raw("tail(A, k)");
- #raw("B = tail(...)");

== Argument d'entrée

/ A: Tableau d'entrée (table ou autre).

== Argument de sortie

/ k: un entier : nombre de lignes à extraire (k \= 8 par défaut).

== Description

#strong[tail(A)]; affiche les huit dernières lignes d'un tableau, ou de la table #strong[A]; dans la fenêtre de commande sans l'assigner à une variable.

 #strong[tail(A, k)]; affiche les k dernières lignes de A.

 #strong[B \= tail(...)]; renvoie les lignes spécifiées de #strong[A]; pour n'importe laquelle des syntaxes précédentes, avec#strong[B]; ayant le même type de données que #strong[A];.


== Exemples

``````matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
tail(T, 2)
``````

``````matlab
A = repmat((1:50)',1, 3);
tail(A)
``````


== Voir aussi

#nlink(<table:3_summary_information.head>)[head];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [version initiale],
)

// Auteur: Allan CORNET
