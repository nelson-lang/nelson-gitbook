# squareform

Convertir entre vecteur de distances condense et matrice carree de distances.

## 📝 Syntaxe

- Z = squareform(D)
- D = squareform(Z)
- Y = squareform(X, direction)

## 📥 Argument d'entrée

- D - vecteur de distances avec n\*(n-1)/2 elements.
- Z - matrice de distances carree et symetrique.
- direction - 'tomatrix' ou 'tovector'.

## 📄 Description

<b>squareform</b> convertit un vecteur de distances condense en matrice symetrique carree, ou l'inverse.

## 💡 Exemple

```matlab
D = [1 2 3];
Z = squareform(D)
D2 = squareform(Z)
```

## 🔗 Voir aussi

[pdist](../../statistics/pdist.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
