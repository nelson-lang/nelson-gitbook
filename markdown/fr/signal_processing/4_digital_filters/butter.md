# butter

Conception de filtre numérique de Butterworth.

## 📝 Syntaxe

- [B, A] = butter(N, Wn)
- [B, A] = butter(N, Wn, type)
- [Z, P, K] = butter(...)

## 📥 Argument d'entrée

- N - ordre du filtre.
- Wn - fréquence de coupure normalisée.
- type - type optionnel de filtre.

## 📤 Argument de sortie

- B - coefficients du numérateur.
- A - coefficients du dénominateur.
- Z, P, K - représentation zéros-pôles-gain.

## 📄 Description


<b>butter</b> conçoit un filtre numérique IIR de Butterworth.

## 💡 Exemple



```matlab

[b, a] = butter(2, 0.4);
[h, w] = freqz(b, a, 64);

```


## 🔗 Voir aussi

[buttord](../../signal_processing/4_digital_filters/buttord.md), [freqz](../../signal_processing/4_digital_filters/freqz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
