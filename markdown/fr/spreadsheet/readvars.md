# readvars

Créer des variables en lisant les colonnes d'un fichier.

## 📝 Syntaxe

- [Var1, Var2, ..., VarN] = readvars(filename)
- [Var1, Var2, ..., VarN] = readvars(filename, opts)

## 📥 Argument d'entrée

- filename - une chaine de caracteres : un nom de fichier source existant.
- opts - objet nelson.io.text.DelimitedTextImportOptions

## 📤 Argument de sortie

- Var1, Var2, ..., VarN - les colonnes du fichier, chacune retournee comme une variable distincte.

## 📄 Description

<b>[Var1, Var2, ..., VarN] = readvars(filename)</b> cree des variables en important les donnees orientees colonnes d'un fichier texte ou tableur.

Chaque colonne du fichier est retournee comme une variable de sortie distincte. Les colonnes de texte sont retournees sous forme de tableau de cellules de vecteurs de caracteres, et les colonnes numeriques sous forme de vecteur colonne de type <b>double</b>, selon les memes conventions que <b>readtable</b>. Utilisez l'option nom-valeur <b>'TextType'</b> avec la valeur <b>'string'</b> pour retourner les colonnes de texte sous forme de tableau <b>string</b>.

Les options nom-valeur acceptees par <b>readtable</b>, comme <b>'Range'</b>, sont transmises. L'utilisation de <b>'Range'</b> restreint les colonnes et les lignes retournees comme variables.

Si moins de variables de sortie sont demandees que le nombre de colonnes du fichier, seules les premieres colonnes sont retournees. Demander plus de variables de sortie qu'il n'y a de colonnes provoque une erreur.

<b>[Var1, Var2, ..., VarN] = readvars(filename, opts)</b> utilise les parametres definis dans l'objet d'options d'import <b>opts</b>. Tout argument supplementaire est transmis a <b>readtable</b>.

## 💡 Exemple

```matlab
filename = [tempdir, 'readvars_1.csv']; Names = {'John'; 'Alice'; 'Bob'; 'Diana'}; Age = [28; 34; 22; 30]; Height = [175; 160; 180; 165]; T = table(Names, Age, Height); writetable(T, filename) [N, A, H] = readvars(filename)
```

## 🔗 Voir aussi

[readtable](../spreadsheet/readtable.md), [readmatrix](../spreadsheet/readmatrix.md), [readcell](../spreadsheet/readcell.md), [detectImportOptions](../spreadsheet/detectImportOptions.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
