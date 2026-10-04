# decimate

Filtre passe-bas puis sous-echantillonne un vecteur.

## 📝 Syntaxe

- Y = decimate(X, Q)
- Y = decimate(X, Q, N)
- Y = decimate(X, Q, N, 'iir')
- Y = decimate(X, Q, N, 'fir')

## 📥 Argument d'entrée

- X - vecteur d'entree non vide.
- Q - facteur entier de decimation strictement superieur a un.
- N - ordre du filtre. L'ordre par defaut vaut 8 en mode IIR et 30 en mode FIR.

## 📤 Argument de sortie

- Y - vecteur decime.

## 📄 Description

<b>decimate</b> applique un filtre passe-bas anti-repliement puis conserve un echantillon sur Q. Le mode par defaut utilise un filtre IIR de Chebyshev type I avec filtrage aller-retour a phase nulle. Le mode <b>'fir'</b> utilise un filtre passe-bas FIR fenetre et compense son delai avant le sous-echantillonnage.

## 💡 Exemple

```matlab

y = decimate(1:20, 2, 4, 'fir');

```

## 🔗 Voir aussi

[downsample](../../signal_processing/downsample.md), [resample](../../signal_processing/resample.md), [upfirdn](../../signal_processing/upfirdn.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
