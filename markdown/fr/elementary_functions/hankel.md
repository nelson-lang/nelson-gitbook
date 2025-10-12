# hankel

Matrice de Hankel

## Syntaxe

- H = hankel(c)
- H = hankel(c, r)

## Argument d'entrée

- c - Première colonne de la matrice de Hankel : vecteur ou scalaire.
- r - Dernière ligne de la matrice de Hankel : vecteur ou scalaire.

## Argument de sortie

- H - Matrice de Hankel.

## Description

<p>
            H = hankel(c) renvoie une matrice de Hankel carrée dont c est la première colonne et dont les éléments situés sous l'anti-diagonale principale valent zéro.</p>

<p>
                H = hankel(c, r) renvoie une matrice de Hankel avec c comme première colonne et r comme dernière ligne.</p>

<p>Si le dernier élément de c diffère du premier élément de r, Hankel émet un avertissement et utilise le dernier élément de c pour l'anti-diagonale.</p>

## Exemple

```matlab
c = [1 2 3 4 5];
hankel(c)
```

## Voir aussi

[hilb](../elementary_functions/hilb.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
