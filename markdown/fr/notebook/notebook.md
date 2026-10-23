# notebook

Exécute un document Notebook.

## 📝 Syntaxe

- notebook(filename)
- tf = notebook(filename)

## 📥 Argument d'entrée

- filename - un vecteur de caractères ou une chaîne scalaire : un document Notebook (<b>.nlx</b>) ou un fichier Notebook au format texte (<b>.m</b>).

## 📤 Argument de sortie

- tf - un logique : <b>true</b> si le document a été exécuté.

## 📄 Description


<b>notebook</b> exécute un document Notebook sans l'éditeur : il lit le code de chaque cellule, dans l'ordre, et l'évalue dans l'espace de travail de base. Les variables créées dans une cellule sont visibles dans la suivante, comme lors de l'exécution du document dans l'éditeur. 

Le conteneur natif <b>.nlx</b> (un zip contenant le document) et le format texte <b>.m</b> sont pris en charge ; un script <b>.m</b> ordinaire est exécuté comme une seule cellule.

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
