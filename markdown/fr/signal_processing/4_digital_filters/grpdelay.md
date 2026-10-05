# grpdelay

Retard de groupe d'un filtre numerique.

## 📝 Syntaxe

- [Gd, W] = grpdelay(B, A)
- [Gd, W] = grpdelay(B, A, N)
- [Gd, F] = grpdelay(B, A, N, Fs)
- [Gd, W] = grpdelay(B, A, N, 'whole')
- [Gd, F] = grpdelay(B, A, N, 'whole', Fs)

## 📥 Argument d'entrée

- B - coefficients du numerateur.
- A - coefficients du denominateur.
- N - nombre de frequences.
- Fs - frequence d'echantillonnage.

## 📤 Argument de sortie

- Gd - retard de groupe.
- W, F - vecteur de frequences.

## 📄 Description


<b>grpdelay</b> calcule le retard de groupe a partir de la derivee frequentielle de la fonction de transfert.

## 💡 Exemple



```matlab

[gd, w] = grpdelay([1 1], 1, 16);

```


## 🔗 Voir aussi

[phasez](../../signal_processing/4_digital_filters/phasez.md), [freqz](../../signal_processing/4_digital_filters/freqz.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
