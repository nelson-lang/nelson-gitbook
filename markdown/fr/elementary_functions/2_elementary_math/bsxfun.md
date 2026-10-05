# bsxfun

Applique une fonction élément par élément avec expansion implicite

## 📝 Syntaxe

- C = bsxfun(fun, A, B)

## 📥 Argument d'entrée

- fun - handle vers une fonction binaire élément par élément (ou chaîne de caractères contenant le nom de la fonction). Les opérations intégrées courantes utilisables sont : @plus, @minus, @times, @rdivide, @ldivide, @power, @max, @min, @rem, @mod, @hypot, @atan2, @eq, @ne, @lt, @le, @gt, @ge, @and, @or et @xor. Tout handle de fonction binaire élément par élément défini par l'utilisateur est également accepté.
- A - tableau (numérique ou logique).
- B - tableau (numérique ou logique).

## 📤 Argument de sortie

- C - résultat de l'application de fun à A et B avec expansion des dimensions singleton.

## 📄 Description


<b>bsxfun</b> applique la fonction binaire élément par élément fun aux tableaux A et B, avec expansion implicite (les dimensions singleton sont virtuellement répliquées) de sorte que A et B n'ont pas besoin d'avoir la même taille. 

Pour chaque dimension, les tailles de A et B doivent être soit égales, soit l'une des deux doit valoir 1. Une dimension de taille 1 est étendue pour correspondre à la taille de l'autre tableau. Si deux dimensions correspondantes diffèrent et qu'aucune ne vaut 1, une erreur est déclenchée. 

Le résultat C a, selon chaque dimension, la plus grande des deux tailles d'entrée. Par exemple, combiner une colonne <b>m</b>-par-<b>1</b> avec une ligne <b>1</b>-par-<b>n</b> produit un résultat <b>m</b>-par-<b>n</b>. 

Les opérateurs élément par élément de Nelson se propagent déjà sur les dimensions singleton, ainsi <b>A + B</b> est équivalent à <b>bsxfun(@plus, A, B)</b> et constitue généralement la forme préférée.

## 💡 Exemples

Ajouter un vecteur colonne à un vecteur ligne

```matlab
bsxfun(@plus, (1:3)', 1:4)
```
Soustraire la moyenne de colonne à chaque colonne

```matlab
A = magic(4);
bsxfun(@minus, A, mean(A))
```
Comparaison élément par élément avec expansion implicite

```matlab
bsxfun(@gt, (1:3)', 1:4)
```
Fonction binaire anonyme

```matlab
bsxfun(@(x, y) sqrt(x.^2 + y.^2), (1:3)', 1:4)
```
Nom de fonction donné sous forme de chaîne de caractères

```matlab
bsxfun('times', (1:3)', 1:4)
```


## 🔗 Voir aussi

[arrayfun](../../data_structures/arrayfun.md), [cellfun](../../data_structures/cellfun.md), [repmat](../../elementary_functions/1_array_creation_shape/repmat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
