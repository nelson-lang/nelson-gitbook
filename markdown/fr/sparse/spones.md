# spones

Remplace les éléments non nuls d'une matrice sparse par des uns.

## 📝 Syntaxe

- s = spones(S)

## 📥 Argument d'entrée

- S - Matrice sparse ou 2D.

## 📤 Argument de sortie

- S - une matrice sparse.

## 📄 Description

<b>s = spones(S)</b> retourne une matrice <b>s</b> avec la même structure de sparsité que <b>S</b>, mais avec des uns dans les positions non nulles.

## 💡 Exemple

```matlab
S = sparse([1,0;3,4]);
R = spones(S)
```

## 🔗 Voir aussi

[speye](../sparse/speye.md), [sparse](../sparse/sparse.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
