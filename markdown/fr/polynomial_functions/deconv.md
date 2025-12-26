# deconv

Déconvolution et division polynomiale.

## 📝 Syntaxe

- [q, r] = deconv(b, a)

## 📥 Argument d'entrée

- a - vecteurs ligne ou colonne
- b - vecteurs ligne ou colonne

## 📤 Argument de sortie

- q - quotient : vecteur ligne ou colonne
- r - reste : vecteur ligne ou colonne

## 📄 Description

<b>[q, r] = deconv(b, a)</b> effectue la déconvolution du vecteur<b>b</b> par le vecteur <b>a</b> en utilisant la division longue.

Elle renvoie le quotient <b>q</b> et le reste <b>r</b> tels que <b>b = conv(a, q) + r</b>.

Dans le contexte des coefficients polynomiaux, la déconvolution des vecteurs<b>b</b> et <b>a</b> revient à diviser le polynôme représenté par<b>b</b> par celui représenté par <b>a</b>.

## 💡 Exemple

```matlab

b = [1; 2; -1];  % Dividend (x^2 + 2x - 1)
a = [1; 1];      % Divisor (x + 1)

[q, r] = deconv(b, a)
```

## 🔗 Voir aussi

[conv](../data_analysis/conv.md), [poly](../polynomial_functions/poly.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.3.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
