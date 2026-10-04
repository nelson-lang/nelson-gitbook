# cluster

Construire des classes depuis un arbre hierarchique.

## 📝 Syntaxe

- T = cluster(Z, 'MaxClust', maxclust)
- T = cluster(Z, 'Cutoff', cutoff, 'Criterion', 'distance')

## 📄 Description

<b>cluster</b> affecte les observations a des classes en coupant un arbre hierarchique.

Cette version prend en charge le critere distance avec MaxClust ou Cutoff.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
T = cluster(Z, 'MaxClust', 2)
```

## 🔗 Voir aussi

[linkage](../../statistics/linkage.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
