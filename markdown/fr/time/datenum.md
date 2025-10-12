# datenum

d = datenum(...) Convertit différents formats de date en numéro de date série.

## Syntaxe

- d = datenum()
- d = datenum([Y, M, D, H, MN, S])
- d = datenum(datevec)
- d = datenum(datestr)
- d = datenum(datestr, format)

## Argument d'entrée

- format - une chaîne spécifiant le format de date, ou laissez vide ('') pour la détection automatique du format.
- datestr - une chaîne, cellule de chaînes ou tableau de chaînes : texte représentant une date.
- Y, M, D, H, MN, S - double : Année, Mois, Jour, Heures, Minutes, Secondes (scalaire ou vecteur).
- pivotYear - entier : année pivot (par défaut : année courante moins 50 ans).

## Argument de sortie

- d - un double : numéro de date série (le jour série 1 correspond au 1-Jan-0000).

## Description

<p>d = datenum() renvoie le numéro de date série correspondant à la date courante.</p>

<p>d = datenum(datevec) convertit un vecteur date en numéro de date série.</p>

<p>d = datenum(datestr) et d = datenum(datestr, format) convertissent une chaîne en numéro de date série.</p>

<p></p>

<p>Formats de date/heure pris en charge :</p>

<p>dd-mmm-yyyy HH:MM:SS 10-Mar-2010 16:48:17</p>

<p>dd-mmm-yyyy 10-Mar-2010</p>

<p>mm/dd/yyyy 03/10/2010</p>

<p>mm/dd/yy 03/10/00</p>

<p>mm/dd 03/10</p>

<p>mmm.dd,yyyy HH:MM:SS Mar.10,2010 16:48:17</p>

<p>mmm.dd,yyyy Mar.10,2010</p>

<p>yyyy-mm-dd HH:MM:SS 2010-03-10 16:48:17</p>

<p>yyyy-mm-dd 2010-03-10</p>

<p>yyyy/mm/dd 2000/03/10</p>

<p>HH:MM:SS 16:48:17</p>

<p>HH:MM:SS PM 3:48:17 PM</p>

<p>HH:MM 16:48</p>

<p>HH:MM PM 3:35 PM</p>

<p></p>

<p>Si le format n'est pas spécifié, le format par défaut est dd-mmm-yyyy.</p>

<p></p>

<p>Si un format est spécifié et qu'il n'utilise pas un format prédéfini, le format doit être indiqué comme un vecteur de caractères ou un scalaire string composé d'identifiants symboliques.</p>

<p>Le format du texte d'entrée pour représenter les dates et heures, exprimé comme vecteur de caractères ou scalaire string composé d'identifiants symboliques.</p>

<p></p>

| Identifiant symbolique | Description                                                                              | Exemple        |
| ---------------------- | ---------------------------------------------------------------------------------------- | -------------- |
| yyyy                   | Année complète                                                                           | 1995, 2012     |
| yy                     | Année sur deux chiffres                                                                  | 89, 01         |
| QQ                     | Trimestre (lettre Q suivie d'un chiffre)                                                 | Q1             |
| mmmm                   | Mois en nom complet                                                                      | mars, décembre |
| mmm                    | Mois en trois premières lettres                                                          | mar, déc       |
| mm                     | Mois sur deux chiffres                                                                   | 04, 12         |
| m                      | Mois (première lettre en majuscule)                                                      | M, D           |
| dddd                   | Jour en nom complet                                                                      | lundi, mardi   |
| ddd                    | Jour en trois premières lettres                                                          | lun, mar       |
| dd                     | Jour sur deux chiffres                                                                   | 06, 21         |
| d                      | Jour (première lettre en majuscule)                                                      | L, M           |
| HH                     | Heure sur deux chiffres (pas de zéro initial lorsque l'identifiant AM ou PM est utilisé) | 06, 6 AM       |
| MM                     | Minute sur deux chiffres                                                                 | 11, 01         |
| SS                     | Seconde sur deux chiffres                                                                | 06, 59         |
| FFF                    | Milliseconde sur trois chiffres                                                          | 056            |
| AM or PM               | AM ou PM inséré dans le texte représentant l'heure                                       | 17:46:02 PM    |

## Exemple

```matlab

d = datenum([1973,8,4,12,1,18])
datevec(d)
d = datenum('04–Aug-1973 12:01:18')
d = datenum(["04–Aug-1973 12:01:18"; "04–Aug-1974 11:01:18"])

```

## Voir aussi

[datevec](../time/datevec.md).

## Historique

| Version | Description                                     |
| ------- | ----------------------------------------------- |
| 1.0.0   | version initiale                                |
| 1.8.0   | analyse des chaînes de date étendue.            |
| 1.10.0  | ajout : format '' signifie essayer de détecter. |

## Auteur

Allan CORNET
