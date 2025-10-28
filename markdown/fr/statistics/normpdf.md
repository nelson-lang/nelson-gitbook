# normpdf

Densité de probabilité normale

## 📝 Syntaxe

- y = normpdf(x)
- y = normpdf(x, mu)
- y = normpdf(x, mu, sigma)

## 📥 Argument d'entrée

- x - valeur scalaire ou tableau : valeurs auxquelles évaluer la densité.
- mu - valeur scalaire, 0 (par défaut) ou tableau : moyenne.
- sigma - valeur scalaire positive, 1 (par défaut) ou tableau de valeurs positives : écart-type.

## 📤 Argument de sortie

- y - valeur scalaire ou tableau : valeurs de la densité.

## 📄 Description

<b>normpdf</b> calcule la fonction de densité de probabilité de la loi normale (gaussienne).

La formule générale pour la densité de la loi normale est :
$$f(x|\mu,\sigma^2) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$

où
$$\mu$$

est la moyenne et
$$\sigma^2$$

est la variance.

Pour la loi normale centrée-réduite (
$$\mu = 0, \sigma = 1$$

) :
$$\phi(x) = \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$$

## 📚 Bibliographie

Evans, M., N. Hastings, and B. Peacock. Statistical Distributions. 2nd ed. Hoboken, NJ: John Wiley and Sons, Inc., 1993.

## 💡 Exemple

```matlab
x = [-0.2, -0.1, 0, 0.1, 0.2];
    R = normpdf(x);

    x = [-0.2, -0.1, 0, 0.1, 0.2];
    R = normpdf(x, 2, 1);

    R = normpdf(0, [-0.2, -0.1, 0, 0.1, 0.2], 1);
```

## 🔗 Voir aussi

[mean](../statistics/mean.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
