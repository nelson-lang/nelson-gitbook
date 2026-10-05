# fir1

Conception de filtre FIR par fenêtrage.

## 📝 Syntaxe

- B = fir1(N, Wn)
- B = fir1(N, Wn, type)
- B = fir1(N, Wn, window)

## 📥 Argument d'entrée

- N - ordre du filtre.
- Wn - fréquence de coupure normalisée ou paire de fréquences.
- type - type de filtre, par exemple 'low', 'high', 'bandpass' ou 'stop'.
- window - fenêtre de longueur N + 1.

## 📤 Argument de sortie

- B - coefficients FIR du numérateur.

## 📄 Description


<b>fir1</b> conçoit un filtre FIR à phase linéaire par fenêtrage d'une réponse impulsionnelle idéale.

## 💡 Exemple



```matlab

b = fir1(16, 0.25);

```


## 🔗 Voir aussi

[freqz](../../signal_processing/4_digital_filters/freqz.md), [kaiser](../../signal_processing/5_spectral_analysis/kaiser.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
