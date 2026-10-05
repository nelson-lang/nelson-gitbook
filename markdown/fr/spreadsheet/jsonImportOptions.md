# jsonImportOptions

Créer des options pour importer des données JSON.

## 📝 Syntaxe

- opts = jsonImportOptions()
- opts = jsonImportOptions('NumVariables', numVars)
- opts = jsonImportOptions(..., Name, Value)

## 📥 Argument d'entrée

- numVars - nombre de variables (défaut : 1).
- Name, Value - noms et valeurs des propriétés de l'objet, et <b>'ParsingMode'</b> (<b>'lenient'</b> ou <b>'strict'</b>) qui fixe <b>AllowComments</b>, <b>AllowInfAndNaN</b> et <b>AllowTrailingCommas</b>.

## 📤 Argument de sortie

- opts - Objet nelson.io.json.JSONImportOptions.

## 📄 Description


<b>jsonImportOptions</b> crée un objet d'options d'importation pour les fichiers JSON, à utiliser avec <b>readtable</b> et <b>readtimetable</b>. <b>detectImportOptions</b> renvoie le même objet, rempli à partir d'un fichier JSON. 

Propriétés : 

- <b>VariableNames</b> : noms des variables (défaut : Var1, Var2, ...). 
- <b>VariableNamingRule</b> : <b>'preserve'</b> (défaut) ou <b>'modify'</b>. 
- <b>VariableTypes</b> : types des variables : <b>'double'</b>, <b>'single'</b>, types entiers, <b>'logical'</b>, <b>'string'</b>, <b>'char'</b>, <b>'categorical'</b>, <b>'datetime'</b>, <b>'duration'</b> ou <b>'cell'</b> (défaut : <b>'char'</b>). 
- <b>SelectedVariableNames</b> : sous-ensemble des variables à importer. 
- <b>VariableSelectors</b> : pointeurs JSON RFC 6901 des variables, relatifs à un objet ligne. <b>"Keys"</b> lit les clés des objets. Si vide, toutes les valeurs feuilles sont lues. 
- <b>RowNamesSelector</b> : pointeur JSON des noms de lignes. 
- <b>TableSelector</b> : pointeur JSON de la table (<b>""</b>, le défaut, désigne le fichier entier). 
- <b>VariableDescriptionsSelector</b>, <b>VariableUnitsSelector</b> : pointeurs JSON des descriptions et des unités des variables. 
- <b>ImportErrorRule</b>, <b>MissingRule</b> : <b>'fill'</b> (défaut), <b>'error'</b>, <b>'omitrow'</b> ou <b>'omitvar'</b>. 
- <b>RepeatedNodeRule</b> : <b>'addcol'</b> (défaut), <b>'ignore'</b> ou <b>'error'</b>. 
- <b>AllowComments</b>, <b>AllowInfAndNaN</b>, <b>AllowTrailingCommas</b> : acceptent les commentaires, les valeurs Inf et NaN, les virgules finales (défaut : <code>true</code>). 

L'objet utilise la classe Nelson <b>nelson.io.json.JSONImportOptions</b>.

## 💡 Exemple

Sélectionner une valeur imbriquée de chaque ligne :

```matlab
f = [tempdir, 'students.json']; fid = fopen(f, 'w'); fprintf(fid, '%s', '[{"Name": {"FirstName": "Priya"}}, {"Name": {"FirstName": "Conor"}}]'); fclose(fid); opts = jsonImportOptions('VariableSelectors', "/Name/FirstName", 'TableSelector', "") T = readtable(f, opts)
```


## 🔗 Voir aussi

[detectImportOptions](../spreadsheet/detectImportOptions.md), [readtable](../spreadsheet/readtable.md), [readtimetable](../spreadsheet/readtimetable.md), [jsondecode](../json/jsondecode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
