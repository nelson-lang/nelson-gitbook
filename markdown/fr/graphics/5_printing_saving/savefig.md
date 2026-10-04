# savefig

Enregistre une figure dans un fichier FIG Nelson.

## 📝 Syntaxe

- savefig()
- savefig(filename)
- savefig(fig, filename)
- savefig(fig, filename, version)

## 📥 Argument d'entrée

- fig - Objet graphique figure ou tableau d'objets graphiques figure. Chaque element doit etre une figure valide.
- filename - Vecteur de caracteres ou chaine scalaire. Si le nom n'a pas d'extension, <b>savefig</b> ajoute <b>.fig</b>. Les autres extensions sont rejetees.
- version - Option acceptee pour compatibilite syntaxique : <b>'-v7.3'</b>, <b>'-v7'</b> ou <b>'-v6'</b>. Nelson enregistre le meme format FIG Nelson pour chaque valeur.

## 📄 Description

<b>savefig()</b> enregistre la figure courante retournee par <b>gcf()</b> dans <b>Untitled.fig</b>.

<b>savefig(filename)</b> enregistre la figure courante dans <b>filename</b>.

<b>savefig(fig, filename)</b> enregistre la figure indiquee, ou un tableau de figures, dans un seul fichier.

<b>savefig(fig, filename, version)</b> accepte une option de version pour compatibilite syntaxique. Cette option ne change pas le format du fichier Nelson.

Le fichier enregistre contient une charge utile de figure Nelson dans un conteneur HDF5/NH5. Il est destine a rouvrir des figures avec <b>openfig</b>, avec leur arbre d'objets graphiques et les proprietes persistantes prises en charge.

<b>Avertissement :</b> les fichiers <b>.fig</b> Nelson sont specifiques a Nelson. Ils ne sont pas compatibles avec les fichiers <b>.fig</b> qui n'ont pas ete generes par Nelson, et Nelson ne garantit pas l'ouverture de fichiers <b>.fig</b> externes.

<b>savefig</b> enregistre des figures completes. Pour exporter une image bitmap ou vectorielle, utilisez les fonctions d'export d'image comme <b>saveas</b> lorsqu'elles sont disponibles. Pour sauvegarder des variables de l'espace de travail, utilisez les fonctions de sauvegarde de donnees.

Les valeurs d'execution comme les handles graphiques places dans des proprietes arbitraires et les function handles ne sont pas restaurees comme etat portable de figure.

## 💡 Exemples

Enregistrer la figure courante et la rouvrir.

```matlab

f = figure('Visible', 'off');
plot(1:5, [1 4 9 16 25]);
title('Donnees quadratiques');
figfile = [tempname(), '_quadratic.fig'];
savefig(figfile);
close(f);
restored = openfig(figfile, 'invisible');
assert(isgraphics(restored, 'figure'));
close(restored);

```

Enregistrer avec ajout automatique de l'extension .fig.

```matlab

f = figure('Visible', 'off');
plot(1:3);
figfile = [tempname(), '_auto_extension'];
savefig(f, figfile);
assert(isfile([figfile, '.fig']));
close(f);

```

Enregistrer plusieurs figures dans un seul fichier.

```matlab

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

```

Utiliser une option de version acceptee pour compatibilite.

```matlab

f = figure('Visible', 'off');
surf(peaks());
figfile = [tempname(), '_surface.fig'];
savefig(f, figfile, '-v7.3');
close(f);

```

## 🔗 Voir aussi

[openfig](../../graphics/5_printing_saving/openfig.md), [gcf](../../graphics/2_graphics_objects/1_object_management/gcf.md), [saveas](../../graphics_io/saveas.md), [savenh5](../../hdf5/savenh5.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
