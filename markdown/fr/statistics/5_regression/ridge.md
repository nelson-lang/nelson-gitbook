# ridge

Regression ridge.

## 📝 Syntaxe

- B = ridge(y, X, k)
- B = ridge(y, X, k, scaled)

## 📄 Description

<b>ridge</b> retourne les coefficients de modeles de regression ridge du vecteur reponse <b>y</b> sur la matrice de predicteurs <b>X</b>.

Les predicteurs sont centres et reduits avant l'ajustement. Si <b>scaled</b> vaut <b>0</b>, les coefficients sont ramenes a l'echelle d'origine des predicteurs et une ligne d'interception est incluse.

## 💡 Exemple

```matlab
y = [1; 2.1; 2.9; 4.2; 5.1; 5.9];
X = [(1:6)' [2; 1; 4; 3; 7; 6]];
B = ridge(y, X, [0 0.5 2])
```

## 🔗 Voir aussi

[regress](../../statistics/regress.md), [robustfit](../../statistics/robustfit.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
