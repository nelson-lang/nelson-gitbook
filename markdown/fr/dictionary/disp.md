# disp

Affiche un dictionnaire.

## 📝 Syntaxe

- disp(d)

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire.

## 📄 Description


<b>disp(d)</b> affiche un resume du dictionnaire <b>d</b>, avec les types des cles et des valeurs, le nombre d'entrees et les paires cle-valeur visibles. 

Les dictionnaires non configures et les dictionnaires configures sans entree sont affiches avec des messages de resume dedies.

## 💡 Exemple



```matlab
d = dictionary(["one", "two"], [1, 2]);
disp(d)
```


## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [disp](../display_format/disp.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | affichage classdef de dictionary |

<!--
## 👤 Auteur

Allan CORNET
-->
