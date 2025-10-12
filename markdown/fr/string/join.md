# join

Combine des chaînes.

## Syntaxe

- res = join(str)
- res = join(str, delimiter)
- res = join(str, dim)
- res = join(str, delimiter, dim)

## Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- delimiter - une chaîne, un tableau de chaînes ou une cellule de chaînes : caractères utilisés pour séparer et joindre les chaînes.
- dim - positive integer: Dimension along which to join strings.

## Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## Description

<p>
        res = join(str) combine les éléments de str en un seul texte en les joignant avec un espace comme délimiteur par défaut.</p>

<p>L'entrée, str, peut être un tableau de chaînes ou une cellule de vecteurs de caractères. La sortie, res, a le même type de données que str.</p>

<p>Si str est un tableau 1-by-N ou N-by-1, res sera un scalaire de chaîne ou une cellule contenant un seul vecteur de caractères.</p>

<p>Si str est un tableau M-by-N, alors res sera un tableau M-by-1.</p>

<p>Pour des tableaux de n'importe quelle taille, join concatène les éléments le long de la dernière dimension ayant une taille supérieure à 1.</p>

<p>
            res = join(str, delimiter) joint les éléments de str en utilisant le délimiteur spécifié au lieu de l'espace par défaut.</p>

<p>Si delimiter est un tableau de délimiteurs et que str a N éléments le long de la dimension de jointure, delimiter doit avoir N-1 éléments le long de la même dimension. Toutes les autres dimensions de delimiter doivent soit avoir la taille 1, soit correspondre aux dimensions correspondantes de str.</p>

<p>
              res = join(str, dim) combine les éléments de str le long de la dimension spécifiée dim.</p>

<p>
                res = join(str, delimiter, dim) joint les éléments de str le long de la dimension spécifiée dim, en utilisant delimiter pour les séparer.</p>

## Exemple

```matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
```

## Voir aussi

[append](../string/append.md), [strcat](../string/strcat.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
