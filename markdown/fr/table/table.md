# table

Un tableau de type table avec variables nommées, capable de contenir
différents types de données

## Syntaxe

- T = table()
- T = table(var1, ... , varN)
- T = table(... , Name, Value)

## Argument d'entrée

- var1, ... , varN - Variables d'entrée : les variables sont spécifiées comme des tableaux ayant tous le même nombre de lignes. Ces variables peuvent différer en taille et en type de données.
- Name, Value - Les arguments optionnels sont spécifiés sous forme de paires Name1, Value1, ... , NameN, ValueN, où Name est le nom de l'argument et Value sa valeur correspondante. Ces paires nom-valeur doivent être placées après les autres arguments, mais l'ordre des paires entre elles est flexible.

## Argument de sortie

- T - Un objet table.

## Description

<p>Les tableaux de type table sont conçus pour stocker des données orientées colonne, comme
            des colonnes provenant de fichiers texte ou de feuilles de calcul.</p>

<p>Chaque colonne de données est stockée dans une variable au sein de la table, et ces
            variables peuvent avoir des types et tailles différents, à condition qu'elles partagent
            toutes le même nombre de lignes.</p>

<p>Les variables de table ont des noms, similaires aux champs d'une structure.</p>

<p></p>

<p>Pour accéder aux données d'une table, utilisez les méthodes suivantes :</p>

<p></p>

<p>- Notation par point (T.varname) pour extraire une seule variable.</p>

<p>- Accolades (T{rows, vars}) pour extraire un tableau à partir de lignes et de variables
            spécifiques.</p>

<p>- Parenthèses (T(rows, vars)) pour retourner un sous-ensemble de la table.</p>

<p></p>

<p>T = table(var1, ..., varN) crée une table à partir des variables d'entrée
            spécifiées var1,...,varN.</p>

<p>Les variables peuvent varier en taille et en type de données, mais elles doivent toutes
            avoir le même nombre de lignes.</p>

<p>Si les entrées sont des variables d'espace de travail, leurs noms sont utilisés comme
            noms de variables dans la table résultante.</p>

<p>Sinon, la table assigne des noms par défaut au format 'Var1', 'Var2', etc., où N est le
            nombre total de variables.</p>

<p></p>

<p>
            T = table(..., Name, Value) permet de spécifier des options supplémentaires en
            utilisant une ou plusieurs paires nom-valeur.</p>

<p>Par exemple, vous pouvez définir des noms de variables personnalisés en utilisant la
            paire nom-valeur 'VariableNames'.</p>

<p>Cette syntaxe peut être utilisée en combinaison avec n'importe lequel des arguments
            d'entrée précédents.</p>

<p></p>

<p>
            T = table() crée une table vide avec 0 lignes et 0 colonnes.</p>

## Exemples

```matlab
Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight)
T.Names
T{2, 2}
T{'Alice', 'Age'}
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

```matlab
N = {'John'; 'Alice'; 'Bob'; 'Diana'};
A = [28; 34; 22; 30];
H = [175; 160; 180; 165];
W = [70; 55; 80; 60];

% Define the row names
RowNames = {'Person1', 'Person2', 'Person3', 'Person4'};

% Create the table with row names
T = table(A, H, W, 'RowNames', RowNames, 'VariableNames', {'Age', 'Height_cm', 'Weight_kg'})
T('Person2', 1:2)

```

## Voir aussi

[Accessing and Manipulating Tables in
Nelson](../table/1_accessing_manipulating_table.md), [Direct computation with Table](../table/2_direct_compution_with_table.md), [cell2table](../table/cell2table.md), [array2table](../table/array2table.md), [struct2table](../table/struct2table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
