# head

Obtenir les premières lignes d'une table ou d'un tableau.

## Syntaxe

- head(A)
- head(A, k)
- B = head(...)

## Argument d'entrée

- A - Tableau d'entrée (table ou autre).

## Argument de sortie

- k - un entier : nombre de lignes à extraire (k = 8 par défaut).

## Description

<p>head(A) affiche les huit premières lignes d'un tableau, ou de la table A dans la fenêtre de commande sans l'assigner à une variable.</p>

<p>head(A, k) affiche les k premières lignes de A.</p>

<p>B = head(...) renvoie les lignes spécifiées de A pour n'importe quelle des syntaxes précédentes, avec B ayant le même type de données que A.</p>

## Exemples

```matlab
LastName = {'Sanchez';'Johnson';'Li';'Diaz';'Brown'};
Age = [38;43;38;40;49];
Smoker = logical([1;0;1;0;1]);
Height = [71;69;64;67;64];
Weight = [176;163;131;133;119];
BloodPressure = [124 93; 109 77; 125 83; 117 75; 122 80];
T = table(LastName, Age, Smoker, Height, Weight, BloodPressure)
head(T, 2)
```

```matlab
A = repmat((1:50)',1, 3);
head(A)
```

## Voir aussi

[tail](../table/tail.md), [table](../table/table.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.9.0   | version initiale |

## Auteur

Allan CORNET
