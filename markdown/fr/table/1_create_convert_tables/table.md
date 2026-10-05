# table

Un tableau de type table avec variables nommees, capable de contenir differents types de donnees

## 📝 Syntaxe

- T = table()
- T = table(var1, ... , varN)
- T = table(... , Name, Value)
- T = table('Size', sz, 'VariableTypes', types)
- T = table(..., 'VariableNames', names, 'RowNames', rowNames)

## 📥 Argument d'entrée

- var1, ... , varN - Variables d'entree : les variables sont specifiees comme des tableaux ayant tous le meme nombre de lignes. Ces variables peuvent differer en taille et en type de donnees.
- Name, Value - Les arguments optionnels sont specifies sous forme de paires Name1, Value1, ... , NameN, ValueN, ou Name est le nom de l'argument et Value sa valeur correspondante. Ces paires nom-valeur doivent etre placees apres les autres arguments, mais l'ordre des paires entre elles est flexible.
- sz - Vecteur a deux elements qui specifie le nombre de lignes et de variables pour une table preallouee.
- types - Types de variables utilises avec <b>Size</b>. Les valeurs prises en charge incluent les types entiers, les types flottants, logical, string, cell, cellstr et char.
- names - Noms de variables specifies comme tableau de chaines ou cellule de vecteurs de caracteres.
- rowNames - Noms de lignes specifies comme tableau de chaines ou cellule de vecteurs de caracteres.

## 📤 Argument de sortie

- T - Un objet table.

## 📄 Description


Les tableaux de type table sont concus pour stocker des donnees orientees colonne, comme des colonnes provenant de fichiers texte ou de feuilles de calcul. 

Chaque colonne de donnees est stockee dans une variable au sein de la table, et ces variables peuvent avoir des types et tailles differents, a condition qu'elles partagent toutes le meme nombre de lignes. 

Les variables de table ont des noms, similaires aux champs d'une structure. 

 

Pour acceder aux donnees d'une table, utilisez les methodes suivantes : 

 

- Notation par point (T.varname) pour extraire une seule variable. 

- Accolades (T{rows, vars}) pour extraire un tableau a partir de lignes et de variables specifiques. 

- Parentheses (T(rows, vars)) pour retourner un sous-ensemble de la table. 

 

<b>T = table(var1, ..., varN)</b> cree une table a partir des variables d'entree specifiees <b>var1,...,varN</b>. 

Les variables peuvent varier en taille et en type de donnees, mais elles doivent toutes avoir le meme nombre de lignes. 

Si les entrees sont des variables d'espace de travail, leurs noms sont utilises comme noms de variables dans la table resultante. 

Sinon, la table assigne des noms par defaut au format 'Var1', 'Var2', etc. 

 

<b>T = table(..., Name, Value)</b> permet de specifier des options supplementaires en utilisant une ou plusieurs paires nom-valeur. 

Par exemple, vous pouvez definir des noms de variables personnalises avec 'VariableNames'. 

Les metadonnees publiques sont exposees par <b>T.Properties</b>. Cette structure contient <b>VariableNames</b>, <b>VariableTypes</b>, <b>RowNames</b>, <b>DimensionNames</b>, <b>Description</b>, <b>UserData</b>, les metadonnees de variables et <b>CustomProperties</b>. 

Une table peut etre preallouee avec <b>Size</b> et <b>VariableTypes</b>. Le constructeur cree les variables avec les types demandes et des noms par defaut ou fournis par l'utilisateur. 

 

<b>T = table()</b> cree une table vide avec 0 lignes et 0 colonnes.

## 💡 Exemples



```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
T.Names
T{2, 2}
T{2, 'Age'}
T(:, 'Age')
T(2:3,1:3)

```


```matlab
N = {'John'; 'Alice'; 'Bob'; 'Diana'};
A = [28; 34; 22; 30];
H = [175; 160; 180; 165];
W = [70; 55; 80; 60];
T = table(N, A, H, W, 'VariableNames', {'Name', 'Age', 'Height', 'Weight'})
```
Preallouer une table avec des types de variables

```matlab
T = table('Size', [3 2], 'VariableTypes', {'double', 'string'}, ...
          'VariableNames', {'Value', 'Label'});
T.Value = [10; 20; 30];
T.Label = ["low"; "medium"; "high"];
T.Properties.Description = 'Example table';
T
```
Utiliser les proprietes de table

```matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'}, ...
          'RowNames', {'r1', 'r2'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'manual';
T.Properties.CustomProperties.Source
T.Properties.DimensionNames
```


## 🔗 Voir aussi

[Accessing and Manipulating Tables in Nelson](../../table/4_sort_filter_rearrange/1_accessing_manipulating_table.md), [Direct computation with Table](../../table/7_apply_functions/2_direct_computation_with_table.md), [cell2table](../../table/1_create_convert_tables/cell2table.md), [array2table](../../table/1_create_convert_tables/array2table.md), [struct2table](../../table/1_create_convert_tables/struct2table.md), [addvars](../../table/4_sort_filter_rearrange/addvars.md), [movevars](../../table/4_sort_filter_rearrange/movevars.md), [summary](../../data_analysis/summary.md), [addprop](../../table/4_sort_filter_rearrange/addprop.md), [rmprop](../../table/4_sort_filter_rearrange/rmprop.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.8.0   | version initiale |
| 2.0.0   | table classdef, proprietes de table, preallocation et metadonnees |

<!--
## 👤 Auteur

Allan CORNET
-->
