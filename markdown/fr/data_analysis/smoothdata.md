# smoothdata

Lisse des donnees bruitees.

## 📝 Syntaxe

- B = smoothdata(A)
- B = smoothdata(A, method)
- B = smoothdata(A, method, window)
- B = smoothdata(A, dim)
- B = smoothdata(A, dim, method)
- B = smoothdata(A, dim, method, window)
- B = smoothdata(\_\_, nanflag)
- B = smoothdata(\_\_, Name, Value)
- [B, window] = smoothdata(\_\_)

## 📥 Argument d'entrée

- A - vecteur ou matrice d'entree : numerique ou logique.
- method - un vecteur de caracteres ou une chaine : methode de lissage. Voir la description pour la liste des methodes supportees.
- window - un scalaire positif ou un vecteur a deux elements <b>[arriere avant]</b> : longueur de la fenetre glissante.
- dim - dimension le long de laquelle operer : entier positif scalaire.
- nanflag - un vecteur de caracteres ou une chaine : <b>'omitnan'</b> (par defaut) ou <b>'includenan'</b>.
- Name, Value - paires nom/valeur : <b>'SamplePoints'</b>, <b>'SmoothingFactor'</b>, <b>'Degree'</b>.

## 📤 Argument de sortie

- B - donnees lissees.
- window - longueur de la fenetre glissante utilisee pour le lissage.

## 📄 Description

<b>smoothdata</b> lisse des donnees bruitees dans un vecteur ou dans les colonnes d'une matrice.

Par defaut, <b>smoothdata</b> opere le long de la premiere dimension non singleton avec la methode <b>'movmean'</b> et une longueur de fenetre heuristique choisie a partir des donnees.

Les valeurs supportees de <b>method</b> sont :

<b>'movmean'</b> : moyenne glissante sur chaque fenetre (par defaut).

<b>'movmedian'</b> : mediane glissante sur chaque fenetre.

<b>'gaussian'</b> : moyenne ponderee glissante avec des poids gaussiens.

<b>'lowess'</b> : regression locale avec un polynome de degre un.

<b>'loess'</b> : regression locale avec un polynome de degre deux.

<b>'sgolay'</b> : filtre polynomial de Savitzky-Golay (utiliser <b>'Degree'</b> pour fixer le degre du polynome, 2 par defaut).

Le drapeau <b>'omitnan'</b> (par defaut) ignore les valeurs <b>NaN</b> dans chaque fenetre, tandis que <b>'includenan'</b> les propage.

<b>'SmoothingFactor'</b> est un scalaire entre 0 et 1 qui regle la longueur de fenetre choisie automatiquement ; des valeurs plus grandes lissent davantage.

<b>'SamplePoints'</b> est un vecteur de coordonnees d'echantillonnage uniformement espacees ; la fenetre est alors exprimee dans les unites de ces coordonnees.

Les methodes robustes <b>'rlowess'</b> et <b>'rloess'</b> ne sont pas encore supportees.

## 💡 Exemples

moyenne glissante

```matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'movmean', 3)
```

lissage gaussien

```matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'gaussian', 3)
```

fenetre choisie automatiquement

```matlab
A = [1 2 10 4 5];
[B, window] = smoothdata(A)
```

## 🔗 Voir aussi

[movmean](../data_analysis/movmean.md), [movmedian](../data_analysis/movmedian.md), [fillmissing](../data_analysis/fillmissing.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
