# pcacov

Analyse en composantes principales sur une matrice de covariance.

## 📝 Syntaxe

- coeff = pcacov(V)
- [coeff, latent] = pcacov(V)
- [coeff, latent, explained] = pcacov(V)

## 📄 Description

<b>pcacov</b> effectue une analyse en composantes principales sur une matrice de covariance carree.

Les coefficients sont retournes en colonnes, ordonnees par variance decroissante. Le vecteur latent contient les valeurs propres de V, et explained contient le pourcentage de variance totale represente par chaque composante.

## 💡 Exemple

```matlab
V = [4 2; 2 3];
[coeff, latent, explained] = pcacov(V)
```

## 🔗 Voir aussi

[pca](../../statistics/pca.md), [cov](../../statistics/cov.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
