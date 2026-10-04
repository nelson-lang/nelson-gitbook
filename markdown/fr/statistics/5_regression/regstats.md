# regstats

Statistiques de diagnostic de regression.

## 📝 Syntaxe

- stats = regstats(y, X)
- stats = regstats(y, X, modelspec)
- stats = regstats(y, X, modelspec, StatNames)

## 📄 Description

<b>regstats</b> ajuste un modele de regression lineaire du vecteur reponse <b>y</b> sur la matrice de predicteurs <b>X</b> et retourne des statistiques de diagnostic dans une structure.

Le modele inclut une constante par defaut. Les specifications de modele supportees sont <b>linear</b>, <b>additive</b>, <b>interactions</b>, <b>quadratic</b>, <b>purequadratic</b>, un degre entier positif ou une matrice numerique d'exposants de termes.

<b>StatNames</b> peut etre <b>all</b>, un scalaire texte ou un tableau cellulaire de noms. Les noms supportes incluent <b>Q</b>, <b>R</b>, <b>beta</b>, <b>covb</b>, <b>yhat</b>, <b>r</b>, <b>mse</b>, <b>rsquare</b>, <b>adjrsquare</b>, <b>leverage</b>, <b>hatmat</b>, <b>s2_i</b>, <b>beta_i</b>, <b>standres</b>, <b>studres</b>, <b>dfbetas</b>, <b>dffit</b>, <b>dffits</b>, <b>covratio</b>, <b>cookd</b>, <b>tstat</b>, <b>fstat</b> et <b>dwstat</b>.

## 💡 Exemples

```matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'linear', {'beta', 'rsquare', 'tstat'})
```

```matlab
X = [1 5; 2 4; 3 6; 4 8; 5 7; 6 9];
y = [3.2; 4.1; 5.9; 7.8; 8.4; 10.2];
stats = regstats(y, X, 'interactions', {'yhat', 'r'})
```

## 🔗 Voir aussi

[regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md), [ridge](../../statistics/ridge.md), [lasso](../../statistics/lasso.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
