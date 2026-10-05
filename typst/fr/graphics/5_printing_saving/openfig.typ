#import "../nelson_help.typ": *

= openfig <graphics:5_printing_saving.openfig>

Ouvre un fichier FIG Nelson.

== Syntaxe

- #raw("openfig()");
- #raw("openfig(filename)");
- #raw("openfig(filename, copies)");
- #raw("openfig(filename, visibility)");
- #raw("openfig(filename, copies, visibility)");
- #raw("fig = openfig(...)");

== Argument d'entrée

/ filename: Vecteur de caracteres ou chaine scalaire designant un fichier Nelson #strong[.fig];. Si le nom n'a pas d'extension, #strong[openfig]; ajoute #strong[.fig];. La valeur par defaut est #strong[Untitled.fig];.
/ copies: #strong['new']; ou #strong['reuse'];. La valeur par defaut est #strong['new'];. Utilisez #strong['reuse']; pour retourner une figure deja ouverte dont la propriete #strong[FileName]; correspond au fichier demande.
/ visibility: #strong['visible']; ou #strong['invisible'];. Cette option remplace l'etat visible enregistre apres restauration ou reutilisation de la figure.

== Argument de sortie

/ fig: Objet graphique figure ouvert ou tableau d'objets graphiques figure. Si le fichier contient plusieurs figures enregistrees, toutes les figures restaurees sont retournees.

== Description

#strong[openfig()]; ouvre #strong[Untitled.fig];.

 #strong[openfig(filename)]; ouvre la ou les figures stockees dans #strong[filename]; et cree de nouveaux objets figure.

 #strong[openfig(filename, 'new')]; cree toujours de nouveaux objets figure. C'est le comportement par defaut.

 #strong[openfig(filename, 'reuse')]; cherche d'abord les figures ouvertes dont la propriete #strong[FileName]; correspond au chemin resolu. Si elles existent, elles sont retournees au lieu de charger une nouvelle copie.

 #strong[openfig(filename, visibility)]; ou #strong[openfig(filename, copies, visibility)]; controle si les figures restaurees ou reutilisees sont visibles.

 Chaque figure restauree recoit une propriete #strong[FileName]; egale au chemin #strong[.fig]; resolu. Cela permet aux appels suivants avec #strong['reuse']; de la retrouver.

 #strong[Avertissement :]; les fichiers #strong[.fig]; Nelson sont specifiques a Nelson. Les fichiers qui n'ont pas ete generes par Nelson ne sont pas pris en charge.

 Les objets restaures sont de nouveaux objets graphiques. La plupart des proprietes persistantes enregistrees par #strong[savefig]; sont restaurees, tandis que les valeurs par defaut courantes et l'etat d'execution peuvent encore influencer les figures creees.


== Exemples

Enregistrer une figure, la fermer, puis la rouvrir plus tard.

``````matlab

x = linspace(0, 10);
y = sin(x);
f = figure('Visible', 'off');
plot(x, y);
title('Sine Wave');
xlabel('x ranges from 0 to 10');
ylabel('y = sin(x)');
figfile = [tempname(), '_SineWave.fig'];
savefig(f, figfile);
close(f);
restored = openfig(figfile, 'invisible');
assert(isgraphics(restored, 'figure'));
close(restored);

``````

Ouvrir une figure enregistree invisible en etat visible.

``````matlab

f = figure('Visible', 'off');
plot(1:5);
figfile = [tempname(), '_visible_on_open.fig'];
savefig(f, figfile);
close(f);
restored = openfig(figfile, 'visible');
assert(strcmp(char(get(restored, 'Visible')), 'on'));
close(restored);

``````

Reutiliser une figure deja ouverte.

``````matlab

f = figure('Visible', 'off');
plot([3 1 4 1 5]);
figfile = [tempname(), '_reuse_example.fig'];
savefig(f, figfile);
close(f);
first = openfig(figfile, 'invisible');
second = openfig(figfile, 'reuse', 'invisible');
assert(isequal(first, second));
close(first);

``````

Ouvrir un fichier contenant plusieurs figures.

``````matlab

figs(1) = figure('Visible', 'off');
plot(1:4);
figs(2) = figure('Visible', 'off');
stairs([4 2 3]);
figfile = [tempname(), '_many_figures.fig'];
savefig(figs, figfile);
close(figs);
restored = openfig(figfile, 'invisible');
assert(isequal(numel(restored), 2));
close(restored);

``````


== Voir aussi

#nlink(<graphics:5_printing_saving.savefig>)[savefig];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close];, #nlink(<hdf5:loadnh5>)[loadnh5];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
