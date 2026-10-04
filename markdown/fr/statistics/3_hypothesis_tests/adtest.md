# adtest

Test d'adequation d'Anderson-Darling.

## 📝 Syntaxe

- h = adtest(x)
- h = adtest(x, Name, Value)
- [h, p] = adtest(...)
- [h, p, adstat, cv] = adtest(...)

## 📄 Description

<b>adtest</b> effectue un test d'adequation d'Anderson-Darling. Les observations <b>NaN</b> sont omises.

Les arguments nom-valeur incluent <b>Distribution</b>, <b>Alpha</b>, <b>MCTol</b> et <b>Asymptotic</b>. Les familles de distributions prises en charge sont norm, exp, ev, logn et weibull. <b>MCTol</b> est accepte pour la compatibilite de syntaxe; cette implementation utilise une approximation deterministe.

## 💡 Exemple

```matlab
x = [1 2 3 4 5];
[h, p, adstat, cv] = adtest(x)
```

## 🔗 Voir aussi

[jbtest](../../statistics/jbtest.md), [lillietest](../../statistics/lillietest.md), [kstest](../../statistics/kstest.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
