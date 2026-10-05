#import "../nelson_help.typ": *

= datenum <time:1_create_date_time_arrays.datenum>

d \= datenum(...) Convertit différents formats de date en numéro de date série.

== Syntaxe

- #raw("d = datenum()");
- #raw("d = datenum([Y, M, D])");
- #raw("d = datenum([Y, M, D, H, MN, S])");
- #raw("d = datenum(datevec)");
- #raw("d = datenum(datestr)");
- #raw("d = datenum(datestr, format)");

== Argument d'entrée

/ datevec: un vecteur \[Y, M, D\] ou \[Y, M, D, H, MN, S\], ou une matrice N x 3 ou N x 6.
/ format: une chaîne spécifiant le format de date, ou laissez vide (' ') pour la détection automatique du format.
/ datestr: une chaîne, cellule de chaînes ou tableau de chaînes : texte représentant une date.
/ Y, M, D, H, MN, S: double : Année, Mois, Jour, Heures, Minutes, Secondes (scalaire ou vecteur).
/ pivotYear: entier : année pivot (par défaut : année courante moins 50 ans).

== Argument de sortie

/ d: un double : numéro de date série (le jour série 1 correspond au 1-Jan-0000).

== Description

#strong[d \= datenum()]; renvoie le numéro de date série correspondant à la date courante.

 #strong[d \= datenum(datevec)]; convertit un vecteur date en numéro de date série.

 #strong[d \= datenum(datestr)]; et#strong[d \= datenum(datestr, format)]; convertissent une chaîne en numéro de date série.

 

 Formats de date\/heure pris en charge :

 #strong[dd-mmm-yyyy HH:MM:SS]; 10-Mar-2010 16:48:17

 #strong[dd-mmm-yyyy]; 10-Mar-2010

 #strong[mm\/dd\/yyyy]; 03\/10\/2010

 #strong[mm\/dd\/yy]; 03\/10\/00

 #strong[mm\/dd]; 03\/10

 #strong[mmm.dd,yyyy HH:MM:SS]; Mar.10,2010 16:48:17

 #strong[mmm.dd,yyyy]; Mar.10,2010

 #strong[yyyy-mm-dd HH:MM:SS]; 2010-03-10 16:48:17

 #strong[yyyy-mm-dd]; 2010-03-10

 #strong[yyyy\/mm\/dd]; 2000\/03\/10

 #strong[HH:MM:SS]; 16:48:17

 #strong[HH:MM:SS PM]; 3:48:17 PM

 #strong[HH:MM]; 16:48

 #strong[HH:MM PM]; 3:35 PM

 

 Si le format n'est pas spécifié, le format par défaut est #strong[dd-mmm-yyyy];.

 

 Si un format est spécifié et qu'il n'utilise pas un format prédéfini, le format doit être indiqué comme un vecteur de caractères ou un scalaire string composé d'identifiants symboliques.

 Le format du texte d'entrée pour représenter les dates et heures, exprimé comme vecteur de caractères ou scalaire string composé d'identifiants symboliques.

 

 

#table(
  columns: 3,
  [Identifiant symbolique], [Description], [Exemple], 
  [yyyy], [Année complète], [1995, 2012], 
  [yy], [Année sur deux chiffres], [89, 01], 
  [QQ], [Trimestre (lettre Q suivie d'un chiffre)], [Q1], 
  [mmmm], [Mois en nom complet], [mars, décembre], 
  [mmm], [Mois en trois premières lettres], [mar, déc], 
  [mm], [Mois sur deux chiffres], [04, 12], 
  [m], [Mois (première lettre en majuscule)], [M, D], 
  [dddd], [Jour en nom complet], [lundi, mardi], 
  [ddd], [Jour en trois premières lettres], [lun, mar], 
  [dd], [Jour sur deux chiffres], [06, 21], 
  [d], [Jour (première lettre en majuscule)], [L, M], 
  [HH], [Heure sur deux chiffres (pas de zéro initial lorsque l'identifiant AM ou PM est utilisé)], [06, 6 AM], 
  [MM], [Minute sur deux chiffres], [11, 01], 
  [SS], [Seconde sur deux chiffres], [06, 59], 
  [FFF], [Milliseconde sur trois chiffres], [056], 
  [AM or PM], [AM ou PM inséré dans le texte représentant l'heure], [17:46:02 PM], 
)

== Exemple

``````matlab

d = datenum([1973,8,4,12,1,18])
datevec(d)
d = datenum('04–Aug-1973 12:01:18')
d = datenum(["04–Aug-1973 12:01:18"; "04–Aug-1974 11:01:18"])

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.8.0], [analyse des chaînes de date étendue.],
  [1.10.0], [ajout : format ' ' signifie essayer de détecter.],
)

// Auteur: Allan CORNET
