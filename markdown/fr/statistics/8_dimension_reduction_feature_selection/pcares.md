# pcares

Residus d'une analyse en composantes principales.

## 📝 Syntaxe

- residuals = pcares(X, NumComponents)
- [residuals, reconstructed] = pcares(X, NumComponents)

## 📄 Description

<b>pcares</b> retourne les residus obtenus en conservant le nombre demande de composantes principales de la matrice de donnees X.

La sortie reconstructed est l'approximation de X de dimension reduite, et residuals est egal a X moins reconstructed.

## 💡 Exemple

```matlab
X = [1 2; 3 4; 5 8; 7 11];
[residuals, reconstructed] = pcares(X, 1)
```

## 🔗 Voir aussi

[pca](../../statistics/pca.md), [pcacov](../../statistics/pcacov.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
