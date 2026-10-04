# hilbert

Signal analytique par transformation de Hilbert.

## 📝 Syntaxe

- Y = hilbert(X)
- Y = hilbert(X, N)

## 📥 Argument d'entrée

- X - signal ou matrice d'entree.
- N - longueur de FFT sur la premiere dimension non singleton.

## 📤 Argument de sortie

- Y - signal analytique avec les composantes de frequence negative supprimees.

## 📄 Description

<b>hilbert</b> construit le signal analytique le long de la premiere dimension non singleton. Pour les matrices, chaque colonne est transformee independamment.

## 💡 Exemple

```matlab

y = hilbert([1 0 0 0]);

```

## 🔗 Voir aussi

[fft](../../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
