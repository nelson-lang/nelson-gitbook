#import "nelson_help.typ": *

= islocalmax <data_analysis:islocalmax>

Détecte les maxima locaux des données.

== Syntaxe

- #raw("TF = islocalmax(A)");
- #raw("TF = islocalmax(A, dim)");
- #raw("TF = islocalmax(..., Name, Value)");
- #raw("[TF, P] = islocalmax(...)");

== Argument d'entrée

/ A: données d'entrée : vecteur, matrice, tableau N-D numérique réel ou logique, table ou timetable.
/ dim: dimension de travail : entier positif (par défaut : première dimension non singleton). Non disponible pour les tables.
/ 'MinProminence': scalaire positif ou nul (par défaut : 0) : seuls les maxima dont la proéminence est au moins égale à cette valeur sont renvoyés.
/ 'FlatSelection': élément marqué dans un plateau maximal : 'center' (défaut), 'first', 'last' ou 'all'.
/ 'MinSeparation': scalaire positif ou nul (par défaut : 0), dans l'unité des abscisses (une duration pour des abscisses datetime ou duration) : un maximum plus proche que cette valeur d'un maximum plus proéminent est ignoré.
/ 'MaxNumExtrema': entier positif : conserve au plus ce nombre de maxima parmi les plus proéminents (par défaut : pas de limite).
/ 'ProminenceWindow': scalaire positif k ou vecteur \[b f\] de deux valeurs positives ou nulles (une duration pour des abscisses datetime ou duration) : la proéminence d'un maximum est calculée uniquement avec les données de la fenêtre \[x-k\/2, x+k\/2) ou \[x-b, x+f\].
/ 'SamplePoints': vecteur trié de valeurs distinctes double, single, datetime ou duration : abscisses des données (par défaut : 1, 2, 3, ...). Pour une table, peut aussi être le nom d'une variable de la table. Une timetable utilise ses temps de lignes.
/ 'DataVariables': variables de la table à traiter : noms, indices, vecteur logique, handle de fonction ou vartype (par défaut : toutes les variables).
/ 'OutputFormat': 'logical' (défaut) : TF est un tableau logique ; 'tabular' : TF est une table contenant les DataVariables. Uniquement pour les tables.

== Argument de sortie

/ TF: tableau logique de la taille de A (ou table), vrai aux maxima locaux.
/ P: proéminence de chaque maximum local (0 ailleurs), de la taille de A ; classe entière non signée pour des données entières. Pour une table, P est une table contenant les DataVariables.

== Description

#strong[islocalmax]; marque les éléments de A plus grands que leurs voisins selon la dimension de travail. Une suite de valeurs égales plus grandes que les valeurs qui l'entourent forme un seul maximum local (voir 'FlatSelection').

 Le premier et le dernier éléments ne sont jamais des maxima locaux. Les valeurs NaN sont ignorées. Les valeurs +Inf sont toujours des maxima locaux, de proéminence infinie.

 La proéminence d'un maximum mesure à quel point il se détache : depuis le maximum, une ligne horizontale est tracée de chaque côté jusqu'à la première valeur strictement plus grande ou jusqu'au bord des données ; la base est la plus grande des deux valeurs minimales trouvées sous ces lignes, et la proéminence est la hauteur du maximum au-dessus de la base. Chaque élément d'un plateau maximal porte sa proéminence.

 Les filtres sont appliqués dans cet ordre : 'MinProminence', 'MinSeparation' (un plateau compte comme un seul maximum couvrant ses échantillons) puis 'MaxNumExtrema' (en cas d'égalité, le premier maximum l'emporte).

 Sans 'ProminenceWindow', la recherche est de complexité linéaire : elle convient aux grands signaux.


== Exemples

Maxima locaux et leur proéminence

``````matlab
A = [0 5 1 3 1 4 0];
[TF, P] = islocalmax(A)
islocalmax(A, 'MinProminence', 3)
``````

Plateaux maximaux

``````matlab
x = 0:0.1:5;
A = min(0.75, sin(pi * x));
find(islocalmax(A, 'FlatSelection', 'first'))
find(islocalmax(A, 'FlatSelection', 'all'))
``````

Maxima séparés avec des abscisses temporelles

``````matlab
t = hours(linspace(0, 3, 15));
A = [2 4 6 4 3 7 5 6 5 10 4 -1 -3 -2 0];
TF = islocalmax(A, 'MinSeparation', minutes(45), 'SamplePoints', t);
find(TF)
``````

Maxima le long des lignes d'une matrice

``````matlab
A = [1 3 1 2 0; 0 1 4 1 0; 2 0 2 0 2];
TF = islocalmax(A, 2)
``````


== Voir aussi

#nlink(<data_analysis:islocalmin>)[islocalmin];, #nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:movmax>)[movmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
