# le

inférieur ou égal, opérateur <=

## Syntaxe

- C = le(A, B)

## Argument d'entrée

- A - une variable
- B - une variable

## Argument de sortie

- C - résultat de le(A, B)

## Description

<p>C = le(A, B) renvoie un tableau logique avec des éléments égaux à true lorsque A est inférieur ou égal à B.</p>

<p>le compare uniquement la partie réelle des tableaux numériques.</p>

## Exemples

```matlab
eye(2,2) &#60;= ones(2, 2)
```

```matlab
0 &#60;= i
```

```matlab
'Nelson' &#60;= 'Noslen'
```

```matlab
'Nelson' &#60;= 'l'
```

```matlab
le(0.8 - 0.6 - 0.2, 0)
```

## Voir aussi

[ne](../operators/ne.md), [lt](../operators/lt.md), [ge](../operators/ge.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
