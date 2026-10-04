# spfun

Applique une fonction aux elements non nuls d'une matrice sparse.

## 📝 Syntaxe

- R = spfun(fun, S)

## 📥 Argument d'entrée

- fun - un handle de fonction applique au vecteur des valeurs non nulles.
- S - une matrice sparse. Une matrice pleine est d'abord convertie en sparse.

## 📤 Argument de sortie

- R - une matrice sparse de meme taille et de memes positions non nulles que <b>S</b>, dont les valeurs sont <b>fun</b> appliquee aux valeurs non nulles de <b>S</b>.

## 📄 Description

<b>spfun</b> evalue <b>fun</b> uniquement sur les elements non nuls de <b>S</b>, ce qui evite d'appliquer la fonction aux nombreux zeros stockes et preserve la structure sparse.

Le handle de fonction doit accepter et retourner un vecteur colonne de meme longueur. Toute valeur nulle produite est retiree du resultat sparse.

## 💡 Exemples

```matlab
S = sparse([2 0 -3; 0 4 0]);
R = spfun(@(x) x .* 10, S)

```

```matlab
S = sparse([2 0; 0 4]);
R = spfun(@(x) 1 ./ x, S)

```

## 🔗 Voir aussi

[spones](../sparse/spones.md), [nonzeros](../sparse/nonzeros.md), [find](../elementary_functions/find.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
