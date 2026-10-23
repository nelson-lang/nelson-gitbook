#import "nelson_help.typ": *

= notebook <notebook:notebook>

Exécute un document Notebook.

== Syntaxe

- #raw("notebook(filename)");
- #raw("tf = notebook(filename)");

== Argument d'entrée

/ filename: un vecteur de caractères ou une chaîne scalaire : un document Notebook (#strong[.nlx];) ou un fichier Notebook au format texte (#strong[.m];).

== Argument de sortie

/ tf: un logique : #strong[true]; si le document a été exécuté.

== Description

#strong[notebook]; exécute un document Notebook sans l'éditeur : il lit le code de chaque cellule, dans l'ordre, et l'évalue dans l'espace de travail de base. Les variables créées dans une cellule sont visibles dans la suivante, comme lors de l'exécution du document dans l'éditeur.

 Le conteneur natif #strong[.nlx]; (un zip contenant le document) et le format texte #strong[.m]; sont pris en charge ; un script #strong[.m]; ordinaire est exécuté comme une seule cellule.


== Exemple

``````matlab
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
``````


== Voir aussi

#nlink(<notebook:nlx>)[nlx];, #nlink(<core:run>)[run];, #nlink(<text_editor:edit>)[edit];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
