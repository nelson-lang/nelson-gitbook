# islocalmin

Détecte les minima locaux des données.

## 📝 Syntaxe

- TF = islocalmin(A)
- TF = islocalmin(A, dim)
- TF = islocalmin(..., Name, Value)
- [TF, P] = islocalmin(...)

## 📥 Argument d'entrée

- A - données d'entrée : vecteur, matrice, tableau N-D numérique réel ou logique, table ou timetable.
- dim - dimension de travail : entier positif (par défaut : première dimension non singleton). Non disponible pour les tables.
- 'MinProminence' - scalaire positif ou nul (par défaut : 0) : seuls les minima dont la proéminence est au moins égale à cette valeur sont renvoyés.
- 'FlatSelection' - élément marqué dans un plateau minimal : 'center' (défaut), 'first', 'last' ou 'all'.
- 'MinSeparation' - scalaire positif ou nul (par défaut : 0), dans l'unité des abscisses (une duration pour des abscisses datetime ou duration) : un minimum plus proche que cette valeur d'un minimum plus proéminent est ignoré.
- 'MaxNumExtrema' - entier positif : conserve au plus ce nombre de minima parmi les plus proéminents (par défaut : pas de limite).
- 'ProminenceWindow' - scalaire positif k ou vecteur [b f] de deux valeurs positives ou nulles (une duration pour des abscisses datetime ou duration) : la proéminence d'un minimum est calculée uniquement avec les données de la fenêtre [x-k/2, x+k/2) ou [x-b, x+f].
- 'SamplePoints' - vecteur trié de valeurs distinctes double, single, datetime ou duration : abscisses des données (par défaut : 1, 2, 3, ...). Pour une table, peut aussi être le nom d'une variable de la table. Une timetable utilise ses temps de lignes.
- 'DataVariables' - variables de la table à traiter : noms, indices, vecteur logique, handle de fonction ou vartype (par défaut : toutes les variables).
- 'OutputFormat' - 'logical' (défaut) : TF est un tableau logique ; 'tabular' : TF est une table contenant les DataVariables. Uniquement pour les tables.

## 📤 Argument de sortie

- TF - tableau logique de la taille de A (ou table), vrai aux minima locaux.
- P - proéminence de chaque minimum local (0 ailleurs), de la taille de A ; classe entière non signée pour des données entières. Pour une table, P est une table contenant les DataVariables.

## 📄 Description


<b>islocalmin</b> marque les éléments de A plus petits que leurs voisins selon la dimension de travail. Une suite de valeurs égales plus petites que les valeurs qui l'entourent forme un seul minimum local (voir 'FlatSelection'). 

Le premier et le dernier éléments ne sont jamais des minima locaux. Les valeurs NaN sont ignorées. Les valeurs -Inf sont toujours des minima locaux, de proéminence infinie. 

La proéminence d'un minimum mesure à quel point il se détache : depuis le minimum, une ligne horizontale est tracée de chaque côté jusqu'à la première valeur strictement plus petite ou jusqu'au bord des données ; la base est la plus petite des deux valeurs maximales trouvées au-dessus de ces lignes, et la proéminence est la profondeur du minimum sous la base. Chaque élément d'un plateau minimal porte sa proéminence. 

islocalmin(A) donne le même résultat que islocalmax appliqué aux données inversées : les options se comportent de la même façon. Les filtres sont appliqués dans cet ordre : 'MinProminence', 'MinSeparation' (un plateau compte comme un seul minimum couvrant ses échantillons) puis 'MaxNumExtrema' (en cas d'égalité, le premier minimum l'emporte). 

Sans 'ProminenceWindow', la recherche est de complexité linéaire : elle convient aux grands signaux.

## 💡 Exemples

Minima locaux et leur proéminence

```matlab
A = [5 0 4 2 4 1 5];
[TF, P] = islocalmin(A)
islocalmin(A, 'MinProminence', 3)
```
Plateaux minimaux

```matlab
x = 0:0.1:5;
A = max(-0.75, -sin(pi * x));
find(islocalmin(A, 'FlatSelection', 'first'))
find(islocalmin(A, 'FlatSelection', 'all'))
```
Minimum le plus proéminent de chaque colonne

```matlab
A = [3 4; 1 2; 2 4; 0 1; 3 4];
TF = islocalmin(A, 'MaxNumExtrema', 1)
```


## 🔗 Voir aussi

[islocalmax](../data_analysis/islocalmax.md), [min](../data_analysis/min.md), [movmin](../data_analysis/movmin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
