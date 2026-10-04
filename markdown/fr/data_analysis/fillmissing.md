# fillmissing

Remplit les valeurs manquantes.

## 📝 Syntaxe

- B = fillmissing(A, method)
- B = fillmissing(A, 'constant', value)
- B = fillmissing(A, movmethod, window)
- B = fillmissing(A, fillfun, gapwindow)
- B = fillmissing(A, 'knn', k)
- B = fillmissing(A, method, dim)
- B = fillmissing(A, 'constant', value, dim)
- B = fillmissing(..., Name, Value)
- [B, TF] = fillmissing(...)

## 📥 Argument d'entrée

- A - Tableau, table ou timetable d'entrée.
- method - Méthode de remplissage : 'constant', 'previous', 'next', 'nearest', 'linear', 'spline', 'pchip', 'makima', 'mean', 'median', 'mode', 'movmean', 'movmedian', 'knn' ou un handle de fonction.
- dim - Dimension de travail : entier positif (par défaut : première dimension non singleton). Chaque tranche de A selon dim est remplie indépendamment. Les variables d'une table sont toujours remplies selon leurs lignes.
- window - Fenêtre des méthodes 'movmean' et 'movmedian' : un scalaire w (fenêtre [t - w/2, t + w/2) centrée sur l'élément manquant) ou un vecteur à deux éléments [b a] (fenêtre [t - b, t + a]), en unités des points d'échantillonnage : une durée pour des points d'échantillonnage datetime ou duration. Un scalaire doit être fini et positif, les éléments de [b a] finis et positifs ou nuls.
- fillfun, gapwindow - Handle de fonction appelé sous la forme fillfun(xs, ts, tq) pour chaque trou d'éléments manquants consécutifs aux points d'échantillonnage tq. xs et ts sont les valeurs et points d'échantillonnage de la fenêtre [t1 - gapwindow/2, t2 + gapwindow/2] (ou [t1 - b, t2 + a]) autour du trou [t1, t2], trou exclu. fillfun doit renvoyer une valeur par élément de tq.
- k - Nombre de plus proches voisins de la méthode 'knn' : entier positif (par défaut : 1).
- 'Distance' - Distance de la méthode 'knn' : 'euclidean' (par défaut), 'seuclidean' (chaque différence divisée par l'écart type de sa coordonnée) ou un handle de fonction d = fun(x, m), où x contient les deux lignes à comparer et m leurs éléments manquants ; d doit être un scalaire réel, NaN pour écarter le voisin.
- 'EndValues' - Méthode de remplissage des valeurs manquantes de début et de fin : 'extrap' (par défaut, utilise method), 'previous', 'next', 'nearest', 'none', un scalaire ou un vecteur avec une valeur par tranche.
- 'MaxGap' - Taille maximale des trous à remplir : scalaire positif, une durée pour des points d'échantillonnage datetime ou duration (et pour les timetables). La taille d'un trou est la distance entre les valeurs non manquantes qui l'entourent, mesurée selon les points d'échantillonnage.
- 'SamplePoints' - Points d'échantillonnage (abscisses des données) : vecteur de valeurs double, single, datetime ou duration avec un élément par élément selon dim, finies, triées par ordre croissant et sans doublon. Non pris en charge pour les timetables, dont les temps des lignes sont les points d'échantillonnage.
- 'MissingLocations' - Tableau logique de la taille de A (pour une table : de sa hauteur et de sa largeur, ou une table) indiquant les éléments à remplir ; il remplace la détection standard des valeurs manquantes. Avec des données entières ou logiques, 'linear', 'spline', 'pchip', 'makima', 'movmean' et 'movmedian' ne sont pas pris en charge.
- 'DataVariables' - Variables de la table à traiter.

## 📤 Argument de sortie

- B - Donnees avec valeurs manquantes remplies.
- TF - Tableau logique, vrai pour les éléments remplis.

## 📄 Description

<b>fillmissing</b> remplace les valeurs manquantes avec la méthode indiquée, selon la dimension de travail dim.

'previous' et 'next' recopient la valeur non manquante précédente ou suivante, 'nearest' la plus proche (la suivante en cas d'égalité). 'linear', 'spline', 'pchip' et 'makima' interpolent les valeurs non manquantes de la tranche et extrapolent à ses extrémités ; elles nécessitent au moins deux valeurs non manquantes. 'movmean' et 'movmedian' utilisent la moyenne ou la médiane des valeurs non manquantes de la fenêtre.

'knn' compare des observations entières : les lignes d'une matrice (dim = 1), ses colonnes (dim = 2) ou les lignes des variables de données d'une table. Chaque valeur manquante prend la moyenne des valeurs des k observations les plus proches qui en possèdent une, la distance étant mesurée sur les coordonnées non manquantes de l'observation ; une observation à laquelle il manque l'une d'elles n'est pas un voisin, et les égalités conservent l'ordre des observations. 'knn' accepte les matrices double et single ('Distance' sous forme de handle de fonction accepte aussi les autres données numériques) et ne prend pas en charge 'EndValues', 'MaxGap' et 'SamplePoints'.

Une constante de remplissage ou une valeur numérique de 'EndValues' est un scalaire ou un vecteur avec une valeur par tranche (par variable de données pour une table).

Pour une table ou une timetable, dim n'est pas pris en charge : chaque variable de données est remplie selon ses lignes, les temps des lignes d'une timetable étant les points d'échantillonnage. TF a une colonne par variable de B, vraie pour les lignes où la variable a été remplie.

'EndValues' et 'MaxGap' s'appliquent à toutes les autres méthodes. TF est faux pour un élément rempli avec une valeur manquante.

Les méthodes 'mean', 'median' et 'mode' remplacent chaque valeur manquante par la moyenne, la médiane ou le mode des valeurs non manquantes de sa tranche selon la dimension de travail. Elles acceptent les données numériques et logiques. Une tranche sans valeur non manquante reste manquante (sauf si 'EndValues' est une constante).

## 💡 Exemples

```matlab
T = table([1; NaN; 3], 'VariableNames', {'A'});
R = fillmissing(T, 'constant', 0)
```

Remplissage par la moyenne, la médiane ou le mode des valeurs non manquantes

```matlab
A = [NaN 1 1 2 NaN 6];
B1 = fillmissing(A, 'mean')
B2 = fillmissing(A, 'median')
B3 = fillmissing(A, 'mode', 'EndValues', 'none')
```

Remplissage selon les lignes d'une matrice

```matlab
A = [1 NaN 3 NaN; NaN 5 NaN 8];
B1 = fillmissing(A, 'linear', 2)
B2 = fillmissing(A, 'previous', 2)
B3 = fillmissing(A, 'movmean', 3, 2)
```

Remplissage à partir des lignes les plus proches

```matlab
A = [1 3 9 3; -5 1 7 2; -1 1 7 NaN; 12 1 9 1];
F1 = fillmissing(A, 'knn')
F2 = fillmissing(A, 'knn', 2)
F3 = fillmissing(A, 'knn', 'Distance', @(x, m) sum(abs(x(1, :) - x(2, :)), 'omitnan'))
```

Timetable et points d'échantillonnage de type duration

```matlab
TT = timetable(seconds([0; 1; 3]), [1; NaN; 3], [NaN; 5; 6]);
R = fillmissing(TT, 'linear')
F = fillmissing([1 NaN 3 NaN NaN 9], 'linear', 'SamplePoints', hours(0:5), 'MaxGap', hours(2))
```

## 🔗 Voir aussi

[rmmissing](../data_analysis/rmmissing.md), [standardizeMissing](../data_analysis/standardizeMissing.md).

## 🕔 Historique

| Version | 📄 Description                                                                        |
| ------- | ------------------------------------------------------------------------------------- |
| 2.0.0   | version initiale                                                                      |
| 2.0.0   | méthodes de remplissage 'mean', 'median' et 'mode'.                                   |
| 2.0.0   | toutes les méthodes opèrent selon dim ; méthodes 'spline', 'pchip' et 'makima'.       |
| 2.0.0   | méthode 'knn' et option 'Distance'.                                                   |
| 2.0.0   | timetables, points d'échantillonnage datetime et duration ; validation des arguments. |

<!--
## 👤 Auteur

Allan CORNET
-->
