#import "../nelson_help.typ": *

= rms <signal_processing:2_measurements_feature_extraction.rms>

Valeur quadratique moyenne.

== Syntaxe

- #raw("Y = rms(X)");
- #raw("Y = rms(X, DIM)");
- #raw("Y = rms(X, VECDIM)");
- #raw("Y = rms(X, \"all\")");
- #raw("Y = rms(..., TYPE)");
- #raw("Y = rms(..., NANFLAG)");

== Argument d'entrée

/ X: données d'entrée : single, double, logique ou entier.
/ DIM: dimension sur laquelle calculer la valeur.
/ VECDIM: vecteur de dimensions sur lesquelles calculer la valeur.
/ "all": opérer sur tous les éléments de X.
/ TYPE: classe du résultat : "default", "double" ou "native".
/ NANFLAG: "includenan" ou "omitnan". "includemissing" et "omitmissing" sont aussi acceptés.

== Argument de sortie

/ Y: valeurs quadratiques moyennes.

== Description

#strong[rms]; calcule sqrt(mean(abs(X) .^ 2)) sur la dimension choisie :

 #latex("\\mathrm{RMS}(X) = \\sqrt{ \\frac{1}{N} \\sum_{n=1}^{N} |x_n|^2 }"); où N est le nombre d'éléments sur cette dimension.

 

- Si #strong[X]; est un vecteur, #strong[Y]; est un scalaire.
- Si #strong[X]; est une matrice, #strong[Y]; est un vecteur ligne contenant la valeur de chaque colonne.
- Si #strong[X]; est un tableau multidimensionnel, #strong[Y]; est calculé sur la première dimension dont la taille n'est pas 1, sauf si une dimension est indiquée.

 #strong[Classe du résultat :]; le carré et la moyenne sont toujours calculés en double, donc une entrée entière ne sature jamais. #strong["native"]; renvoie la classe de l'entrée, #strong["double"]; renvoie un double, et #strong["default"]; renvoie un double pour une entrée entière et la classe de l'entrée sinon. Une entrée logique n'est pas une classe entière et renvoie un double.

 #strong[Valeurs manquantes :]; les NaN sont pris en compte par défaut. Utiliser #strong["omitnan"]; ou #strong["omitmissing"]; pour les écarter.


== Exemples

valeur quadratique moyenne d'un vecteur

``````matlab

t = 0:0.001:1-0.001;
x = cos(2*pi*100*t);
y = rms(x)
% y = 0.7071

``````

une valeur par colonne

``````matlab

x = [4 -5 1; 2 3 5; -9 1 7];
y = rms(x)
% y = [5.8023 3.4157 5.0000]

``````

une valeur par ligne

``````matlab

x = [6 4 23 -3; 9 -10 4 11; 2 8 -5 1];
y = rms(x, 2)
% y = [12.1450; 8.9163; 4.8477]

``````

en écartant les valeurs manquantes

``````matlab

x = [1.77 -0.005 nan -2.95; nan 0.34 nan 0.19];
y = rms(x, "omitnan")
% y = [1.7700 0.2404 nan 2.0903]

``````

entrée entière avec un résultat natif

``````matlab

M = uint8([10:30:70; 20:30:80; 30:30:90]);
R = rms(M, 'native')
% R = uint8([22 51 80])
D = rms(M)
% D = [21.6025 50.6623 80.4156]

``````


== Voir aussi

#nlink(<signal_processing:2_measurements_feature_extraction.peak2peak>)[peak2peak];, #nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:min>)[min];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [version initiale],
)

// Auteur: Allan CORNET
