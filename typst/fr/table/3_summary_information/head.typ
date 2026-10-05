#import "../nelson_help.typ": *

= head <table:3_summary_information.head>

Obtenir les premières lignes d'une table ou d'un tableau.

== Syntaxe

- #raw("head(A)");
- #raw("head(A, k)");
- #raw("B = head(...)");

== Argument d'entrée

/ A: Tableau d'entrée (table ou autre).

== Argument de sortie

/ k: un entier : nombre de lignes à extraire (k \= 8 par défaut).

== Description

#strong[head(A)]; affiche les huit premières lignes d'un tableau, ou de la table #strong[A]; dans la fenêtre de commande sans l'assigner à une variable.

 #strong[head(A, k)]; affiche les k premières lignes de A.

 #strong[B \= head(...)]; renvoie les lignes spécifiées de #strong[A]; pour n'importe quelle des syntaxes précédentes, avec#strong[B]; ayant le même type de données que #strong[A];.


== Exemples

``````matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
head(T, 2)
``````

``````matlab
A = repmat((1:50)',1, 3);
head(A)
``````


== Voir aussi

#nlink(<table:3_summary_information.tail>)[tail];, #nlink(<table:1_create_convert_tables.table>)[table];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.9.0], [version initiale],
)

// Auteur: Allan CORNET
