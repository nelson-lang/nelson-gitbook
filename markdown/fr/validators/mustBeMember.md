# mustBeMember

Vérifie que la valeur est membre du tableau spécifié ou signale une erreur.

## Syntaxe

- mustBeMember(var, c)
- mustBeMember(var, c, argPosition)
- C++: void mustBeMember(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## Argument d'entrée

- var - une variable.
- c - une variable.
- argPosition - un entier positif : position de l'argument d'entrée.

## Description

<p>mustBeMember vérifie que la valeur est membre d'un tableau ou signale une erreur.</p>

## Exemple

```matlab
A = "red";
B = ["yellow","red","blue"];
mustBeMember(A,B)

```

## Voir aussi

[mustBeNonempty](../validators/mustBeNonempty.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
