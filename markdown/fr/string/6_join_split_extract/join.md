# join

Combine des chaînes.

## 📝 Syntaxe

- res = join(str)
- res = join(str, delimiter)
- res = join(str, dim)
- res = join(str, delimiter, dim)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- delimiter - une chaîne, un tableau de chaînes ou une cellule de chaînes : caractères utilisés pour séparer et joindre les chaînes.
- dim - positive integer: Dimension along which to join strings.

## 📤 Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📄 Description

<b>res = join(str)</b> combine les éléments de <b>str</b> en un seul texte en les joignant avec un espace comme délimiteur par défaut.

L'entrée, <b>str</b>, peut être un tableau de chaînes ou une cellule de vecteurs de caractères. La sortie, <b>res</b>, a le même type de données que <b>str</b>.

Si <b>str</b> est un tableau 1-by-N ou N-by-1, <b>res</b> sera un scalaire de chaîne ou une cellule contenant un seul vecteur de caractères.

Si <b>str</b> est un tableau M-by-N, alors <b>res</b> sera un tableau M-by-1.

Pour des tableaux de n'importe quelle taille, join concatène les éléments le long de la dernière dimension ayant une taille supérieure à 1.

<b>res = join(str, delimiter)</b> joint les éléments de <b>str</b> en utilisant le délimiteur spécifié au lieu de l'espace par défaut.

Si delimiter est un tableau de délimiteurs et que <b>str</b> a N éléments le long de la dimension de jointure, delimiter doit avoir N-1 éléments le long de la même dimension. Toutes les autres dimensions de delimiter doivent soit avoir la taille 1, soit correspondre aux dimensions correspondantes de <b>str</b>.

<b>res = join(str, dim)</b> combine les éléments de <b>str</b> le long de la dimension spécifiée <b>dim</b>.

<b>res = join(str, delimiter, dim)</b> joint les éléments de <b>str</b> le long de la dimension spécifiée <b>dim</b>, en utilisant delimiter pour les séparer.

## 💡 Exemple

```matlab
str = ["x","y","z"; "a","b","c"];
delimiters = [" + "," = "; " - "," = "];
R = join(str, delimiters)
```

## 🔗 Voir aussi

[append](../../string/append.md), [strcat](../../string/strcat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
