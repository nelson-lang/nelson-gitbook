# writecell

Écrire un tableau de cellules dans un fichier.

## Syntaxe

- writecell(C)
- writecell(C, filename)
- writecell(..., Name, Value)

## Argument d'entrée

- C - un tableau de cellules.
- filename - une chaîne : nom de fichier de destination.
- Name, Value - Arguments Nom-Valeur

## Description

<p>
            writecell écrit un tableau de cellules dans un fichier au format CSV.</p>

<p>
                writecell ne prend pas en charge les matrices creuses (sparse).</p>

<p>
                    writecell formate les données numériques en utilisant le format long G.</p>

<p></p>

<p>Arguments Nom-Valeur disponibles</p>

<p></p>

<p>Les paires nom-valeur doivent suivre tous les autres arguments.</p>

<p>L'ordre des paires nom-valeur n'a pas d'importance</p>

<p>Les options Delimiter et QuoteStrings ne s'appliquent qu'aux fichiers texte délimités.</p>

<p></p>

<p>
                        FileType: Specifies the type of output file</p>

<p>Syntaxe : 'FileType','text'
                    </p>

<p>Prend en charge les fichiers texte délimités (.txt, .dat, .csv)</p>

<p></p>

<p>
                        WriteMode: Controls how data is written to the file</p>

<p>Syntaxe : 'WriteMode', mode
                    </p>

<p>Options :</p>

<p>'overwrite' (par défaut) - crée un nouveau fichier ou remplace le contenu existant</p>

<p>'append' - ajoute les données à la fin du fichier existant</p>

<p>Si le fichier cible n'existe pas, un nouveau fichier sera créé quel que soit le mode.</p>

<p></p>

<p>
                        Delimiter: Defines the character used to separate fields</p>

<p>Syntaxe : 'Delimiter', delimiter
                    </p>

<p>Délimiteurs disponibles : uniquement applicables aux fichiers texte délimités.</p>

<p></p>

<p>
                        QuoteStrings : contrôle le comportement de citation des textes (applicable uniquement aux fichiers texte délimités).</p>

<p>
                            'QuoteStrings', option
                        </p>

<p>with options
                    </p>

<p>
                        'minimal' (par défaut) : cite uniquement les textes contenant des délimiteurs, des fins de ligne ou des guillemets.</p>

<p>
                            'all' : cite toutes les variables texte.</p>

<p>
                                'none' : n'utilise pas de guillemets.</p>

## Exemple

```matlab
C = {'ID', 'Product', 'Price'; 1, 'Laptop', 799.99; 2, 'Phone', 699.49; 3, 'Tablet', 499.00};
filename = [tempdir(), 'writecell_example.csv'];
writecell(C, filename);
R = fileread(filename)

```

## Voir aussi

[readcell](../spreadsheet/readcell.md), [csvwrite](../spreadsheet/csvwrite.md), [dlmread](../spreadsheet/dlmread.md), [fileread](../stream_manager/fileread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## Auteur

Allan CORNET
