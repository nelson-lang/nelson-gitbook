# erfc

Fonction d'erreur complémentaire

## 📝 Syntaxe

- R = erfc(X)

## 📥 Argument d'entrée

- X - un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

## 📤 Argument de sortie

- R - valeurs de la fonction d'erreur complémentaire, retournées avec la même taille et la même classe flottante que X.

## 📄 Description

<b>erfc</b> calcule la fonction d'erreur complémentaire élément par élément.

La fonction d'erreur complémentaire est définie par :
$$erfc(x) = \frac{2}{\sqrt{\pi}}\int_x^{\infty} e^{-t^2}\,dt$$

Elle est liée à la fonction d'erreur par :
$$erfc(x) = 1 - erf(x)$$

Utilisez <b>erfc</b> au lieu de <b>1 - erf(x)</b> quand <b>erf(x)</b> est proche de 1, car la soustraction directe peut perdre des chiffres significatifs.

Utilisez <b>erfcx</b> au lieu de <b>exp(x^2) \* erfc(x)</b> pour les grandes valeurs positives de X.

## 💡 Exemples

Calculer la fonction d'erreur complémentaire d'un scalaire.

```matlab
R = erfc(0.35)
```

Calculer la fonction d'erreur complémentaire des éléments d'un vecteur.

```matlab
V = [-0.5 0 1 0.72];
R = erfc(V)
```

Calculer la fonction d'erreur complémentaire des éléments d'une matrice.

```matlab
M = [0.29 -0.11; 3.1 -2.9];
R = erfc(M)
```

Comparer la soustraction directe avec erfc pour une grande entrée positive.

```matlab
A = 1 - erf(10);
B = erfc(10);
```

## 🔗 Voir aussi

[erf](../special_functions/erf.md), [erfcinv](../special_functions/erfcinv.md), [erfcx](../special_functions/erfcx.md), [erfinv](../special_functions/erfinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
