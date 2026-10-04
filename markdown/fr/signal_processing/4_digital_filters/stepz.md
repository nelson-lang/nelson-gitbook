# stepz

Réponse indicielle d'un filtre numérique.

## 📝 Syntaxe

- [S, T] = stepz(B, A)
- [S, T] = stepz(B, A, N)

## 📥 Argument d'entrée

- B - coefficients du numérateur.
- A - coefficients du dénominateur.
- N - nombre d'échantillons.

## 📤 Argument de sortie

- S - réponse indicielle.
- T - vecteur d'échantillons ou de temps.

## 📄 Description

<b>stepz</b> calcule la somme cumulée de la réponse impulsionnelle.

## 💡 Exemple

```matlab

[s, t] = stepz([1 1], 1, 4);

```

## 🔗 Voir aussi

[impz](../../signal_processing/impz.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
