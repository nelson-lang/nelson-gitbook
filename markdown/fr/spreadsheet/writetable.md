# writetable

Écrire une table dans un fichier.

## 📝 Syntaxe

- writetable(T)
- writetable(T, filename)
- writetable(..., Name, Value)

## 📥 Argument d'entrée

- T - Une table à écrire dans un fichier.
- filename - Une chaîne spécifiant le nom du fichier de destination.

## 📄 Description

<b>writetable(T)</b> écrit la table <b>T</b> dans un fichier texte délimité par des virgules.

Le nom de fichier est dérivé du nom de la variable de la table dans l'espace de travail, avec l'extension<code>.txt</code>ajoutée.

Si le nom de fichier ne peut pas être dérivé du nom de la table, le nom de fichier par défaut<code>table.txt</code>est utilisé.

Formats de sortie pris en charge :

- <b>Text files:</b> Each variable in<b>T</b> becomes a column, and variable names serve as column headers in the first line.
- <b>Fichiers XML :</b> chaque variable de <b>T</b> devient un nœud XML, les noms de variables servant de noms d'éléments.

Pour préciser explicitement le nom du fichier, utilisez <b>writetable(T, filename)</b>. Le format de fichier est déterminé par l'extension :

- <b>.txt</b>, <b>.dat</b>,<b>.csv</b> : fichiers texte délimités.
- <b>.xml</b> : fichiers XML.

<b>Additional options:</b> Use <b>writetable(..., Name, Value)</b> for customization:

- <b>WriteRowNames :</b> inclure les noms de ligne dans le fichier de sortie (par défaut :<code>false</code>).
- <b>FileType :</b> spécifier le format de fichier (<code>
  'text'
  </code>ou<code>
  'xml'
  </code>).
- <b>WriteVariableNames :</b> inclure les noms de variables comme en-têtes de colonne dans les fichiers texte (par défaut :<code>true</code>).
- <b>WriteMode :</b> spécifier le mode d'écriture (<code>
  'overwrite'
  </code> ou <code>
  'append'
  </code>).
- <b>Delimiter :</b> définir le délimiteur de champ pour les fichiers texte (<code>
  ','
  </code>, <code>
  '\t'
  </code>, etc.).
- <b>QuoteStrings :</b> contrôler la façon dont le texte est cité dans les fichiers texte (<code>
  'minimal'
  </code>, <code>
  'all'
  </code> ou <code>
  'none'
  </code>).
- <b>AttributeSuffix :</b> spécifier le suffixe d'attribut pour les fichiers XML (par défaut :<code>
  'Attribute'
  </code>).
- <b>RowNodeName :</b> spécifier le nom du nœud de ligne XML (par défaut :<code>
  'row'
  </code>).
- <b>TableNodeName :</b> spécifier le nom du nœud racine XML (par défaut :<code>
  'table'
  </code>).

<b>Fichiers JSON</b> (extension <b>.json</b> ou <b>'FileType', 'json'</b>) : la table est écrite comme un tableau JSON avec un objet par ligne ; les clés sont les noms des variables.

- Les nombres et valeurs logiques sont écrits comme nombres JSON et true ou false, les valeurs texte, categorical, datetime et duration comme chaînes JSON (datetime et duration utilisent leur format d'affichage).
- Les valeurs manquantes (<missing>, NaT, <undefined>) sont écrites null. Une variable à plusieurs colonnes donne un tableau JSON par ligne.
- <b>PrettyPrint</b> : indente le texte avec quatre espaces (défaut : <code>true</code>).
- <b>PreserveInfAndNaN</b> : écrit les valeurs Inf et NaN sous la forme Inf, -Inf et NaN (défaut : <code>true</code>) ; avec <code>false</code> elles sont écrites null.
- <b>WriteRowNames</b> : écrit les noms de lignes comme première valeur de chaque objet, avec pour clé le premier nom de dimension.

## 💡 Exemples

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

Écrire une table dans un fichier JSON :

```matlab
T = table([1; NaN], ["a"; missing], [true; false], 'VariableNames', {'x', 'name', 'ok'}); f = [tempdir, 'writetable_json.json']; writetable(T, f); fileread(f) writetable(T, f, 'PrettyPrint', false, 'PreserveInfAndNaN', false); fileread(f)
```

## 🔗 Voir aussi

[table](../table/table.md).

## 🕔 Historique

| Version | 📄 Description                                                   |
| ------- | ---------------------------------------------------------------- |
| 1.10.0  | version initiale.                                                |
| 2.0.0   | Fichiers JSON : FileType json, PrettyPrint et PreserveInfAndNaN. |

<!--
## 👤 Auteur

Allan CORNET
-->
