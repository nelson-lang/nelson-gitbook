# writetable

Écrire une table dans un fichier.

## Syntaxe

- writetable(T)
- writetable(T, filename)
- writetable(..., Name, Value)

## Argument d'entrée

- T - Une table à écrire dans un fichier.
- filename - Une chaîne spécifiant le nom du fichier de destination.

## Description

<p>
        writetable(T) écrit la table T dans un fichier texte délimité par des virgules.</p>

<p>Le nom de fichier est dérivé du nom de la variable de la table dans l'espace de travail, avec l'extension .txt ajoutée.</p>

<p>Si le nom de fichier ne peut pas être dérivé du nom de la table, le nom de fichier par défaut table.txt est utilisé.</p>

<p>Formats de sortie pris en charge :</p>

                    Text files: Each variable in T becomes a column, and variable names serve as column headers in the first line.

                        Fichiers XML : chaque variable de T devient un nœud XML, les noms de variables servant de noms d'éléments.

<p>Pour préciser explicitement le nom du fichier, utilisez writetable(T, filename). Le format de fichier est déterminé par l'extension :</p>

                            .txt, .dat, .csv : fichiers texte délimités.

                                .xml : fichiers XML.

<p>
                                Additional options: Use writetable(..., Name, Value) for customization:</p>

                                                WriteRowNames : inclure les noms de ligne dans le fichier de sortie (par défaut : false).

                                                    FileType : spécifier le format de fichier ('text' ou 'xml').

                                                        WriteVariableNames : inclure les noms de variables comme en-têtes de colonne dans les fichiers texte (par défaut : true).

                                                            WriteMode : spécifier le mode d'écriture ('overwrite' ou 'append').

                                                                Delimiter : définir le délimiteur de champ pour les fichiers texte (',', '\t', etc.).

                                                                    QuoteStrings : contrôler la façon dont le texte est cité dans les fichiers texte ('minimal', 'all' ou 'none').

                                                                        AttributeSuffix : spécifier le suffixe d'attribut pour les fichiers XML (par défaut : 'Attribute').

                                                                            RowNodeName : spécifier le nom du nœud de ligne XML (par défaut : 'row').

                                                                                TableNodeName : spécifier le nom du nœud racine XML (par défaut : 'table').

## Exemple

Examples demonstrating various usages of writetable.

```matlab
T = table([1; 2; 3], {'A'; 'B'; 'C'}, [10.5; 20.7; 30.2], 'VariableNames', {'ID', 'Name', 'Value'});
T.Value_Attribute = {'High'; 'Medium'; 'Low'};

% Basic usage - write to text file
writetable(T)

% Write to specific CSV file with custom delimiter
writetable(T, 'data.csv', 'Delimiter', ';')

% Write to XML with custom node names
writetable(T, 'data.xml', 'RowNodeName', 'record', 'TableNodeName', 'dataset')

% Append to existing file with row names
writetable(T, 'data.txt', 'WriteMode', 'append', 'WriteRowNames', true)
```

## Voir aussi

[table](../table/table.md).

## Historique

| Version | Description       |
| ------- | ----------------- |
| 1.10.0  | version initiale. |

## Auteur

Allan CORNET
