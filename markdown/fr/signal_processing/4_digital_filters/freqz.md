# freqz

Réponse fréquentielle d'un filtre numérique.

## 📝 Syntaxe

- [H, W] = freqz(B, A)
- [H, W] = freqz(B, A, N)
- [H, W] = freqz(B, A, N, 'whole')
- [H, F] = freqz(B, A, N, Fs)

## 📥 Argument d'entrée

- B - coefficients du numérateur.
- A - coefficients du dénominateur.
- N - nombre de fréquences ou vecteur de fréquences.
- Fs - fréquence d'échantillonnage.

## 📤 Argument de sortie

- H - réponse fréquentielle complexe.
- W - fréquences en radians par échantillon.
- F - fréquences lorsque Fs est fourni.

## 📄 Description

<b>freqz</b> évalue la fonction de transfert définie par B et A sur le cercle unité.

## 💡 Exemple

```matlab

[h, w] = freqz([1 1], 1, 8);

```

## 🔗 Voir aussi

[phasez](../../signal_processing/phasez.md), [grpdelay](../../signal_processing/grpdelay.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
