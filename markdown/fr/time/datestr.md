# datestr

Convertit une date/heure en représentation textuelle.

## Syntaxe

- dateAsString = datestr(dateVector)
- dateAsString = datestr(dateNumber)
- dateAsString = datestr(..., formatOut)
- dateAsString = datestr(dateAsStringIn)
- dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)
- dateAsString = datestr(..., 'local')

## Argument d'entrée

- dateVector - vecteurs de date ou matrice.
- dateNumber - numéros de date série : tableau de nombres réels double précision positifs.
- formatOut - vecteur de caractères, string scalar ou entier (-1 par défaut) : format de sortie pour représenter les dates et heures.
- dateAsStringIn - vecteur de caractères, cellule de chaînes ou tableau de chaînes : texte représentant des dates/horaires à convertir.
- pivotYear - entier : année pivot (par défaut : année actuelle moins 50 ans).
- 'local' - retourne la date dans la langue du paramétrage régional courant.

## Argument de sortie

- dateAsString - vecteur de caractères ou tableau 2D de caractères : texte représentant des dates/horaires.

## Description

<p>
        dateAsString = datestr(dateVector) convertit des vecteurs date en texte représentant les dates et heures correspondantes. Elle renvoie un tableau de caractères avec m lignes, où m est le nombre de vecteurs date dans dateVector.</p>

<p>
        dateAsString = datestr(dateNumber) convertit des numéros de date série en texte représentant des dates et heures. La sortie est un tableau de caractères avec m lignes, où m est le nombre de numéros de date dans dateNumber.</p>

<p>
        dateAsString = datestr(..., formatOut) permet de spécifier le format du texte de sortie via formatOut. Vous pouvez utiliser cette option avec n'importe quel des types d'entrée précédents.</p>

<p>
        dateAsString = datestr(dateAsStringIn) convertit la chaîne d'entrée dateAsStringIn en un texte au format jour-mois-année heure:minute:seconde. Toutes les dates dans dateAsStringIn doivent suivre le même format.</p>

<p>
        dateAsString = datestr(dateAsStringIn, formatOut, pivotYear) convertit dateAsStringIn au format spécifié par formatOut, en utilisant éventuellement pivotYear pour interpréter les années sur deux chiffres.</p>

<p>
        dateAsString = datestr(..., 'local') renvoie la date dans la langue du paramètre régional système courant. Si 'local' est omis, la langue par défaut est l'anglais américain. L'option 'local' peut être utilisée avec toutes les syntaxes précédentes et doit être le dernier argument.</p>

<p></p>

<p>Formats de conversion pris en charge :</p>

<p>
            dd-mmm-yyyy HH:MM:SS 10-Mar-2010 16:48:17</p>

<p>
            dd-mmm-yyyy 10-Mar-2010</p>

<p>
            mm/dd/yyyy 03/10/2010</p>

<p>
            mm/dd/yy 03/10/00</p>

<p>
            mm/dd 03/10</p>

<p>
            mmm.dd,yyyy HH:MM:SS Mar.10,2010 16:48:17</p>

<p>
            mmm.dd,yyyy Mar.10,2010</p>

<p>
            yyyy-mm-dd HH:MM:SS 2010-03-10 16:48:17</p>

<p>
            yyyy-mm-dd 2010-03-10</p>

<p>
            yyyy/mm/dd 2000/03/10</p>

<p>
            HH:MM:SS 16:48:17</p>

<p>
            HH:MM:SS PM 3:48:17 PM</p>

<p>
            HH:MM 16:48</p>

<p>
            HH:MM PM 3:35 PM</p>

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

## Exemples

```matlab
dateVector = [2019, 4, 2, 9, 7, 18];
datestr(dateVector)
```

```matlab
dateVector = [2019, 4, 2, 9, 7, 18];
formatOut = 'mm/dd/yy';
datestr(dateVector, formatOut)
```

```matlab
datestr(now, 'mmmm dd, yyyy HH:MM:SS.FFF AM')
```

```matlab
datestr('06:33 PM','HH:MM')
```

```matlab
datestr('06:33','HH:MM PM')
```

```matlab
formatOut = 'dd mmm yyyy';
datestr(datenum('18-05-45','dd-mm-yy',1900),formatOut)

```

```matlab
datestr(datenum({'09/17/2017';'06/14/1906';'10/29/2014'}, 'mm/dd/yyyy')))
```

```matlab
dateStringIn = '5/17/56';
formatOut = 1;
pivotYear = 1900;
datestr(dateStringIn, formatOut, pivotYear)
pivotYear = 2000;
datestr(dateStringIn,formatOut, pivotYear)

```

## Voir aussi

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.8.0   | version initiale |

## Auteur

Allan CORNET
