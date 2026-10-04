# jbtest

Test de normalite de Jarque-Bera.

## 📝 Syntaxe

- h = jbtest(x)
- h = jbtest(x, alpha)
- h = jbtest(x, alpha, mctol)
- [h, p, jbstat, critval] = jbtest(...)

## 📄 Description

<b>jbtest</b> effectue un test de normalite de Jarque-Bera avec moyenne et variance inconnues. Les observations <b>NaN</b> sont omises.

L'argument optionnel <b>alpha</b> definit le niveau de signification. L'argument optionnel <b>mctol</b> est accepte pour la compatibilite de syntaxe; cette implementation utilise l'approximation deterministe du chi-carre.

## 💡 Exemple

```matlab
x = [1 2 3 4 5];
[h, p, jbstat, critval] = jbtest(x)
```

## 🔗 Voir aussi

[chi2gof](../../statistics/chi2gof.md), [kstest](../../statistics/kstest.md), [normcdf](../../statistics/normcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
