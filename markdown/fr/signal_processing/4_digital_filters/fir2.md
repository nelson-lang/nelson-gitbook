# fir2

Conception de filtre FIR par echantillonnage frequentiel.

## 📝 Syntaxe

- B = fir2(N, F, M)
- B = fir2(N, F, M, window)

## 📥 Argument d'entrée

- N - ordre du filtre.
- F - points de frequence normalises.
- M - amplitudes desirees.
- window - vecteur de fenetre.

## 📤 Argument de sortie

- B - coefficients FIR du numerateur.

## 📄 Description

<b>fir2</b> concoit un filtre FIR a phase lineaire depuis une reponse frequentielle arbitraire.

## 💡 Exemple

```matlab

b = fir2(16, [0 0.4 0.6 1], [1 1 0 0]);

```

## 🔗 Voir aussi

[fir1](../../signal_processing/fir1.md), [freqz](../../signal_processing/freqz.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
