# findpeaks

localiser les maxima locaux (pics) dans un signal 1-D.

## 📝 Syntaxe

- [pks, locs, widths, prominences] = findpeaks(Y)
- [pks, locs, widths, prominences] = findpeaks(Y, Fs, ...)
- [pks, locs, widths, prominences] = findpeaks(Y, X, ...)

## 📥 Argument d'entrée

- Y - vecteur : signal d'entrée (ligne ou colonne)
- Fs - scalaire : fréquence d'échantillonnage (optionnel). Si fourni, les emplacements des pics sont retournés en unités de temps.
- X - vecteur : valeurs x correspondant à Y (optionnel). Doit avoir la même longueur que Y.
- Nom/Valeur paires - options nom/valeur :

- <b>MinPeakHeight</b>: scalaire numérique, défaut -Inf
- <b>MinPeakProminence</b>: scalaire numérique >= 0, défaut 0
- <b>Threshold</b>: scalaire numérique >= 0 (distance verticale minimale par rapport à la ligne de base voisine), défaut 0
- <b>MinPeakWidth</b>: scalaire numérique >= 0, défaut 0
- <b>MaxPeakWidth</b>: scalaire numérique >= 0, défaut Inf
- <b>MinPeakDistance</b>: scalaire numérique >= 0 (dans les mêmes unités que X), défaut 0
- <b>WidthReference</b>: 'halfprom' (par défaut) ou 'halfheight'
- <b>SortStr</b>: 'none' (par défaut), 'ascend' ou 'descend'
- <b>NPeaks</b>: entier positif, nombre maximum de pics à retourner (par défaut Inf)
- <b>Annotate</b>: 'peaks' (par défaut) ou 'extents' (contrôle l'annotation du tracé)

## 📤 Argument de sortie

- pks - amplitudes des pics
- locs - emplacements des pics (valeurs x ou indices)
- widths - largeurs des pics mesurées à la référence de largeur spécifiée
- prominences - prominence de chaque pic

## 📄 Description

<b>findpeaks</b> localise les maxima locaux (pics) dans un signal unidimensionnel Y.

L'algorithme détecte les pics candidats, les filtre par hauteur et seuil, calcule la prominence et les largeurs, impose une séparation minimale, et retourne les sorties demandées.

Lorsqu'aucune sortie n'est demandée, la fonction trace le signal et marque les pics détectés.

## 💡 Exemples

Trouver des pics dans un signal simple

```matlab

t = 0:0.01:2*pi;
y = sin(5*t) + 0.2*randn(size(t));
[pks, locs] = findpeaks(y, t, 'MinPeakProminence', 0.3);

```

Retourner les largeurs et les prominences

```matlab

[pks, locs, widths, proms] = findpeaks(y, 'MinPeakHeight', 0);

```

## 🔗 Voir aussi

[max](../../data_analysis/max.md).

## 🕔 Historique

| Version | 📄 Description                               |
| ------- | -------------------------------------------- |
| 1.15.0  | version initiale                             |
| 2.0.0   | exemples de documentation executables en CLI |

<!--
## 👤 Auteur

Allan CORNET
-->
