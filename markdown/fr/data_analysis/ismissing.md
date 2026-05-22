# ismissing

Vérifier les valeurs manquantes.

## 📝 Syntaxe

- tf = ismissing(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- tf - logique : résultat de 'ismissing'.

## 📄 Description

<b>ismissing</b> renvoie un tableau logique qui est vrai lorsque les éléments de M sont des valeurs <b>manquantes</b>.

Les données manquantes sont définies comme :

<b>NaN</b> pour double ou single

<b>missing</b> pour les tableaux de type string

<b>
        '
        '
      </b> pour les tableaux de caractères

<b>
        '
        '
      </b> pour une cellule de tableaux de caractères

## 💡 Exemple

```matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

```

## 🔗 Voir aussi

[isfinite](../elementary_functions/isfinite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
