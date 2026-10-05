#import "nelson_help.typ": *

= csvread <spreadsheet:csvread>

Lire un fichier de valeurs séparées par des virgules (CSV).

== Syntaxe

- #raw("M = csvread(filename)");
- #raw("M = csvread(filename, R1, C1)");
- #raw("M = csvread(filename, R1, C1, [R1 C1 R2 C2])");

== Argument d'entrée

/ filename: une chaîne : nom de fichier source.
/ R1, C1: entier non négatif : décalage. par défaut : 0, 0
/ \[R1 C1 R2 C2\]: entiers non négatifs : décalage de la ligne de départ, décalage de la colonne de départ, décalage de la ligne de fin et décalage de la colonne de fin.

== Argument de sortie

/ M: une matrice double.

== Description

#strong[M \= csvread(filename, R1, C1, \[R1 C1 R2 C2\])]; lit uniquement les données dans la plage spécifiée par les décalages de lignes#strong[R1]; à #strong[R2]; et de colonnes #strong[C1]; à #strong[C2];.

 #strong[M \= csvread(filename, R1, C1)]; commence la lecture des données aux décalages de ligne et de colonne spécifiés par#strong[R1]; et#strong[C1];. Par exemple, R1\=0, C1\=0 correspond à la première valeur du fichier.

 Pour définir des décalages de ligne et de colonne sans définir un délimiteur, utilisez un caractère vide comme espace réservé, par exemple #strong[M \= csvread(filename, 3, 1)];.

 #strong[M \= csvread(filename)]; lit un fichier au format CSV (valeurs séparées par des virgules) dans la matrice #strong[M];.

 Importation de nombres complexes :#strong[csvread]; lit chaque nombre complexe comme une unité unique et le stocke dans un champ numérique complexe.

 Formes valides pour les nombres complexes :

 

 

#table(
  columns: 2,
  [Forme :], [Exemple :], 
  [±real ± imag i|j], [3.1347-2.1i], 
  [±imag i|j], [-2.1j], 
)
 #strong[Remarque]; : les espaces à l'intérieur d'un nombre complexe ne sont pas autorisés ;#strong[csvread]; interprète tout espace comme un délimiteur de champ.


== Exemple

``````matlab
A = [Inf, -Inf, NaN, 3]; filename = [tempdir(), 'csvread_example.csv']; csvwrite(filename, A); R = csvread(filename)
``````


== Voir aussi

#nlink(<spreadsheet:csvwrite>)[csvwrite];, #nlink(<spreadsheet:dlmread>)[dlmread];, #nlink(<stream_manager:fileread>)[fileread];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [version initiale],
)

// Auteur: Allan CORNET
