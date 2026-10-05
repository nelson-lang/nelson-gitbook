# lillietest

Test d'adequation de Lilliefors.

## 📝 Syntaxe

- h = lillietest(x)
- h = lillietest(x, Name, Value)
- [h, p] = lillietest(...)
- [h, p, kstat, critval] = lillietest(...)

## 📄 Description


<b>lillietest</b> effectue un test d'adequation bilateral de Lilliefors avec parametres estimes a partir de l'echantillon. Les observations <b>NaN</b> sont omises. 

Les arguments nom-valeur incluent <b>Alpha</b>, <b>Distribution</b> et <b>MCTol</b>. Les distributions prises en charge sont normal, exponential et extreme value. <b>MCTol</b> est accepte pour la compatibilite de syntaxe; cette implementation utilise une approximation deterministe.

## 💡 Exemple



```matlab
x = [-1 -0.5 0 0.5 1];
[h, p, kstat, critval] = lillietest(x)
```


## 🔗 Voir aussi

[jbtest](../../statistics/3_hypothesis_tests/jbtest.md), [kstest](../../statistics/3_hypothesis_tests/kstest.md), [chi2gof](../../statistics/3_hypothesis_tests/chi2gof.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
