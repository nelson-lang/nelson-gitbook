# impz

Réponse impulsionnelle d'un filtre numérique.

## 📝 Syntaxe

- [H, T] = impz(B, A)
- [H, T] = impz(B, A, N)
- [H, T] = impz(B, A, N, Fs)

## 📥 Argument d'entrée

- B - coefficients du numérateur.
- A - coefficients du dénominateur.
- N - nombre d'échantillons.
- Fs - fréquence d'échantillonnage.

## 📤 Argument de sortie

- H - réponse impulsionnelle.
- T - vecteur d'échantillons ou de temps.

## 📄 Description

<b>impz</b> filtre une impulsion unité avec le filtre défini par B et A.

## 💡 Exemple

```matlab

[h, t] = impz([1 1], 1, 4);

```

## 🔗 Voir aussi

[stepz](../../signal_processing/stepz.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
