# iscellstr

Renvoie si une variable est un tableau cellulaire de chaînes.

## Syntaxe

- true_or_false = iscellstr(A)

## Argument d'entrée

- A - une variable

## Argument de sortie

- true_or_false - un logique

## Description

<p>
                        iscellstr(A) renvoie vrai si A est un tableau cellulaire de chaînes ou un tableau cellulaire vide.</p>

## Exemples

```matlab
iscellstr('Nelson')
```

```matlab
iscellstr({'Nelson'})
```

```matlab
iscellstr({})
```

## Voir aussi

[iscell](../types/iscell.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
