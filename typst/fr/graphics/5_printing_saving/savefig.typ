#import "../nelson_help.typ": *

= savefig <graphics:5_printing_saving.savefig>

Enregistre une figure dans un fichier FIG Nelson.

== Syntaxe

- #raw("savefig()");
- #raw("savefig(filename)");
- #raw("savefig(fig, filename)");
- #raw("savefig(fig, filename, version)");

== Argument d'entrée

/ fig: Objet graphique figure ou tableau d'objets graphiques figure. Chaque element doit etre une figure valide.
/ filename: Vecteur de caracteres ou chaine scalaire. Si le nom n'a pas d'extension, #strong[savefig]; ajoute #strong[.fig];. Les autres extensions sont rejetees.
/ version: Option acceptee pour compatibilite syntaxique : #strong['-v7.3'];, #strong['-v7']; ou #strong['-v6'];. Nelson enregistre le meme format FIG Nelson pour chaque valeur.

== Description

#strong[savefig()]; enregistre la figure courante retournee par #strong[gcf()]; dans #strong[Untitled.fig];.

 #strong[savefig(filename)]; enregistre la figure courante dans #strong[filename];.

 #strong[savefig(fig, filename)]; enregistre la figure indiquee, ou un tableau de figures, dans un seul fichier.

 #strong[savefig(fig, filename, version)]; accepte une option de version pour compatibilite syntaxique. Cette option ne change pas le format du fichier Nelson.

 Le fichier enregistre contient une charge utile de figure Nelson dans un conteneur HDF5\/NH5. Il est destine a rouvrir des figures avec #strong[openfig];, avec leur arbre d'objets graphiques et les proprietes persistantes prises en charge.

 #strong[Avertissement :]; les fichiers #strong[.fig]; Nelson sont specifiques a Nelson. Ils ne sont pas compatibles avec les fichiers #strong[.fig]; qui n'ont pas ete generes par Nelson, et Nelson ne garantit pas l'ouverture de fichiers #strong[.fig]; externes.

 #strong[savefig]; enregistre des figures completes. Pour exporter une image bitmap ou vectorielle, utilisez les fonctions d'export d'image comme #strong[saveas]; lorsqu'elles sont disponibles. Pour sauvegarder des variables de l'espace de travail, utilisez les fonctions de sauvegarde de donnees.

 Les valeurs d'execution comme les handles graphiques places dans des proprietes arbitraires et les function handles ne sont pas restaurees comme etat portable de figure.


== Exemples

Enregistrer la figure courante et la rouvrir.

``````matlab

f = figure('Visible', 'off');
plot(1:5, [1 4 9 16 25]);
title('Donnees quadratiques');
figfile = [tempname(), '_quadratic.fig'];
savefig(figfile);
close(f);
restored = openfig(figfile, 'invisible');
assert(isgraphics(restored, 'figure'));
close(restored);

``````

Enregistrer avec ajout automatique de l'extension .fig.

``````matlab

f = figure('Visible', 'off');
plot(1:3);
figfile = [tempname(), '_auto_extension'];
savefig(f, figfile);
assert(isfile([figfile, '.fig']));
close(f);

``````

Enregistrer plusieurs figures dans un seul fichier.

``````matlab

figs(1) = figure('Visible', 'off');
plot(1:4);
figs(2) = figure('Visible', 'off');
bar([2 4 3]);
figfile = [tempname(), '_two_figures.fig'];
savefig(figs, figfile);
close(figs);
restored = openfig(figfile, 'invisible');
assert(isequal(numel(restored), 2));
close(restored);

``````

Utiliser une option de version acceptee pour compatibilite.

``````matlab

f = figure('Visible', 'off');
surf(peaks());
figfile = [tempname(), '_surface.fig'];
savefig(f, figfile, '-v7.3');
close(f);

``````


== Voir aussi

#nlink(<graphics:5_printing_saving.openfig>)[openfig];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics_io:saveas>)[saveas];, #nlink(<hdf5:savenh5>)[savenh5];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
