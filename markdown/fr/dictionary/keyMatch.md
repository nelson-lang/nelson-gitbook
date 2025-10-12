# keyMatch

Vérifie si deux clés de dictionnaire sont identiques.

## Syntaxe

- tf = keyMatch(A, B)

## Argument d'entrée

- A - array
- B - array

## Argument de sortie

- tf - logique : true ou false.

## Description

<p>
        tf = keyMatch(A, B) renvoie true si les tableaux A et B ont des classes, propriétés, dimensions et valeurs identiques, et renvoie false sinon.</p>

<p>Pour les classes personnalisées, la surcharge de keyMatch peut être nécessaire pour assurer une équivalence précise.</p>

## Exemple

```matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
```

## Voir aussi

[keyHash](../dictionary/keyHash.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## Auteur

Allan CORNET
