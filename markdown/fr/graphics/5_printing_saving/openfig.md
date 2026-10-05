# openfig

Ouvre un fichier FIG Nelson.

## 📝 Syntaxe

- openfig()
- openfig(filename)
- openfig(filename, copies)
- openfig(filename, visibility)
- openfig(filename, copies, visibility)
- fig = openfig(...)

## 📥 Argument d'entrée

- filename - Vecteur de caracteres ou chaine scalaire designant un fichier Nelson <b>.fig</b>. Si le nom n'a pas d'extension, <b>openfig</b> ajoute <b>.fig</b>. La valeur par defaut est <b>Untitled.fig</b>.
- copies - <b>'new'</b> ou <b>'reuse'</b>. La valeur par defaut est <b>'new'</b>. Utilisez <b>'reuse'</b> pour retourner une figure deja ouverte dont la propriete <b>FileName</b> correspond au fichier demande.
- visibility - <b>'visible'</b> ou <b>'invisible'</b>. Cette option remplace l'etat visible enregistre apres restauration ou reutilisation de la figure.

## 📤 Argument de sortie

- fig - Objet graphique figure ouvert ou tableau d'objets graphiques figure. Si le fichier contient plusieurs figures enregistrees, toutes les figures restaurees sont retournees.

## 📄 Description


<b>openfig()</b> ouvre <b>Untitled.fig</b>. 

<b>openfig(filename)</b> ouvre la ou les figures stockees dans <b>filename</b> et cree de nouveaux objets figure. 

<b>openfig(filename, 'new')</b> cree toujours de nouveaux objets figure. C'est le comportement par defaut. 

<b>openfig(filename, 'reuse')</b> cherche d'abord les figures ouvertes dont la propriete <b>FileName</b> correspond au chemin resolu. Si elles existent, elles sont retournees au lieu de charger une nouvelle copie. 

<b>openfig(filename, visibility)</b> ou <b>openfig(filename, copies, visibility)</b> controle si les figures restaurees ou reutilisees sont visibles. 

Chaque figure restauree recoit une propriete <b>FileName</b> egale au chemin <b>.fig</b> resolu. Cela permet aux appels suivants avec <b>'reuse'</b> de la retrouver. 

<b>Avertissement :</b> les fichiers <b>.fig</b> Nelson sont specifiques a Nelson. Les fichiers qui n'ont pas ete generes par Nelson ne sont pas pris en charge. 

Les objets restaures sont de nouveaux objets graphiques. La plupart des proprietes persistantes enregistrees par <b>savefig</b> sont restaurees, tandis que les valeurs par defaut courantes et l'etat d'execution peuvent encore influencer les figures creees.

## 💡 Exemples

Enregistrer une figure, la fermer, puis la rouvrir plus tard.

```matlab

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

```
Ouvrir une figure enregistree invisible en etat visible.

```matlab

f = figure('Visible', 'off');
plot(1:5);
figfile = [tempname(), '_visible_on_open.fig'];
savefig(f, figfile);
close(f);
restored = openfig(figfile, 'visible');
assert(strcmp(char(get(restored, 'Visible')), 'on'));
close(restored);

```
Reutiliser une figure deja ouverte.

```matlab

f = figure('Visible', 'off');
plot([3 1 4 1 5]);
figfile = [tempname(), '_reuse_example.fig'];
savefig(f, figfile);
close(f);
first = openfig(figfile, 'invisible');
second = openfig(figfile, 'reuse', 'invisible');
assert(isequal(first, second));
close(first);

```
Ouvrir un fichier contenant plusieurs figures.

```matlab

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

```


## 🔗 Voir aussi

[savefig](../../graphics/5_printing_saving/savefig.md), [figure](../../graphics/2_graphics_objects/1_object_management/figure.md), [close](../../graphics/2_graphics_objects/1_object_management/close.md), [loadnh5](../../hdf5/loadnh5.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
