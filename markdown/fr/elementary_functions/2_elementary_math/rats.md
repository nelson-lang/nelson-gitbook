# rats

Affichage rationnel.

## 📝 Syntaxe

- S = rats(X)
- S = rats(X, len)

## 📥 Argument d'entrée

- X - Tableau d'entrée : réel ou complexe, scalaire, vecteur ou matrice (single ou double).
- len - Largeur de champ : scalaire. La valeur par défaut est <b>13</b>.

## 📤 Argument de sortie

- S - Tableau de caractères des approximations rationnelles.

## 📄 Description


<b>S = rats(X)</b> utilise <b>rat</b> pour afficher les approximations rationnelles des éléments de <b>X</b> dans un champ de largeur fixe. 

La longueur de chaîne de chaque élément est <b>len + 1</b> afin de tenir compte du caractère <b>'/'</b> inséré entre le numérateur et le dénominateur. Des astérisques sont utilisées pour les éléments qui ne peuvent pas être affichés dans l'espace alloué.

## 💡 Exemple



```matlab
S = rats(1 ./ (1:5))
```


## 🔗 Voir aussi

[rat](../../elementary_functions/2_elementary_math/rat.md), [format](../../display_format/format.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
