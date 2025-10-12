# detectImportOptions

Créer des options d'importation basées sur le contenu du fichier.

## Syntaxe

- options = detectImportOptions(filename)

## Argument d'entrée

- filename - une chaîne : nom de fichier source.

## Argument de sortie

- options - Objet DelimitedTextImportOptions.

## Description

<p>
            options = detectImportOptions(filename) identifie une table dans un fichier et renvoie un objet d'options d'importation options.</p>

<p>Vous pouvez personnaliser cet objet et l'utiliser avec readtable, readcell ou readmatrix pour contrôler la façon dont Nelson importe les données en tant que table, cellule ou matrice.</p>

<p>Le type de l'objet options renvoyé dépend de l'extension du fichier.</p>

<p></p>

<p>Propriétés :</p>

<p>
                Delimiter : caractères délimiteurs de champ. exemple : {','} </p>

<p>
                    LineEnding : caractères de fin de ligne. exemple : {'\r\n'}</p>

<p>
                        CommentStyle : style des commentaires. exemple : {'#'}</p>

<p>
                            EmptyLineRule : procédure de gestion des lignes vides. exemple : 'skip'</p>

<p>
                                VariableNamesLine : emplacement des noms de variables. exemple : 1</p>

<p>
                                    VariableNames : noms des variables. exemple : {'Names'  'Age'  'Height'  'Weight'}</p>

<p>
                                        RowNamesColumn : emplacement des noms de ligne. exemple : 0</p>

<p>
                                            DataLines : emplacement des données, [l1 l2] indique la plage de lignes contenant les données. l1 fait référence à la première ligne avec données, tandis que l2 fait référence à la dernière ligne. exemple : [2  Inf]</p>

## Exemple

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, [tempdir,'readcell_1.csv'])
options = detectImportOptions([tempdir,'readcell_1.csv'])
C1 = readcell([tempdir,'readcell_1.csv'], options)
options.DataLines = [1 Inf]
C2 = readcell([tempdir,'readcell_1.csv'], options)

```

## Voir aussi

[readcell](../spreadsheet/readcell.md), [readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
