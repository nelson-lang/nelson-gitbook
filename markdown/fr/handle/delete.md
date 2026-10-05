# delete

Supprime des objets handle ou des fichiers.

## 📝 Syntaxe

- delete(h)
- delete filename
- delete(filename)
- delete(filename1, ..., filenameN)
- delete(filenames)

## 📥 Argument d'entrée

- h - un objet handle : scalaire ou matrice.
- filename - un vecteur de caracteres ou une chaine scalaire : nom du fichier a supprimer. Le caractere generique \* est accepte.
- filenames - un tableau de chaines ou un tableau de cellules de vecteurs de caracteres : noms des fichiers a supprimer. Chaque element peut contenir le caractere generique \*.

## 📄 Description


<b>delete(h)</b> invalide les objets handle references par h et libere leurs ressources natives. 

Une fois supprimes, tous les alias vers les memes objets deviennent invalides. 

Pour les objets handle classdef, <b>delete</b> appelle la methode destructeur de la classe quand elle existe et notifie <b>ObjectBeingDestroyed</b> avant que l'objet devienne invalide. 

Pour les tableaux de handles, chaque element valide est invalide. 

Pour supprimer seulement une variable, utilisez la fonction [clear](../memory_manager/clear.md). Les autres alias restent valides jusqu'a l'appel a delete. 

<b>delete(filename)</b> supprime definitivement le fichier <b>filename</b> du disque. Les dossiers ne sont pas supprimes (voir <b>rmdir</b>). 

<b>delete(filenames)</b> supprime plusieurs fichiers donnes sous forme de tableau de chaines ou de tableau de cellules de vecteurs de caracteres. Plusieurs noms de fichiers peuvent aussi etre passes en arguments separes. 

Chaque nom de fichier peut contenir le caractere generique <b>\*</b>. Quand aucun fichier ne correspond a un nom, un avertissement (identifiant <b>Nelson:FileNotFound</b>) est affiche et les autres fichiers sont tout de meme supprimes.

## 💡 Exemples

Supprimer plusieurs fichiers avec un vecteur de noms de fichiers.

```matlab
d = tempname();
mkdir(d);
filewrite(fullfile(d, 'a.txt'), 'a');
filewrite(fullfile(d, 'b.txt'), 'b');
filewrite(fullfile(d, 'c.dat'), 'c');
delete({fullfile(d, 'a.txt'), fullfile(d, 'b.txt')});
delete(string(fullfile(d, "*.dat")));
dir(d)
rmdir(d);
```
Supprimer un tableau de handles classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_delete/'];
mkdir(d);
filewrite([d, '/NelsonHelpDeleteCounter.m'], ["classdef NelsonHelpDeleteCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpDeleteCounter();
b = NelsonHelpDeleteCounter();
h = [a, b];
delete(h);
isvalid(a)
isvalid(b)
```


## 🔗 Voir aussi

[clear](../memory_manager/clear.md), [classdef](../interpreter/classdef.md), [addlistener](../handle/addlistener.md), [rmfile](../files_folders_functions/rmfile.md), [rmdir](../files_folders_functions/rmdir.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | comportement des destructeurs handle classdef et des tableaux de handles documente |
| 2.0.0   | les fichiers peuvent etre supprimes avec un tableau de chaines ou un tableau de cellules de noms de fichiers |

<!--
## 👤 Auteur

Allan CORNET
-->
