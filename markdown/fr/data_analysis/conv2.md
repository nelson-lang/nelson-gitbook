# conv2

Convolution 2D.

## 📝 Syntaxe

- C = conv2(A, B)
- C = conv2(u, v, A)
- C = conv2(A, B, shape)
- C = conv2(u, v, A, shape)

## 📥 Argument d'entrée

- A - vecteur ou matrice.
- B - vecteur ou matrice.
- u - vecteur ligne ou colonne.
- v - vecteur ligne ou colonne.
- shape - sous-partie de la convolution : 'full' (par défaut : convolution 2D complète), 'same' (partie centrale de la convolution) ou 'valid' (parties de la convolution calculées sans bords remplis de zéros).

## 📤 Argument de sortie

- C - convolution 2D, renvoyée sous forme de vecteur ou de matrice.

## 📄 Description

<b>conv2</b> renvoie la convolution bidimensionnelle.

## 💡 Exemple

```matlab
A = magic(3);
B = magic(4);
R = conv2(A, B, 'same')
```

## 🔗 Voir aussi

[conv](../data_analysis/conv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
