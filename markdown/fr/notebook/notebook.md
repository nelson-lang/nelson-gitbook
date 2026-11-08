# notebook

Exécute un document Notebook ou ouvre l'éditeur Notebook.

## 📝 Syntaxe

- notebook()
- notebook(filename)
- notebook(filename, 'edit')
- tf = notebook(...)

## 📥 Argument d'entrée

- filename - un vecteur de caractères ou une chaîne scalaire : un document Notebook (<b>.nlx</b>) ou un fichier Notebook au format texte (<b>.m</b>).
- 'edit' - ouvre le document dans l'éditeur Notebook au lieu de l'exécuter.

## 📤 Argument de sortie

- tf - un logique : <b>true</b> si le document a été exécuté ou ouvert.

## 📄 Description


<b>notebook</b> exécute un document Notebook sans l'éditeur : il lit le code de chaque cellule, dans l'ordre, et l'évalue dans l'espace de travail de base. Les variables créées dans une cellule sont visibles dans la suivante, comme lors de l'exécution du document dans l'éditeur. 

Le conteneur natif <b>.nlx</b> (un zip contenant le document) et le format texte <b>.m</b> sont pris en charge ; un script <b>.m</b> ordinaire est exécuté comme une seule cellule. 

<b>notebook(filename, 'edit')</b> ouvre au contraire le document dans l'éditeur Notebook : un onglet du bureau web ou, dans le bureau Qt, la fenêtre Notebook (une seule fenêtre, un onglet par document). <b>edit(filename)</b> fait de même pour un fichier <b>.nlx</b>. Les figures créées par une cellule sont rendues dans le document, pas dans une fenêtre figure. 

<b>notebook()</b> sans argument ouvre un nouveau document sans titre dans l'éditeur Notebook ; le bureau Qt le propose aussi par le bouton <b>Notebook</b> de sa barre d'outils et une entrée de son menu Fenêtre. Sans bureau (nelson-cli, nelson-adv-cli), l'ouverture de l'éditeur lève une erreur.

## 💡 Exemple



```matlab
% construit un document Notebook (.nlx) minimal et l'exécute
d = [tempdir(), createGUID()];
mkdir(d);
fw = fopen([d, '/document.json'], 'wt');
fwrite(fw, '{"blocks":[{"type":"codecell","props":{"code":"a = 40 + 2;"}}]}');
fclose(fw);
nlx = [tempdir(), createGUID(), '.nlx'];
odir = pwd();
cd(d);
zip(nlx, 'document.json');
cd(odir);
notebook(nlx);
a
```


## 🔗 Voir aussi

[nlx](../notebook/nlx.md), [run](../core/run.md), [edit](../text_editor/edit.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
