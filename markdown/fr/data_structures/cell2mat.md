# cell2mat

Transformer un tableau cellulaire contenant des matrices en une seule matrice concaténée.

## Syntaxe

- M = cell2mat(ce)

## Argument d'entrée

- ce - un tableau cellulaire.

## Argument de sortie

- M - un tableau.

## Description

<p>
            M = cell2mat(ce) crée une matrice unique en fusionnant tous les éléments du tableau cellulaire ce dans un tableau multidimensionnel. Les éléments de ce peuvent être des matrices numériques, logiques ou de caractères, des tableaux cellulaires ou des structs, et doivent être compatibles pour la concaténation via la fonction cat.</p>

## Exemple

```matlab
C = {[10], [20 30 40]; [90; 50], [60 76 88; 110 111 112]};
 M = cell2mat(C)
```

## Voir aussi

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [struct2cell](../data_structures/struct2cell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
