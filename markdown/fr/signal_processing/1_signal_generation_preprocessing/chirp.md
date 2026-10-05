# chirp

Signal cosinus a frequence balayee.

## 📝 Syntaxe

- Y = chirp(T)
- Y = chirp(T, F0, T1, F1)
- Y = chirp(T, F0, T1, F1, method)
- Y = chirp(T, F0, T1, F1, method, phi)

## 📥 Argument d'entrée

- T - valeurs de temps.
- F0 - frequence initiale.
- T1 - temps de reference.
- F1 - frequence a T1.
- method - 'linear', 'quadratic' ou 'logarithmic'.
- phi - phase initiale en degres.

## 📤 Argument de sortie

- Y - signal genere.

## 📄 Description


<b>chirp</b> genere un cosinus dont la frequence varie dans le temps.

## 💡 Exemple



```matlab

y = chirp(0:0.01:1, 0, 1, 10);

```


## 🔗 Voir aussi

[sawtooth](../../signal_processing/1_signal_generation_preprocessing/sawtooth.md), [square](../../signal_processing/1_signal_generation_preprocessing/square.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
