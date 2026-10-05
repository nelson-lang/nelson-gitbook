#import "nelson_help.typ": *

= readvars <spreadsheet:readvars>

Créer des variables en lisant les colonnes d'un fichier.

== Syntaxe

- #raw("[Var1, Var2, ..., VarN] = readvars(filename)");
- #raw("[Var1, Var2, ..., VarN] = readvars(filename, opts)");

== Argument d'entrée

/ filename: une chaine de caracteres : un nom de fichier source existant.
/ opts: objet nelson.io.text.DelimitedTextImportOptions

== Argument de sortie

/ Var1, Var2, ..., VarN: les colonnes du fichier, chacune retournee comme une variable distincte.

== Description

#strong[\[Var1, Var2, ..., VarN\] \= readvars(filename)]; cree des variables en important les donnees orientees colonnes d'un fichier texte ou tableur.

 Chaque colonne du fichier est retournee comme une variable de sortie distincte. Les colonnes de texte sont retournees sous forme de tableau de cellules de vecteurs de caracteres, et les colonnes numeriques sous forme de vecteur colonne de type #strong[double];, selon les memes conventions que #strong[readtable];. Utilisez l'option nom-valeur #strong['TextType']; avec la valeur #strong['string']; pour retourner les colonnes de texte sous forme de tableau #strong[string];.

 Les options nom-valeur acceptees par #strong[readtable];, comme #strong['Range'];, sont transmises. L'utilisation de #strong['Range']; restreint les colonnes et les lignes retournees comme variables.

 Si moins de variables de sortie sont demandees que le nombre de colonnes du fichier, seules les premieres colonnes sont retournees. Demander plus de variables de sortie qu'il n'y a de colonnes provoque une erreur.

 #strong[\[Var1, Var2, ..., VarN\] \= readvars(filename, opts)]; utilise les parametres definis dans l'objet d'options d'import #strong[opts];. Tout argument supplementaire est transmis a #strong[readtable];.


== Exemple

``````matlab
filename = [tempdir, 'readvars_1.csv']; Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; T = table(Names, Age, Height); writetable(T, filename) [N, A, H] = readvars(filename)
``````


== Voir aussi

#nlink(<spreadsheet:readtable>)[readtable];, #nlink(<spreadsheet:readmatrix>)[readmatrix];, #nlink(<spreadsheet:readcell>)[readcell];, #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
