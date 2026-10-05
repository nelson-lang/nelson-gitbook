# kaiserord

Parametres de conception FIR par fenetre de Kaiser.

## 📝 Syntaxe

- [N, Wn, beta, ftype] = kaiserord(F, A, DEV)
- [N, Wn, beta, ftype] = kaiserord(F, A, DEV, Fs)

## 📥 Argument d'entrée

- F - frequences limites de bandes.
- A - amplitudes desirees.
- DEV - ecarts autorises.
- Fs - frequence d'echantillonnage.

## 📤 Argument de sortie

- N - ordre estime du filtre.
- Wn - frequence de coupure.
- beta - parametre beta de Kaiser.
- ftype - chaine de type de filtre.

## 📄 Description


<b>kaiserord</b> estime des parametres FIR utilisables avec <b>fir1</b> et <b>kaiser</b>.

## 💡 Exemple



```matlab

[n, wn, beta, ftype] = kaiserord([0.2 0.3], [1 0], [0.01 0.001]);

```


## 🔗 Voir aussi

[kaiser](../../signal_processing/5_spectral_analysis/kaiser.md), [fir1](../../signal_processing/4_digital_filters/fir1.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
