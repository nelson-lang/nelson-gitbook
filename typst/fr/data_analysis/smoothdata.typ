#import "nelson_help.typ": *

= smoothdata <data_analysis:smoothdata>

Lisse des donnees bruitees.

== Syntaxe

- #raw("B = smoothdata(A)");
- #raw("B = smoothdata(A, method)");
- #raw("B = smoothdata(A, method, window)");
- #raw("B = smoothdata(A, dim)");
- #raw("B = smoothdata(A, dim, method)");
- #raw("B = smoothdata(A, dim, method, window)");
- #raw("B = smoothdata(__, nanflag)");
- #raw("B = smoothdata(__, Name, Value)");
- #raw("[B, window] = smoothdata(__)");

== Argument d'entrée

/ A: vecteur ou matrice d'entree : numerique ou logique.
/ method: un vecteur de caracteres ou une chaine : methode de lissage. Voir la description pour la liste des methodes supportees.
/ window: un scalaire positif ou un vecteur a deux elements #strong[\[arriere avant\]]; : longueur de la fenetre glissante.
/ dim: dimension le long de laquelle operer : entier positif scalaire.
/ nanflag: un vecteur de caracteres ou une chaine : #strong['omitnan']; (par defaut) ou #strong['includenan'];.
/ Name, Value: paires nom\/valeur : #strong['SamplePoints'];, #strong['SmoothingFactor'];, #strong['Degree'];.

== Argument de sortie

/ B: donnees lissees.
/ window: longueur de la fenetre glissante utilisee pour le lissage.

== Description

#strong[smoothdata]; lisse des donnees bruitees dans un vecteur ou dans les colonnes d'une matrice.

 Par defaut, #strong[smoothdata]; opere le long de la premiere dimension non singleton avec la methode #strong['movmean']; et une longueur de fenetre heuristique choisie a partir des donnees.

 Les valeurs supportees de #strong[method]; sont :

 #strong['movmean']; : moyenne glissante sur chaque fenetre (par defaut).

 #strong['movmedian']; : mediane glissante sur chaque fenetre.

 #strong['gaussian']; : moyenne ponderee glissante avec des poids gaussiens.

 #strong['lowess']; : regression locale avec un polynome de degre un.

 #strong['loess']; : regression locale avec un polynome de degre deux.

 #strong['sgolay']; : filtre polynomial de Savitzky-Golay (utiliser #strong['Degree']; pour fixer le degre du polynome, 2 par defaut).

 Le drapeau #strong['omitnan']; (par defaut) ignore les valeurs #strong[NaN]; dans chaque fenetre, tandis que #strong['includenan']; les propage.

 #strong['SmoothingFactor']; est un scalaire entre 0 et 1 qui regle la longueur de fenetre choisie automatiquement ; des valeurs plus grandes lissent davantage.

 #strong['SamplePoints']; est un vecteur de coordonnees d'echantillonnage uniformement espacees ; la fenetre est alors exprimee dans les unites de ces coordonnees.

 Les methodes robustes #strong['rlowess']; et #strong['rloess']; ne sont pas encore supportees.


== Exemples

moyenne glissante

``````matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'movmean', 3)
``````

lissage gaussien

``````matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'gaussian', 3)
``````

fenetre choisie automatiquement

``````matlab
A = [1 2 10 4 5];
[B, window] = smoothdata(A)
``````


== Voir aussi

#nlink(<data_analysis:movmean>)[movmean];, #nlink(<data_analysis:movmedian>)[movmedian];, #nlink(<data_analysis:fillmissing>)[fillmissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
