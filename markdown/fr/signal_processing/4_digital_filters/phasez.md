# phasez

Reponse en phase d'un filtre numerique.

## 📝 Syntaxe

- [P, W] = phasez(B, A)
- [P, W] = phasez(B, A, N)
- [P, F] = phasez(B, A, N, Fs)
- [P, W] = phasez(B, A, N, 'whole')
- [P, F] = phasez(B, A, N, Fs, 'whole')

## 📥 Argument d'entrée

- B - coefficients du numerateur.
- A - coefficients du denominateur.
- N - nombre de frequences.
- Fs - frequence d'echantillonnage.

## 📤 Argument de sortie

- P - phase deroulee.
- W, F - vecteur de frequences.

## 📄 Description

<b>phasez</b> calcule la phase deroulee de la reponse frequentielle retournee par freqz.

## 💡 Exemple

```matlab

[p, w] = phasez([1 1], 1, 16);

```

## 🔗 Voir aussi

[freqz](../../signal_processing/freqz.md), [grpdelay](../../signal_processing/grpdelay.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
