# datenum

d = datenum(...) Convertit différents formats de date en numéro de date série.

## 📝 Syntaxe

- d = datenum()
- d = datenum([Y, M, D, H, MN, S])
- d = datenum(datevec)
- d = datenum(datestr)
- d = datenum(datestr, format)

## 📥 Argument d'entrée

- format - une chaîne spécifiant le format de date, ou laissez vide (' ') pour la détection automatique du format.
- datestr - une chaîne, cellule de chaînes ou tableau de chaînes : texte représentant une date.
- Y, M, D, H, MN, S - double : Année, Mois, Jour, Heures, Minutes, Secondes (scalaire ou vecteur).
- pivotYear - entier : année pivot (par défaut : année courante moins 50 ans).

## 📤 Argument de sortie

- d - un double : numéro de date série (le jour série 1 correspond au 1-Jan-0000).

## 📄 Description

<b>d = datenum()</b> renvoie le numéro de date série correspondant à la date courante.

<b>d = datenum(datevec)</b> convertit un vecteur date en numéro de date série.

<b>d = datenum(datestr)</b> et<b>d = datenum(datestr, format)</b> convertissent une chaîne en numéro de date série.

Formats de date/heure pris en charge :

<b>dd-mmm-yyyy HH:MM:SS</b> 10-Mar-2010 16:48:17

<b>dd-mmm-yyyy</b> 10-Mar-2010

<b>mm/dd/yyyy</b> 03/10/2010

<b>mm/dd/yy</b> 03/10/00

<b>mm/dd</b> 03/10

<b>mmm.dd,yyyy HH:MM:SS</b> Mar.10,2010 16:48:17

<b>mmm.dd,yyyy</b> Mar.10,2010

<b>yyyy-mm-dd HH:MM:SS</b> 2010-03-10 16:48:17

<b>yyyy-mm-dd</b> 2010-03-10

<b>yyyy/mm/dd</b> 2000/03/10

<b>HH:MM:SS</b> 16:48:17

<b>HH:MM:SS PM</b> 3:48:17 PM

<b>HH:MM</b> 16:48

<b>HH:MM PM</b> 3:35 PM

Si le format n'est pas spécifié, le format par défaut est <b>dd-mmm-yyyy</b>.

Si un format est spécifié et qu'il n'utilise pas un format prédéfini, le format doit être indiqué comme un vecteur de caractères ou un scalaire string composé d'identifiants symboliques.

Le format du texte d'entrée pour représenter les dates et heures, exprimé comme vecteur de caractères ou scalaire string composé d'identifiants symboliques.

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

## 💡 Exemple

```matlab

d = datenum([1973,8,4,12,1,18])
datevec(d)
d = datenum('04–Aug-1973 12:01:18')
d = datenum(["04–Aug-1973 12:01:18"; "04–Aug-1974 11:01:18"])

```

## 🔗 Voir aussi

[datevec](../time/datevec.md).

## 🕔 Historique

| Version                         | 📄 Description                       |
| ------------------------------- | ------------------------------------ |
| 1.0.0                           | version initiale                     |
| 1.8.0                           | analyse des chaînes de date étendue. |
| 1.10.0                          | ajout : format '                     |
| ' signifie essayer de détecter. |

<!--
## 👤 Auteur

Allan CORNET
-->
