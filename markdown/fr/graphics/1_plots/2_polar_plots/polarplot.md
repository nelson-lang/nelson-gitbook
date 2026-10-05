# polarplot

Trace des donnees en coordonnees polaires.

## 📝 Syntaxe

- polarplot(rho)
- polarplot(theta, rho)
- polarplot(theta, rho, LineSpec)
- polarplot(..., propertyName, propertyValue, ...)
- polarplot(ax, ...)
- go = polarplot(...)

## 📥 Argument d'entrée

- theta - Angles en radians : vecteur ou matrice.
- rho - Coordonnees radiales : vecteur ou matrice numerique reel.
- LineSpec - Style de ligne, marqueur et/ou couleur : vecteur de caracteres ou chaine scalaire.
- propertyName - Nom de propriete de ligne : chaine scalaire ou vecteur ligne de caracteres.
- propertyValue - Valeur affectee a la propriete de ligne precedente.
- ax - Axes polaires cible ou objet axes. Un axes classique est initialise comme axes polaire.

## 📤 Argument de sortie

- go - Vecteur colonne d'objets graphiques de type ligne.

## 📄 Description


<b>polarplot(theta, rho)</b> trace les valeurs de rayon <b>rho</b> aux angles <b>theta</b>. Les angles de donnees sont exprimes en radians. 

<b>polarplot(rho)</b> trace <b>rho</b> avec des angles regulierement espaces de 0 a 2\*pi. Si <b>rho</b> est complexe, <b>angle(rho)</b> est utilise pour les angles et <b>abs(rho)</b> pour les rayons. 

Si <b>rho</b> est une matrice, chaque colonne est tracee comme une ligne separee. Un vecteur <b>theta</b> peut etre combine avec une matrice <b>rho</b> quand sa longueur correspond a une dimension de <b>rho</b>. 

Les objets ligne retournes conservent les echantillons polaires dans leurs proprietes <b>ThetaData</b> et <b>RData</b>. Les donnees cartesiennes <b>XData</b> et <b>YData</b> sont gerees par le rendu polaire. 

Les fonctions de limites et de graduations angulaires utilisent les degres : <b>thetalim</b>, <b>thetaticks</b> et <b>thetaticklabels</b>. 

Quand aucun axes polaire n'est courant, <b>polarplot</b> en cree un. Si un axes classique est fourni, il est initialise comme axes polaire.

## 💡 Exemples

Tracer une courbe polaire avec une specification de ligne.

```matlab

theta = linspace(0, 2*pi, 200);
rho = 1 + 0.5*cos(4*theta);
polarplot(theta, rho, 'r-', 'LineWidth', 2);

```
<img src="polarplot_1.svg" align="middle"/>
Tracer plusieurs colonnes de rayons sur le meme axes polaire.

```matlab

theta = linspace(0, 2*pi, 100)';
rho = [sin(theta).^2, cos(theta).^2];
go = polarplot(theta, rho);
rticks([0 0.5 1]);
thetaticks(0:45:360);

```
Utiliser un axes polaire explicite.

```matlab

f = figure();
ax = polaraxes('Parent', f);
polarplot(ax, linspace(0, pi, 50), linspace(0, 2, 50), 'o-');
rlim(ax, [0 2]);
thetalim(ax, [0 180]);

```


## 🔗 Voir aussi

[polaraxes](../../../graphics/1_plots/2_polar_plots/polaraxes.md), [rlim](../../../graphics/3_labels_styling/1_axes_appearance/rlim.md), [rticks](../../../graphics/3_labels_styling/1_axes_appearance/rticks.md), [thetalim](../../../graphics/3_labels_styling/1_axes_appearance/thetalim.md), [thetaticks](../../../graphics/3_labels_styling/1_axes_appearance/thetaticks.md), [plot](../../../graphics/1_plots/1_line_plots/plot.md), [line](../../../graphics/1_plots/1_line_plots/line.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
