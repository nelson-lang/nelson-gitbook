# readtable

Créer une table à partir d'un fichier.

## 📝 Syntaxe

- T = readtable(filename)
- T = readtable(filename, opts)
- T = readtable(filename, 'TextType', type)
- T = readtable(filename, Name, Value)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier source.
- opts - Objet nelson.io.text.DelimitedTextImportOptions
- type - une chaîne : <b>'char'</b> (défaut, colonnes de texte en tableau de cellules de vecteurs de caractères) ou <b>'string'</b> (colonnes de texte en tableau string).
- Name, Value - arguments nom-valeur optionnels. Pour un fichier JSON : FileType, TableSelector, TableNodeName, VariableSelectors, RowNamesSelector, VariableUnitsSelector, VariableDescriptionsSelector, RepeatedNodeRule, ParsingMode, AllowComments, AllowInfAndNaN, AllowTrailingCommas, MissingRule, ImportErrorRule et TextType.

## 📤 Argument de sortie

- T - une table.

## 📄 Description


<b>T = readtable(filename)</b> crée une table en important des données orientées colonne depuis un fichier texte ou tableur. 

<b>T = readtable(filename, opts)</b> crée une table en utilisant les paramètres définis dans l'objet d'options d'importation<b>opts</b>. L'objet d'options d'importation permet de personnaliser la façon dont <b>readtable</b> interprète le fichier, offrant un meilleur contrôle, de meilleures performances et la possibilité de réutiliser la configuration comparé à la syntaxe par défaut. 

<b>T = readtable(filename, 'Range', range)</b> lit uniquement le bloc rectangulaire du fichier sélectionné par <b>range</b>. Pour un fichier texte délimité, <b>range</b> peut être donné sous forme de cellules de coin (<b>'A1:B5'</b> ou un coin unique <b>'A2'</b>), d'une plage de colonnes (<b>'A:B'</b>), d'une plage de lignes (<b>'2:4'</b>) ou d'un vecteur numérique <b>[premiereLigne premiereColonne derniereLigne derniereColonne]</b>. Lorsque la première ligne de la plage est composée uniquement de texte non numérique, elle est utilisée pour les noms de variables, sinon les colonnes sont nommées <b>Var1</b>, <b>Var2</b>, etc. 

L'option nom-valeur <b>'Sheet'</b> s'applique uniquement aux fichiers tableur et n'est pas prise en charge pour un fichier texte délimité. 

<b>Fichiers JSON</b> : un fichier d'extension <b>.json</b>, ou tout fichier lu avec <b>'FileType', 'json'</b>, est décodé avec <b>jsondecode</b> puis converti en table. 

- Un tableau d'objets donne une ligne par objet et les clés des objets deviennent les variables. Les objets imbriqués sont aplatis : chaque valeur feuille devient une variable nommée d'après sa clé. 
- Un objet dont toutes les valeurs sont des objets donne une ligne par clé. Utilisez <b>"Keys"</b> dans <b>VariableSelectors</b> pour lire les clés. 
- Lorsque la racine du fichier est un objet, le premier tableau d'objets trouvé est lu. 
- Les nombres donnent des double, true et false des logical, le texte des string (char avec <b>'TextType', 'char'</b>), le texte de date et d'heure des datetime ou duration. 
- Les valeurs null et les clés absentes sont des valeurs manquantes : NaN, <missing> ou false pour une variable logique. 
- Une valeur tableau JSON (noeud répété) donne une variable matrice avec une colonne par élément. 

Arguments nom-valeur JSON : 

- <b>TableSelector</b> : pointeur JSON RFC 6901 de la table. <b>""</b> désigne le fichier entier. 
- <b>TableNodeName</b> : nom de la clé des données de la table. 
- <b>VariableSelectors</b> : pointeurs JSON des variables, relatifs à un objet ligne. <b>"Keys"</b> lit les clés des objets. 
- <b>RowNamesSelector</b> : pointeur JSON des noms de lignes. 
- <b>VariableUnitsSelector</b>, <b>VariableDescriptionsSelector</b> : pointeurs JSON, depuis la racine du fichier, d'un objet associant les noms de variables à leurs unités ou descriptions. 
- <b>RepeatedNodeRule</b> : <b>'addcol'</b> (défaut), <b>'ignore'</b> (premier élément seulement) ou <b>'error'</b>. 
- <b>ParsingMode</b> : <b>'lenient'</b> (défaut) ou <b>'strict'</b>. Il fixe <b>AllowComments</b> (commentaires <b>//</b> et <b>/\* \*/</b>), <b>AllowInfAndNaN</b> (Inf, -Inf, Infinity, NaN) et <b>AllowTrailingCommas</b>, qui peuvent aussi être donnés un par un. 
- <b>MissingRule</b>, <b>ImportErrorRule</b> : <b>'fill'</b> (défaut), <b>'error'</b>, <b>'omitrow'</b> ou <b>'omitvar'</b>. 

Avec un fichier JSON, <b>opts</b> est un objet <b>nelson.io.json.JSONImportOptions</b> (voir <b>jsonImportOptions</b>).

## 💡 Exemples



```matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T1 = table(Names, Age, Height, Weight);  writetable(T1, [tempdir,'readtable_1.csv'])  T2 = readtable([tempdir,'readtable_1.csv'])  
```


```matlab
  Names = {'John'; 'Alice'; 'Bob'; 'Diana'};  Age = [28; 34; 22; 30];  Height = [175; 160; 180; 165];  Weight = [70; 55; 80; 60];  T = table(Names, Age, Height, Weight);  writetable(T, [tempdir,'readtable_1.csv'])  options = detectImportOptions([tempdir,'readtable_1.csv']);  T1 = readtable([tempdir,'readtable_1.csv'], options)  options.DataLines = [1 Inf]  T2 = readtable([tempdir,'readtable_1.csv'], options)  
```
Lire un fichier JSON :

```matlab
T = table([1; 2; NaN], ["a"; "b"; missing], 'VariableNames', {'x', 'name'}); f = [tempdir, 'readtable_json.json']; writetable(T, f); T2 = readtable(f) opts = detectImportOptions(f, 'VariableSelectors', '/name'); T3 = readtable(f, opts)
```


## 🔗 Voir aussi

[delimitedTextImportOptions](../spreadsheet/delimitedTextImportOptions.md), [writetable](../spreadsheet/writetable.md), [detectImportOptions](../spreadsheet/detectImportOptions.md), [readcell](../spreadsheet/readcell.md), [fileread](../stream_manager/fileread.md), [jsonImportOptions](../spreadsheet/jsonImportOptions.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.10.0   | version initiale |
| 2.0.0   | Fichiers JSON : lecture de données JSON sous forme de table. |

<!--
## 👤 Auteur

Allan CORNET
-->
