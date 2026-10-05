# Fonctions graphiques


    
Le module graphique fournit des fonctions pour créer, personnaliser et gérer des graphiques, figures, palettes de couleurs et objets graphiques.

    
Il inclut la visualisation 2D et 3D, des outils d'interaction utilisateur (zoom, déplacement, rotation), et              des utilitaires pour travailler avec les couleurs, légendes, axes et annotations de texte.

  

## Fonctions de traces 2-D et 3-D


    
Fonctions regroupees par type de visualisation, notamment les lignes, distributions, donnees discretes, graphiques polaires, contours, champs de vecteurs, surfaces, volumes, polygones et animations.

  

### Courbes


    
Fonctions pour les courbes, les traces de fonctions et les traces avec barres d'erreur.

  

#### Functions

- [errorbar](1_plots/1_line_plots/errorbar.md) - Trace des donnees avec barres d'erreur.
- [fplot](1_plots/1_line_plots/fplot.md) - Trace une expression ou une fonction parametrique.
- [fplot3](1_plots/1_line_plots/fplot3.md) - Tracer une courbe parametrique 3-D depuis des handles de fonctions.
- [line](1_plots/1_line_plots/line.md) - Crée une ligne primitive.
- [loglog](1_plots/1_line_plots/loglog.md) - Tracé en échelle log-log.
- [plot](1_plots/1_line_plots/plot.md) - Tracé linéaire 2D.
- [plot3](1_plots/1_line_plots/plot3.md) - Tracé de courbe 3D.
- [semilogx](1_plots/1_line_plots/semilogx.md) - Graphique semi-logarithmique (axe x en échelle logarithmique).
- [semilogy](1_plots/1_line_plots/semilogy.md) - Graphique semi-logarithmique (axe y en échelle logarithmique).
- [xline](1_plots/1_line_plots/xline.md) - Ligne constante verticale.
- [yline](1_plots/1_line_plots/yline.md) - Ligne constante horizontale.

### Graphiques polaires


    
Fonctions pour creer et configurer des graphiques polaires.

  

#### Functions

- [fpolarplot](1_plots/2_polar_plots/fpolarplot.md) - Trace une fonction en coordonnees polaires.
- [polaraxes](1_plots/2_polar_plots/polaraxes.md) - Cree des axes configures pour les traces polaires.
- [polarbubblechart](1_plots/2_polar_plots/polarbubblechart.md) - Affiche un graphique a bulles en coordonnees polaires.
- [polarhistogram](1_plots/2_polar_plots/polarhistogram.md) - Affiche des angles sous forme d'histogramme polaire.
- [polarplot](1_plots/2_polar_plots/polarplot.md) - Trace des donnees en coordonnees polaires.
- [polarscatter](1_plots/2_polar_plots/polarscatter.md) - Affiche des points en coordonnees polaires.

### Graphiques de contours


    
Fonctions pour le calcul de contours, les graphiques de contours et leurs etiquettes.

  

#### Functions

- [clabel](1_plots/3_contour_plots/clabel.md) - Étiquetage des contours
- [contour](1_plots/3_contour_plots/contour.md) - Tracé de contours d'une matrice
- [contour3](1_plots/3_contour_plots/contour3.md) - Tracé de contours 3D d'une matrice
- [contourc](1_plots/3_contour_plots/contourc.md) - Calcul de matrice de contours
- [contourf](1_plots/3_contour_plots/contourf.md) - Trace de contours remplis d'une matrice
- [fcontour](1_plots/3_contour_plots/fcontour.md) - Tracer des contours depuis une fonction de deux variables.

### Graphiques de distribution de donnees


    
Fonctions pour les histogrammes, nuages de points, graphiques de distribution et visualisations de synthese de donnees.

  

#### Functions

- [binscatter](1_plots/4_data_distribution_plots/binscatter.md) - Afficher un nuage de points regroupe par bins.
- [boxchart](1_plots/4_data_distribution_plots/boxchart.md) - Afficher une boite a moustaches pour donnees numeriques groupees.
- [boxplot](1_plots/4_data_distribution_plots/boxplot.md) - Afficher des boites a moustaches pour des donnees numeriques.
- [bubblechart](1_plots/4_data_distribution_plots/bubblechart.md) - Afficher un graphique a bulles.
- [bubblechart3](1_plots/4_data_distribution_plots/bubblechart3.md) - Afficher un graphique a bulles 3-D.
- [bubblecloud](1_plots/4_data_distribution_plots/bubblecloud.md) - Afficher des bulles etiquetees dans une disposition en nuage.
- [bubblelegend](1_plots/4_data_distribution_plots/bubblelegend.md) - Ajoute une legende de taille de bulles.
- [bubblelim](1_plots/4_data_distribution_plots/bubblelim.md) - Definit ou retourne les limites des donnees de taille des bulles.
- [bubblesize](1_plots/4_data_distribution_plots/bubblesize.md) - Definit ou retourne la plage des diametres affiches des bulles.
- [heatmap](1_plots/4_data_distribution_plots/heatmap.md) - Creer une carte de chaleur depuis une matrice numerique ou une table.
- [hist](1_plots/4_data_distribution_plots/hist.md) - Tracé d'histogramme.
- [histogram](1_plots/4_data_distribution_plots/histogram.md) - Crée un histogramme.
- [histogram2](1_plots/4_data_distribution_plots/histogram2.md) - Cree un histogramme bivarie.
- [parallelplot](1_plots/4_data_distribution_plots/parallelplot.md) - Affiche un graphique en coordonnees paralleles.
- [plotmatrix](1_plots/4_data_distribution_plots/plotmatrix.md) - Affiche une matrice de graphiques deux a deux.
- [raincloudplot](1_plots/4_data_distribution_plots/raincloudplot.md) - Visualiser des donnees numeriques groupees avec des graphiques en nuage de pluie.
- [scatter](1_plots/4_data_distribution_plots/scatter.md) - Nuage de points.
- [scatter3](1_plots/4_data_distribution_plots/scatter3.md) - Nuage de points 3D.
- [scatterhistogram](1_plots/4_data_distribution_plots/scatterhistogram.md) - Affiche un nuage de points avec histogrammes marginaux.
- [spy](1_plots/4_data_distribution_plots/spy.md) - Visualiser le motif de parcimonie d'une matrice.
- [stackedplot](1_plots/4_data_distribution_plots/stackedplot.md) - Trace des variables dans des axes empiles.
- [swarmchart](1_plots/4_data_distribution_plots/swarmchart.md) - Afficher un swarm chart 2-D.
- [swarmchart3](1_plots/4_data_distribution_plots/swarmchart3.md) - Afficher un swarm chart 3-D.
- [violinplot](1_plots/4_data_distribution_plots/violinplot.md) - Afficher des distributions sous forme de violons.
- [wordcloud](1_plots/4_data_distribution_plots/wordcloud.md) - Afficher des mots avec des tailles proportionnelles aux poids.

### Champs de vecteurs


    
Fonctions pour les champs de vecteurs et les visualisations de flux.

  

#### Functions

- [compass](1_plots/5_vector_fields/compass.md) - Afficher des fleches depuis l'origine sur une grille polaire.
- [compassplot](1_plots/5_vector_fields/compassplot.md) - Affiche des vecteurs depuis l'origine en coordonnees polaires.
- [coneplot](1_plots/5_vector_fields/coneplot.md) - Afficher des directions vectorielles 3-D avec des fleches de style cone.
- [feather](1_plots/5_vector_fields/feather.md) - Afficher des vecteurs depuis une ligne de base.
- [quiver](1_plots/5_vector_fields/quiver.md) - Trace de champ vectoriel 2-D.
- [quiver3](1_plots/5_vector_fields/quiver3.md) - Trace de champ vectoriel 3-D.
- [stream2](1_plots/5_vector_fields/stream2.md) - Calculer les sommets de lignes de courant 2-D depuis un champ vectoriel.
- [stream3](1_plots/5_vector_fields/stream3.md) - Calculer les sommets de lignes de courant 3-D depuis un champ vectoriel.
- [streamline](1_plots/5_vector_fields/streamline.md) - Afficher des lignes de courant depuis un champ vectoriel.
- [streamparticles](1_plots/5_vector_fields/streamparticles.md) - Afficher des marqueurs de particules le long de chemins de courant.
- [streamribbon](1_plots/5_vector_fields/streamribbon.md) - Afficher des chemins de courant avec un style ruban.
- [streamslice](1_plots/5_vector_fields/streamslice.md) - Afficher la direction d'un champ vectoriel sur un plan.
- [streamtube](1_plots/5_vector_fields/streamtube.md) - Afficher des chemins de courant avec un style tube.

### Graphiques de donnees discretes


    
Fonctions pour les diagrammes en barres, traces en tiges, diagrammes circulaires et autres affichages de donnees discretes.

  

#### Functions

- [bar](1_plots/6_discrete_data_plots/bar.md) - Diagramme en barres.
- [bar3](1_plots/6_discrete_data_plots/bar3.md) - Afficher un diagramme en barres verticales 3-D.
- [bar3h](1_plots/6_discrete_data_plots/bar3h.md) - Afficher un diagramme en barres horizontales 3-D.
- [barh](1_plots/6_discrete_data_plots/barh.md) - Diagramme en barres horizontales.
- [donutchart](1_plots/6_discrete_data_plots/donutchart.md) - Objet graphique en anneau.
- [pareto](1_plots/6_discrete_data_plots/pareto.md) - Afficher un diagramme de Pareto.
- [pie](1_plots/6_discrete_data_plots/pie.md) - Ancien graphique en secteurs (camembert).
- [piechart](1_plots/6_discrete_data_plots/piechart.md) - Objet graphique en secteurs.
- [stairs](1_plots/6_discrete_data_plots/stairs.md) - Graphique en escalier.
- [stem](1_plots/6_discrete_data_plots/stem.md) - Tracer des données discrètes.
- [stem3](1_plots/6_discrete_data_plots/stem3.md) - Afficher un trace en tiges 3-D.

### Surfaces, volumes et polygones


    
Fonctions pour les surfaces, maillages, volumes, zones remplies et graphiques polygonaux.

  

#### Functions

- [area](1_plots/7_surfaces_volumes_polygons/area.md) - Creer des graphes d'aires.
- [contourslice](1_plots/7_surfaces_volumes_polygons/contourslice.md) - Afficher des lignes de contour sur des coupes de volume.
- [cylinder](1_plots/7_surfaces_volumes_polygons/cylinder.md) - Créer un cylindre.
- [fill](1_plots/7_surfaces_volumes_polygons/fill.md) - Créer des formes 2D remplies.
- [fill3](1_plots/7_surfaces_volumes_polygons/fill3.md) - Creer des patchs 3-D remplis.
- [fimplicit](1_plots/7_surfaces_volumes_polygons/fimplicit.md) - Tracer une courbe de fonction implicite.
- [fimplicit3](1_plots/7_surfaces_volumes_polygons/fimplicit3.md) - Tracer une approximation de surface implicite 3-D.
- [fmesh](1_plots/7_surfaces_volumes_polygons/fmesh.md) - Tracer un maillage depuis une fonction de deux variables.
- [fsurf](1_plots/7_surfaces_volumes_polygons/fsurf.md) - Trace une surface definie par une fonction.
- [isonormals](1_plots/7_surfaces_volumes_polygons/isonormals.md) - Calculer les normales des sommets d'une isosurface.
- [isosurface](1_plots/7_surfaces_volumes_polygons/isosurface.md) - Extraire une isosurface depuis des donnees volumiques.
- [mesh](1_plots/7_surfaces_volumes_polygons/mesh.md) - Tracé de surface en maillage (mesh).
- [meshc](1_plots/7_surfaces_volumes_polygons/meshc.md) - Afficher un maillage avec des contours en dessous.
- [meshz](1_plots/7_surfaces_volumes_polygons/meshz.md) - Tracé de surface en maillage (mesh) avec rideau.
- [patch](1_plots/7_surfaces_volumes_polygons/patch.md) - Créer des patchs de polygones colorés
- [pcolor](1_plots/7_surfaces_volumes_polygons/pcolor.md) - Graphique en pseudo-couleurs.
- [rectangle](1_plots/7_surfaces_volumes_polygons/rectangle.md) - Cree un rectangle a coins droits, arrondis ou courbes
- [ribbon](1_plots/7_surfaces_volumes_polygons/ribbon.md) - Graphique en ruban.
- [shrinkfaces](1_plots/7_surfaces_volumes_polygons/shrinkfaces.md) - Reduire la taille des faces d'un patch.
- [slice](1_plots/7_surfaces_volumes_polygons/slice.md) - Afficher des coupes orthogonales dans des donnees volumiques.
- [smooth3](1_plots/7_surfaces_volumes_polygons/smooth3.md) - Lisser des donnees 3-D.
- [sphere](1_plots/7_surfaces_volumes_polygons/sphere.md) - Créer une sphère.
- [surf](1_plots/7_surfaces_volumes_polygons/surf.md) - tracé de surface.
- [surface](1_plots/7_surfaces_volumes_polygons/surface.md) - Tracé de surface primitif.
- [surfc](1_plots/7_surfaces_volumes_polygons/surfc.md) - Afficher une surface avec des contours en dessous.
- [surfl](1_plots/7_surfaces_volumes_polygons/surfl.md) - Afficher une surface eclairee.
- [surfnorm](1_plots/7_surfaces_volumes_polygons/surfnorm.md) - Calculer ou afficher les vecteurs normaux d'une surface.
- [triplot](1_plots/7_surfaces_volumes_polygons/triplot.md) - Trace de triangles 2-D
- [trisurf](1_plots/7_surfaces_volumes_polygons/trisurf.md) - Trace de surface triangulaire
- [waterfall](1_plots/7_surfaces_volumes_polygons/waterfall.md) - graphique en cascade.

### Animation


    
Fonctions pour les graphiques animes et les mises a jour dynamiques de points.

  

#### Functions

- [addpoints](1_plots/8_animation/addpoints.md) - Ajouter des points a une ligne animee.
- [animatedline](1_plots/8_animation/animatedline.md) - Creer une ligne animee.
- [clearpoints](1_plots/8_animation/clearpoints.md) - Effacer les points d'une ligne animee.
- [comet](1_plots/8_animation/comet.md) - Creer un trace comete 2-D.
- [comet3](1_plots/8_animation/comet3.md) - Creer un trace comete 3-D.
- [getpoints](1_plots/8_animation/getpoints.md) - Retourner les points d'une ligne animee.

## Objets graphiques


    
Fonctions et pages de reference pour la gestion des objets graphiques, objets de disposition, objets d'interface utilisateur et proprietes d'objets.

  

### Gestion des objets graphiques


    
Fonctions pour creer, rechercher, interroger, effacer et fermer des objets graphiques.

  

#### Functions

- [allchild](2_graphics_objects/1_object_management/allchild.md) - Retourne tous les enfants directs d'objets graphiques.
- [ancestor](2_graphics_objects/1_object_management/ancestor.md) - Ancêtre d'un objet graphique.
- [axes](2_graphics_objects/1_object_management/axes.md) - Créer des axes cartésiens.
- [cla](2_graphics_objects/1_object_management/cla.md) - Efface les axes.
- [clf](2_graphics_objects/1_object_management/clf.md) - Efface la figure.
- [close](2_graphics_objects/1_object_management/close.md) - Ferme une ou plusieurs figures
- [figure](2_graphics_objects/1_object_management/figure.md) - Crée une fenêtre figure.
- [findall](2_graphics_objects/1_object_management/findall.md) - Trouve des objets graphiques, y compris les handles caches.
- [findobj](2_graphics_objects/1_object_management/findobj.md) - Trouve des objets graphiques avec des proprietes donnees.
- [gca](2_graphics_objects/1_object_management/gca.md) - Récupère l'objet axes courant.
- [gcf](2_graphics_objects/1_object_management/gcf.md) - Récupère l'objet figure courant.
- [groot](2_graphics_objects/1_object_management/groot.md) - Objet racine graphique.
- [hggroup](2_graphics_objects/1_object_management/hggroup.md) - Créer un objet groupe.
- [hold](2_graphics_objects/1_object_management/hold.md) - Conserver le tracé courant lors de l'ajout de nouveaux tracés.
- [is2D](2_graphics_objects/1_object_management/is2D.md) - Vérifie si ax est un axe 2D polaire ou cartésien.
- [isValidGraphicsProperty](2_graphics_objects/1_object_management/isValidGraphicsProperty.md) - Vérifie si le nom de propriété est valide.
- [isgraphics](2_graphics_objects/1_object_management/isgraphics.md) - Vérifie si l'objet est graphique.
- [ishold](2_graphics_objects/1_object_management/ishold.md) - Obtient l'état actuel du mode hold.
- [newplot](2_graphics_objects/1_object_management/newplot.md) - Préparer la création d'un nouveau graphique.

### Objets de disposition


    
Fonctions pour organiser plusieurs graphiques et travailler avec les dispositions en tuiles.

  

#### Functions

- [nexttile](2_graphics_objects/2_layout_objects/nexttile.md) - Créer des axes dans une disposition en mosaïque.
- [subplot](2_graphics_objects/2_layout_objects/subplot.md) - Créer des axes en positions mosaïques.
- [tiledlayout](2_graphics_objects/2_layout_objects/tiledlayout.md) - Créer une disposition en mosaïque.
- [tilenum](2_graphics_objects/2_layout_objects/tilenum.md) - Obtenir le numéro de tuile à partir d'indices ligne-colonne ou d'un objet graphique.
- [tilerowcol](2_graphics_objects/2_layout_objects/tilerowcol.md) - Obtenir les indices ligne et colonne à partir d'un numéro de tuile ou d'un objet graphique.

### Objets d'interface utilisateur


    
Fonctions pour les controles d'interface utilisateur, menus et menus contextuels.

  

#### Functions

- [uiaxes](2_graphics_objects/3_ui_controls/uiaxes.md) - Crée des axes pour les applications de style App Designer.
- [uibutton](2_graphics_objects/3_ui_controls/uibutton.md) - Crée un bouton poussoir ou un bouton à état.
- [uibuttongroup](2_graphics_objects/3_ui_controls/uibuttongroup.md) - Crée un groupe de boutons.
- [uicheckbox](2_graphics_objects/3_ui_controls/uicheckbox.md) - Crée une case à cocher.
- [uicontextmenu](2_graphics_objects/3_ui_controls/uicontextmenu.md) - Creer un objet graphique de menu contextuel.
- [uicontrol](2_graphics_objects/3_ui_controls/uicontrol.md) - Créer un composant d'interface utilisateur.
- [uidatepicker](2_graphics_objects/3_ui_controls/uidatepicker.md) - Crée un sélecteur de date.
- [uidropdown](2_graphics_objects/3_ui_controls/uidropdown.md) - Crée une liste déroulante.
- [uieditfield](2_graphics_objects/3_ui_controls/uieditfield.md) - Crée un champ d'édition texte ou numérique.
- [uigauge](2_graphics_objects/3_ui_controls/uigauge.md) - Crée une jauge (circular, linear, ninetydegree, semicircular).
- [uigridlayout](2_graphics_objects/3_ui_controls/uigridlayout.md) - Crée un gestionnaire de disposition en grille.
- [uihtml](2_graphics_objects/3_ui_controls/uihtml.md) - Cree un composant HTML.
- [uiknob](2_graphics_objects/3_ui_controls/uiknob.md) - Crée un bouton rotatif (knob), continu ou discret.
- [uilabel](2_graphics_objects/3_ui_controls/uilabel.md) - Crée un composant étiquette (label).
- [uilamp](2_graphics_objects/3_ui_controls/uilamp.md) - Crée un témoin lumineux (lamp).
- [uilistbox](2_graphics_objects/3_ui_controls/uilistbox.md) - Crée une liste de sélection.
- [uimenu](2_graphics_objects/3_ui_controls/uimenu.md) - Creer un objet graphique menu ou entree de menu.
- [uipanel](2_graphics_objects/3_ui_controls/uipanel.md) - Crée un panneau conteneur.
- [uiradiobutton](2_graphics_objects/3_ui_controls/uiradiobutton.md) - Crée un bouton radio dans un groupe de boutons.
- [uislider](2_graphics_objects/3_ui_controls/uislider.md) - Crée un curseur (slider) ou un curseur de plage.
- [uispinner](2_graphics_objects/3_ui_controls/uispinner.md) - Crée un compteur numérique (spinner).
- [uiswitch](2_graphics_objects/3_ui_controls/uiswitch.md) - Crée un interrupteur (slider, rocker, toggle).
- [uitab](2_graphics_objects/3_ui_controls/uitab.md) - Crée un onglet.
- [uitabgroup](2_graphics_objects/3_ui_controls/uitabgroup.md) - Crée un groupe d'onglets.
- [uitable](2_graphics_objects/3_ui_controls/uitable.md) - Crée un composant table (style App Designer).
- [uitextarea](2_graphics_objects/3_ui_controls/uitextarea.md) - Crée une zone de texte multiligne.
- [uitogglebutton](2_graphics_objects/3_ui_controls/uitogglebutton.md) - Crée un bouton bascule dans un groupe de boutons.
- [uitree](2_graphics_objects/3_ui_controls/uitree.md) - Crée un arbre ou un arbre à cases à cocher.
- [uitreenode](2_graphics_objects/3_ui_controls/uitreenode.md) - Crée un nœud d'arbre.

### Proprietes des objets graphiques


    
Pages de reference des proprietes visibles des objets graphiques, types de valeurs pris en charge et actions associees.

  

#### Functions

- [animatedline properties](2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.md) - Proprietes de l'objet graphique animatedline.
- [annotation arrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.arrow.properties.md) - Proprietes de l'annotation arrow.
- [annotation doublearrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.doublearrow.properties.md) - Proprietes de l'annotation doublearrow.
- [annotation ellipse properties](2_graphics_objects/4_properties/nelson.graphics.annotation.ellipse.properties.md) - Proprietes de l'annotation ellipse.
- [line annotation properties](2_graphics_objects/4_properties/nelson.graphics.annotation.line.properties.md) - Proprietes de l'annotation line.
- [annotation properties](2_graphics_objects/4_properties/nelson.graphics.annotation.properties.md) - Proprietes des annotations.
- [annotation rectangle properties](2_graphics_objects/4_properties/nelson.graphics.annotation.rectangle.properties.md) - Proprietes de l'annotation rectangle.
- [annotation textarrow properties](2_graphics_objects/4_properties/nelson.graphics.annotation.textarrow.properties.md) - Proprietes de l'annotation textarrow.
- [annotation textbox properties](2_graphics_objects/4_properties/nelson.graphics.annotation.textbox.properties.md) - Proprietes de l'annotation textbox.
- [area properties](2_graphics_objects/4_properties/nelson.graphics.area.properties.md) - Proprietes de l'objet graphique area.
- [axes properties](2_graphics_objects/4_properties/nelson.graphics.axes.properties.md) - Proprietes de l'objet graphique axes.
- [bar properties](2_graphics_objects/4_properties/nelson.graphics.bar.properties.md) - Proprietes de l'objet graphique bar.
- [binscatter properties](2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.md) - Proprietes de l'objet graphique binscatter.
- [boxchart properties](2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.md) - Proprietes de l'objet graphique boxchart.
- [bubblechart properties](2_graphics_objects/4_properties/nelson.graphics.bubblechart.properties.md) - Proprietes de l'objet graphique bubblechart.
- [bubblecloud properties](2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.md) - Proprietes de l'objet graphique bubblecloud.
- [bubblelegend properties](2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.md) - Proprietes de l'objet graphique bubblelegend.
- [colorbar properties](2_graphics_objects/4_properties/nelson.graphics.colorbar.properties.md) - Proprietes de l'objet graphique colorbar.
- [compassplot properties](2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.md) - Proprietes de l'objet graphique compassplot.
- [contour properties](2_graphics_objects/4_properties/nelson.graphics.contour.properties.md) - Proprietes de l'objet graphique contour.
- [donutchart properties](2_graphics_objects/4_properties/nelson.graphics.donutchart.properties.md) - Proprietes de l'objet graphique donutchart.
- [errorbar properties](2_graphics_objects/4_properties/nelson.graphics.errorbar.properties.md) - Proprietes de l'objet graphique errorbar.
- [figure properties](2_graphics_objects/4_properties/nelson.graphics.figure.properties.md) - Proprietes de l'objet graphique figure.
- [functioncontour properties](2_graphics_objects/4_properties/nelson.graphics.functioncontour.properties.md) - Proprietes de l'objet graphique functioncontour.
- [functionline properties](2_graphics_objects/4_properties/nelson.graphics.functionline.properties.md) - Proprietes de l'objet graphique functionline.
- [functionsurface properties](2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.md) - Proprietes de l'objet graphique functionsurface.
- [groot properties](2_graphics_objects/4_properties/nelson.graphics.groot.properties.md) - Proprietes de l'objet graphique groot.
- [hggroup properties](2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.md) - Proprietes de l'objet graphique hggroup.
- [histogram properties](2_graphics_objects/4_properties/nelson.graphics.histogram.properties.md) - Proprietes de l'objet graphique histogram.
- [histogram2 properties](2_graphics_objects/4_properties/nelson.graphics.histogram2.properties.md) - Proprietes de l'objet graphique histogram2.
- [image properties](2_graphics_objects/4_properties/nelson.graphics.image.properties.md) - Proprietes de l'objet graphique image.
- [implicitfunctionline properties](2_graphics_objects/4_properties/nelson.graphics.implicitfunctionline.properties.md) - Proprietes de l'objet graphique implicitfunctionline.
- [implicitfunctionsurface properties](2_graphics_objects/4_properties/nelson.graphics.implicitfunctionsurface.properties.md) - Proprietes de l'objet graphique implicitfunctionsurface.
- [legend properties](2_graphics_objects/4_properties/nelson.graphics.legend.properties.md) - Proprietes de l'objet graphique legend.
- [light properties](2_graphics_objects/4_properties/nelson.graphics.light.properties.md) - Proprietes de l'objet graphique light.
- [line properties](2_graphics_objects/4_properties/nelson.graphics.line.properties.md) - Proprietes de l'objet graphique line.
- [parallelplot properties](2_graphics_objects/4_properties/nelson.graphics.parallelplot.properties.md) - Proprietes de l'objet graphique parallelplot.
- [parameterizedfunctionline properties](2_graphics_objects/4_properties/nelson.graphics.parameterizedfunctionline.properties.md) - Proprietes de l'objet graphique parameterizedfunctionline.
- [patch properties](2_graphics_objects/4_properties/nelson.graphics.patch.properties.md) - Proprietes de l'objet graphique patch.
- [piechart properties](2_graphics_objects/4_properties/nelson.graphics.piechart.properties.md) - Proprietes de l'objet graphique piechart.
- [polaraxes properties](2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.md) - Proprietes de l'objet graphique polaraxes.
- [proprietes des objets graphiques](2_graphics_objects/4_properties/nelson.graphics.properties.md) - Reference des proprietes des objets graphiques.
- [quiver properties](2_graphics_objects/4_properties/nelson.graphics.quiver.properties.md) - Proprietes de l'objet graphique quiver.
- [raincloudplot properties](2_graphics_objects/4_properties/nelson.graphics.raincloudplot.properties.md) - Proprietes de l'objet graphique raincloudplot.
- [scatter properties](2_graphics_objects/4_properties/nelson.graphics.scatter.properties.md) - Proprietes de l'objet graphique scatter.
- [scatterhistogram properties](2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.md) - Proprietes de l'objet graphique scatterhistogram.
- [stackedplot properties](2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.md) - Proprietes de l'objet graphique stackedplot.
- [stem properties](2_graphics_objects/4_properties/nelson.graphics.stem.properties.md) - Proprietes de l'objet graphique stem.
- [surface properties](2_graphics_objects/4_properties/nelson.graphics.surface.properties.md) - Proprietes de l'objet graphique surface.
- [text properties](2_graphics_objects/4_properties/nelson.graphics.text.properties.md) - Proprietes de l'objet graphique text.
- [tiledlayout properties](2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.md) - Proprietes de l'objet graphique tiledlayout.
- [uicontextmenu properties](2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.md) - Proprietes de l'objet graphique uicontextmenu.
- [uicontrol properties](2_graphics_objects/4_properties/nelson.graphics.uicontrol.properties.md) - Proprietes de l'objet graphique uicontrol.
- [uimenu properties](2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.md) - Proprietes de l'objet graphique uimenu.
- [violinplot properties](2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.md) - Proprietes de l'objet graphique violinplot.
- [wordcloud properties](2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.md) - Proprietes de l'objet graphique wordcloud.

## Etiquettes et style


    
Fonctions pour les etiquettes, annotations, apparence des axes, couleurs, interactions, vues camera et eclairage.

  

### Apparence des axes


    
Fonctions pour les limites d'axes, graduations, grilles, boites et rapports d'aspect.

  

#### Functions

- [axis](3_labels_styling/1_axes_appearance/axis.md) - Définit les limites et les rapports d'aspect des axes.
- [box](3_labels_styling/1_axes_appearance/box.md) - Afficher ou masquer le contour d'un objet graphique.
- [daspect](3_labels_styling/1_axes_appearance/daspect.md) - Contrôler la longueur des unités de données le long de chaque axe.
- [datetick](3_labels_styling/1_axes_appearance/datetick.md) - Etiquettes de graduation au format date.
- [grid](3_labels_styling/1_axes_appearance/grid.md) - Afficher ou masquer les lignes de grille des axes.
- [pbaspect](3_labels_styling/1_axes_appearance/pbaspect.md) - Contrôler les longueurs relatives de chaque axe dans la boîte de tracé.
- [rlim](3_labels_styling/1_axes_appearance/rlim.md) - Definit ou retourne les limites radiales des axes polaires.
- [rticklabels](3_labels_styling/1_axes_appearance/rticklabels.md) - Definit ou retourne les etiquettes radiales des axes polaires.
- [rticks](3_labels_styling/1_axes_appearance/rticks.md) - Definit ou retourne les graduations radiales des axes polaires.
- [thetalim](3_labels_styling/1_axes_appearance/thetalim.md) - Definit ou retourne les limites angulaires des axes polaires.
- [thetaticklabels](3_labels_styling/1_axes_appearance/thetaticklabels.md) - Definit ou retourne les etiquettes angulaires des axes polaires.
- [thetaticks](3_labels_styling/1_axes_appearance/thetaticks.md) - Definit ou retourne les graduations angulaires des axes polaires.
- [xlim](3_labels_styling/1_axes_appearance/xlim.md) - définir ou obtenir les limites de l'axe des x.
- [xtickangle](3_labels_styling/1_axes_appearance/xtickangle.md) - Faire pivoter les etiquettes de l'axe des x.
- [xtickformat](3_labels_styling/1_axes_appearance/xtickformat.md) - Definir ou obtenir le format des etiquettes de l'axe des x.
- [xticklabels](3_labels_styling/1_axes_appearance/xticklabels.md) - Definir ou obtenir les etiquettes de l'axe des x.
- [xticks](3_labels_styling/1_axes_appearance/xticks.md) - Definir ou obtenir les graduations de l'axe des x.
- [ylim](3_labels_styling/1_axes_appearance/ylim.md) - définir ou obtenir les limites de l'axe des y.
- [ytickangle](3_labels_styling/1_axes_appearance/ytickangle.md) - Faire pivoter les etiquettes de l'axe des y.
- [ytickformat](3_labels_styling/1_axes_appearance/ytickformat.md) - Definir ou obtenir le format des etiquettes de l'axe des y.
- [yticklabels](3_labels_styling/1_axes_appearance/yticklabels.md) - Definir ou interroger les etiquettes des graduations de l'axe y.
- [yticks](3_labels_styling/1_axes_appearance/yticks.md) - Definir ou obtenir les graduations de l'axe des y.
- [yyaxis](3_labels_styling/1_axes_appearance/yyaxis.md) - Cree ou selectionne un axe avec deux axes y.
- [zlim](3_labels_styling/1_axes_appearance/zlim.md) - définir ou obtenir les limites de l'axe des z.
- [ztickangle](3_labels_styling/1_axes_appearance/ztickangle.md) - Faire pivoter les etiquettes de l'axe des z.
- [ztickformat](3_labels_styling/1_axes_appearance/ztickformat.md) - Definir ou obtenir le format des etiquettes de l'axe des z.
- [zticklabels](3_labels_styling/1_axes_appearance/zticklabels.md) - Definir ou obtenir les etiquettes de l'axe des z.
- [zticks](3_labels_styling/1_axes_appearance/zticks.md) - Definir ou obtenir les graduations de l'axe des z.

### Couleurs et style


    
Fonctions pour les couleurs, palettes de couleurs, limites de couleur, ordre des couleurs et style de rendu.

  

#### Palettes de couleurs


    
Fonctions pour creer, selectionner et lister les palettes de couleurs.

  

##### Functions

- [abyss](3_labels_styling/2_color_styling/colormaps/abyss.md) - Palette de couleurs abyss.
- [autumn](3_labels_styling/2_color_styling/colormaps/autumn.md) - Palette de couleurs autumn.
- [bone](3_labels_styling/2_color_styling/colormaps/bone.md) - Palette de couleurs bone.
- [colorcube](3_labels_styling/2_color_styling/colormaps/colorcube.md) - Tableau de colormap RGB en cube ameliore.
- [colormap](3_labels_styling/2_color_styling/colormaps/colormap.md) - Afficher et définir la palette de couleurs courante.
- [colormaplist](3_labels_styling/2_color_styling/colormaps/colormaplist.md) - Fournit la liste des palettes de couleurs.
- [cool](3_labels_styling/2_color_styling/colormaps/cool.md) - Palette de couleurs cool.
- [copper](3_labels_styling/2_color_styling/colormaps/copper.md) - Palette de couleurs copper.
- [flag](3_labels_styling/2_color_styling/colormaps/flag.md) - Palette de couleurs flag.
- [gray](3_labels_styling/2_color_styling/colormaps/gray.md) - Palette de couleurs gray.
- [hot](3_labels_styling/2_color_styling/colormaps/hot.md) - Palette de couleurs hot.
- [hsv](3_labels_styling/2_color_styling/colormaps/hsv.md) - Tableau de colormap teinte-saturation-valeur.
- [jet](3_labels_styling/2_color_styling/colormaps/jet.md) - Tableau de palette de couleurs jet.
- [lines](3_labels_styling/2_color_styling/colormaps/lines.md) - Tableau de colormap base sur l'ordre des couleurs de lignes.
- [nebula](3_labels_styling/2_color_styling/colormaps/nebula.md) - Palette de couleurs Nebula.
- [parula](3_labels_styling/2_color_styling/colormaps/parula.md) - Palette de couleurs Parula.
- [pink](3_labels_styling/2_color_styling/colormaps/pink.md) - Palette de couleurs Pink.
- [prism](3_labels_styling/2_color_styling/colormaps/prism.md) - Palette de couleurs Prism.
- [sky](3_labels_styling/2_color_styling/colormaps/sky.md) - Table de couleurs 'sky'.
- [spring](3_labels_styling/2_color_styling/colormaps/spring.md) - Table de couleurs 'spring'.
- [summer](3_labels_styling/2_color_styling/colormaps/summer.md) - Table de couleurs 'summer'.
- [turbo](3_labels_styling/2_color_styling/colormaps/turbo.md) - Tableau de couleurs Turbo.
- [viridis](3_labels_styling/2_color_styling/colormaps/viridis.md) - Tableau de couleurs Viridis.
- [white](3_labels_styling/2_color_styling/colormaps/white.md) - tableau de colormap blanc.
- [winter](3_labels_styling/2_color_styling/colormaps/winter.md) - Tableau de colormap hiver.

#### Functions

- [clim](3_labels_styling/2_color_styling/clim.md) - Définit les limites de la palette de couleurs.
- [colororder](3_labels_styling/2_color_styling/colororder.md) - Definir ou interroger l'ordre des couleurs des axes.
- [colstyle](3_labels_styling/2_color_styling/colstyle.md) - Analyse la couleur et le style à partir d'une chaîne.
- [fliplightness](3_labels_styling/2_color_styling/fliplightness.md) - Assombrir les couleurs claires et éclaircir les couleurs sombres.
- [rgbplot](3_labels_styling/2_color_styling/rgbplot.md) - Tracer une palette de couleurs.
- [shading](3_labels_styling/2_color_styling/shading.md) - Definit le mode d'ombrage des surfaces et patchs.
- [theme](3_labels_styling/2_color_styling/theme.md) - Definit le theme de couleur d'une figure.
- [validatecolor](3_labels_styling/2_color_styling/validatecolor.md) - Valider les valeurs de couleur.

### Interactions, vues camera et eclairage


    
Fonctions pour les graphiques interactifs, callbacks, vues camera et eclairage.

  

#### Functions

- [camlight](3_labels_styling/3_interactions_camera_lighting/camlight.md) - Cree ou positionne une lumiere par rapport a la camera.
- [drawnow](3_labels_styling/3_interactions_camera_lighting/drawnow.md) - Met à jour les figures et traite les callbacks
- [Gestion des interruptions de callback dans Nelson](3_labels_styling/3_interactions_camera_lighting/graphical_callback.md) - 
- [light](3_labels_styling/3_interactions_camera_lighting/light.md) - Cree un objet lumiere dans des axes.
- [lightangle](3_labels_styling/3_interactions_camera_lighting/lightangle.md) - Cree ou positionne une lumiere a partir d'angles.
- [lighting](3_labels_styling/3_interactions_camera_lighting/lighting.md) - Definit le mode d'eclairage des surfaces et patchs.
- [material](3_labels_styling/3_interactions_camera_lighting/material.md) - Definit les proprietes de materiau.
- [pan](3_labels_styling/3_interactions_camera_lighting/pan.md) - Activer le mode déplacement (pan).
- [refresh](3_labels_styling/3_interactions_camera_lighting/refresh.md) - Rafraîchir la figure courante.
- [rotate3d](3_labels_styling/3_interactions_camera_lighting/rotate3d.md) - Activer le mode rotation.
- [view](3_labels_styling/3_interactions_camera_lighting/view.md) - Ligne de visée de la caméra.
- [waitfor](3_labels_styling/3_interactions_camera_lighting/waitfor.md) - Attendre une condition.
- [waitforbuttonpress](3_labels_styling/3_interactions_camera_lighting/waitforbuttonpress.md) - Attendre un clic ou une pression sur une touche.
- [zoom](3_labels_styling/3_interactions_camera_lighting/zoom.md) - Activer le mode zoom.

### Etiquettes et annotations


    
Fonctions pour les titres, etiquettes d'axes, legendes, barres de couleur, texte et annotations.

  

#### Functions

- [annotation](3_labels_styling/4_labels_annotations/annotation.md) - Creer des annotations de figure.
- [colorbar](3_labels_styling/4_labels_annotations/colorbar.md) - Ajoute une echelle de couleurs aux axes.
- [legend](3_labels_styling/4_labels_annotations/legend.md) - Ajoute une legende aux axes.
- [sgtitle](3_labels_styling/4_labels_annotations/sgtitle.md) - Ajouter un titre commun a une disposition graphique.
- [subtitle](3_labels_styling/4_labels_annotations/subtitle.md) - Ajouter un sous-titre.
- [text](3_labels_styling/4_labels_annotations/text.md) - crée des descriptions textuelles pour les points de données.
- [title](3_labels_styling/4_labels_annotations/title.md) - Ajouter un titre.
- [xlabel](3_labels_styling/4_labels_annotations/xlabel.md) - Étiquette de l'axe des x.
- [ylabel](3_labels_styling/4_labels_annotations/ylabel.md) - Étiquette de l'axe des y.
- [zlabel](3_labels_styling/4_labels_annotations/zlabel.md) - Étiquette de l'axe des z.

### Functions

- [caxis](3_labels_styling/caxis.md) - Lit ou definit les limites de couleur des axes.

## Images


    
Fonctions pour afficher des images, convertir des frames et lire des frames enregistrees.

  

### Functions

- [frame2im](4_images/frame2im.md) - Récupère les données d'image d'une image vidéo.
- [getframe](4_images/getframe.md) - Capture une figure ou des axes comme image vidéo.
- [im2frame](4_images/im2frame.md) - Convertit une image en image de film.
- [image](4_images/image.md) - Affiche une image à partir d'un tableau.
- [imagesc](4_images/imagesc.md) - Affiche une image à partir d'un tableau avec des couleurs mises à l'échelle.
- [imshow](4_images/imshow.md) - Affiche une image.
- [movie](4_images/movie.md) - Jouer des séquences d'images enregistrées (movie).

## Impression et sauvegarde


    
Fonctions pour ouvrir et sauvegarder des fichiers figure.

  

### Functions

- [openfig](5_printing_saving/openfig.md) - Ouvre un fichier FIG Nelson.
- [print](5_printing_saving/print.md) - Exporte une figure vers un fichier image ou document.
- [savefig](5_printing_saving/savefig.md) - Enregistre une figure dans un fichier FIG Nelson.

