# readtable

Créer une table à partir d'un fichier.

## Syntaxe

- T = readtable(filename)
- T = readtable(filename, opts)

## Argument d'entrée

- filename - une chaîne : nom de fichier source.
- opts - Objet DelimitedTextImportOptions

## Argument de sortie

- T - une table.

## Description

<p>
        T = readtable(filename) crée une table en important des données orientées colonne depuis un fichier texte ou tableur.</p>

<p>
            T = readtable(filename, opts) crée une table en utilisant les paramètres définis dans l'objet d'options d'importation opts. L'objet d'options d'importation permet de personnaliser la façon dont readtable interprète le fichier, offrant un meilleur contrôle, de meilleures performances et la possibilité de réutiliser la configuration comparé à la syntaxe par défaut.</p>

## Exemples

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T1 = table(Names, Age, Height, Weight);
writetable(T1, [tempdir,'readtable_1.csv'])
T2 = readtable([tempdir,'readtable_1.csv'])

```

```matlab

Names = {'John'; 'Alice'; 'Bob'; 'Diana'};
Age = [28; 34; 22; 30];
Height = [175; 160; 180; 165];
Weight = [70; 55; 80; 60];
T = table(Names, Age, Height, Weight);
writetable(T, [tempdir,'readtable_1.csv'])
options = detectImportOptions([tempdir,'readtable_1.csv']);
T1 = readtable([tempdir,'readtable_1.csv'], options)
options.DataLines = [1 Inf]
T2 = readtable([tempdir,'readtable_1.csv'], options)

```

## Voir aussi

[writetable](../spreadsheet/writetable.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [readcell](../spreadsheet/readcell.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
