#import "../nelson_help.typ": *

= datestr <time:6_text_and_external_time_systems.datestr>

Convertit une date\/heure en représentation textuelle.

== Syntaxe

- #raw("dateAsString = datestr(dateVector)");
- #raw("dateAsString = datestr(dateNumber)");
- #raw("dateAsString = datestr(..., formatOut)");
- #raw("dateAsString = datestr(dateAsStringIn)");
- #raw("dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)");
- #raw("dateAsString = datestr(..., 'local')");

== Argument d'entrée

/ dateVector: vecteurs de date ou matrice.
/ dateNumber: numéros de date série : tableau de nombres réels double précision positifs.
/ formatOut: vecteur de caractères, string scalar ou entier (-1 par défaut) : format de sortie pour représenter les dates et heures.
/ dateAsStringIn: vecteur de caractères, cellule de chaînes ou tableau de chaînes : texte représentant des dates\/horaires à convertir.
/ pivotYear: entier : année pivot (par défaut : année actuelle moins 50 ans).
/ 'local': retourne la date dans la langue du paramétrage régional courant.

== Argument de sortie

/ dateAsString: vecteur de caractères ou tableau 2D de caractères : texte représentant des dates\/horaires.

== Description

#strong[dateAsString \= datestr(dateVector)]; convertit des vecteurs date en texte représentant les dates et heures correspondantes. Elle renvoie un tableau de caractères avec#strong[m]; lignes, où #strong[m]; est le nombre de vecteurs date dans#strong[dateVector];.

 #strong[dateAsString \= datestr(dateNumber)]; convertit des numéros de date série en texte représentant des dates et heures. La sortie est un tableau de caractères avec#strong[m]; lignes, où #strong[m]; est le nombre de numéros de date dans#strong[dateNumber];.

 #strong[dateAsString \= datestr(..., formatOut)]; permet de spécifier le format du texte de sortie via#strong[formatOut];. Vous pouvez utiliser cette option avec n'importe quel des types d'entrée précédents.

 #strong[dateAsString \= datestr(dateAsStringIn)]; convertit la chaîne d'entrée #strong[dateAsStringIn]; en un texte au format jour-mois-année heure:minute:seconde. Toutes les dates dans #strong[dateAsStringIn]; doivent suivre le même format.

 #strong[dateAsString \= datestr(dateAsStringIn, formatOut, pivotYear)]; convertit #strong[dateAsStringIn]; au format spécifié par #strong[formatOut];, en utilisant éventuellement #strong[pivotYear]; pour interpréter les années sur deux chiffres.

 #strong[dateAsString \= datestr(..., 'local')]; renvoie la date dans la langue du paramètre régional système courant. Si #strong['local']; est omis, la langue par défaut est l'anglais américain. L'option #strong['local']; peut être utilisée avec toutes les syntaxes précédentes et doit être le dernier argument.

 

 Formats de conversion pris en charge :

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

 

 Si le format n'est pas spécifié, le format par défaut est#strong[dd-mmm-yyyy];.

 

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

== Exemples

``````matlab
dateVector = [2019, 4, 2, 9, 7, 18];
datestr(dateVector)
``````

``````matlab
dateVector = [2019, 4, 2, 9, 7, 18];
formatOut = 'mm/dd/yy';
datestr(dateVector, formatOut)
``````

``````matlab
datestr(now, 'mmmm dd, yyyy HH:MM:SS.FFF AM')
``````

``````matlab
datestr('06:33 PM','HH:MM')
``````

``````matlab
datestr('06:33','HH:MM PM')
``````

``````matlab
formatOut = 'dd mmm yyyy';
datestr(datenum('18-05-45','dd-mm-yy',1900),formatOut)

``````

``````matlab
datestr(datenum({'09/17/2017';'06/14/1906';'10/29/2014'}, 'mm/dd/yyyy')))
``````

``````matlab
dateStringIn = '5/17/56';
formatOut = 1;
pivotYear = 1900;
datestr(dateStringIn, formatOut, pivotYear)
pivotYear = 2000;
datestr(dateStringIn,formatOut, pivotYear)

``````


== Voir aussi

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [version initiale],
)

// Auteur: Allan CORNET
