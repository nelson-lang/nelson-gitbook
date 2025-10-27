# fftw

fonction pour déterminer l'algorithme FFT.

## 📝 Syntaxe

- m = fftw('planner')
- fftw('planner', m)
- w = fftw('dwisdom')
- fftw('dwisdom', w)
- w = fftw('swisdom')
- fftw('swisdom', w)

## 📥 Argument d'entrée

- m - méthode pour définir les paramètres de la transformée : 'estimate', 'measure', 'patient', 'exhaustive' ou 'hybrid'.
- w - une chaîne : données de wisdom.

## 📤 Argument de sortie

- m - méthode : 'estimate', 'measure', 'patient', 'exhaustive' ou 'hybrid'.
- w - une chaîne : données de wisdom.

## 📄 Description

La méthode par défaut est 'estimate'.

## 💡 Exemple

```matlab
w = fftw('dwisdom')
M = rand(1000);
tic; fft(M); toc
fftw('dwisdom', w)
tic; fft(M); toc
```

## 🔗 Voir aussi

[fft](../fftw/fft.md), [ifft](../fftw/ifft.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
