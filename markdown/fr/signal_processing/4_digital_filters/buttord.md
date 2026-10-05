# buttord

Ordre minimal pour un filtre Butterworth.

## 📝 Syntaxe

- [N, Wn] = buttord(Wp, Ws, Rp, Rs)

## 📥 Argument d'entrée

- Wp - frequence limite de bande passante.
- Ws - frequence limite de bande attenuee.
- Rp - ondulation de bande passante en dB.
- Rs - attenuation de bande attenuee en dB.

## 📤 Argument de sortie

- N - ordre du filtre.
- Wn - frequence de coupure naturelle.

## 📄 Description


<b>buttord</b> estime le plus petit ordre Butterworth satisfaisant les specifications.

## 💡 Exemple



```matlab

[n, wn] = buttord(0.2, 0.3, 1, 40);

```


## 🔗 Voir aussi

[butter](../../signal_processing/4_digital_filters/butter.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
