# erfinv

Fonction d'erreur inverse

## 📝 Syntaxe

- R = erfinv(X)

## 📥 Argument d'entrée

- X - un scalaire, vecteur, matrice ou tableau multidimensionnel réel en simple ou double précision. Les entrées creuses et complexes ne sont pas prises en charge.

## 📤 Argument de sortie

- R - valeurs de la fonction d'erreur inverse, retournées avec la même taille et la même classe flottante que X.

## 📄 Description

<b>erfinv</b> calcule la fonction d'erreur inverse élément par élément.

La fonction d'erreur inverse est définie par :
$$erfinv(erf(x)) = x$$

Les valeurs hors de l'intervalle [-1, 1] retournent NaN. Les valeurs -1 et 1 retournent respectivement -Inf et Inf.

Pour les expressions de la forme <b>erfinv(1 - x)</b>, utilisez <b>erfcinv(x)</b> pour une meilleure précision quand x est petit.

## 💡 Exemples

Calculer la fonction d'erreur inverse d'un scalaire.

```matlab
R = erfinv(0.25)
```

Évaluer les limites et les valeurs hors domaine.

```matlab
R = erfinv([-2 -1 1 2])
```

Calculer la fonction d'erreur inverse des éléments d'une matrice.

```matlab
M = [0 -0.5; 0.9 -0.2];
R = erfinv(M)
```

Générer des valeurs normalement distribuées à partir de valeurs uniformes dans [-1, 1].

```matlab
x = -1 + 2 * rand(1, 10000);
y = sqrt(2) * erfinv(x);
```

## 🔗 Voir aussi

[erf](../special_functions/erf.md), [erfcinv](../special_functions/erfcinv.md), [erfc](../special_functions/erfc.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
