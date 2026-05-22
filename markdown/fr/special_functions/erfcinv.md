# erfcinv

Fonction d'erreur complémentaire inverse

## 📝 Syntaxe

- R = erfcinv(X)

## 📥 Argument d'entrée

- X - un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

## 📤 Argument de sortie

- R - valeurs de la fonction d'erreur complémentaire inverse, retournées avec la même taille et la même classe flottante que X.

## 📄 Description

<b>erfcinv</b> calcule la fonction d'erreur complémentaire inverse élément par élément.

La fonction d'erreur complémentaire inverse est définie par :
$$erfc(erfcinv(x)) = x$$

Les valeurs hors de l'intervalle [0, 2] retournent NaN. Les valeurs 0 et 2 retournent respectivement Inf et -Inf.

Utilisez <b>erfcinv</b> au lieu de <b>erfinv(1 - x)</b> quand x est proche de zéro afin d'éviter les erreurs d'arrondi.

## 💡 Exemples

Calculer la fonction d'erreur complémentaire inverse d'un scalaire.

```matlab
R = erfcinv(0.3)
```

Évaluer les limites et les valeurs hors domaine.

```matlab
V = [-10 0 0.5 1.3 2 Inf];
R = erfcinv(V)
```

Calculer la fonction d'erreur complémentaire inverse des éléments d'une matrice.

```matlab
M = [0.1 1.2; 1 0.9];
R = erfcinv(M)
```

Éviter l'arrondi de erfinv(1 - x) pour un x très petit.

```matlab
x = 1e-100;
A = erfinv(1 - x);
B = erfcinv(x);
```

## 🔗 Voir aussi

[erfc](../special_functions/erfc.md), [erfinv](../special_functions/erfinv.md), [erf](../special_functions/erf.md), [erfcx](../special_functions/erfcx.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
