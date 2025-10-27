# polyint

Intégration polynomiale.

## 📝 Syntaxe

- q = polyint(p, k)
- q = polyint(p)

## 📥 Argument d'entrée

- p - vecteur : coefficients du polynôme
- k - scalaire numérique : constante d'intégration

## 📤 Argument de sortie

- q - vecteur ligne : coefficients du polynôme intégré

## 📄 Description

<b>polyint</b> renvoie l'intégrale du polynôme représenté par les coefficients de <b>p</b> en utilisant une constante d'intégration <b>k</b> (0 par défaut).

## 💡 Exemple

```matlab

p = [10, 0, -10, 0, 0, 10];
v = [10, 0, 10];
k = 3;
q = polyint(conv(p,v),k)
```

## 🔗 Voir aussi

[polyval](../polynomial_functions/polyval.md), [polyvalm](../polynomial_functions/polyvalm.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
