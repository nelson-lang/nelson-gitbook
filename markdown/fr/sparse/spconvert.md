# spconvert

Convertit des donnees indexees en matrice sparse.

## 📝 Syntaxe

- S = spconvert(D)

## 📥 Argument d'entrée

- D - une matrice pleine double m-par-3 ou m-par-4.

## 📤 Argument de sortie

- S - une matrice sparse double ou double complexe.

## 📄 Description

<b>spconvert</b> construit une matrice sparse a partir de lignes <b>[i j v]</b>. Avec quatre colonnes, les lignes sont interpretees comme <b>[i j real imag]</b>.

## 💡 Exemple

```matlab
D = [1 1 10; 2 3 20; 3 2 30];
S = spconvert(D)
```

## 🔗 Voir aussi

[sparse](../sparse/sparse.md), [IJV](../sparse/IJV.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
