#import "nelson_help.typ": *

= Fonctions graphiques

Le module graphique fournit des fonctions pour créer, personnaliser et gérer des graphiques, figures, palettes de couleurs et objets graphiques.

 Il inclut la visualisation 2D et 3D, des outils d'interaction utilisateur (zoom, déplacement, rotation), et des utilitaires pour travailler avec les couleurs, légendes, axes et annotations de texte.

== Fonctions de traces 2-D et 3-D

Fonctions regroupees par type de visualisation, notamment les lignes, distributions, donnees discretes, graphiques polaires, contours, champs de vecteurs, surfaces, volumes, polygones et animations.

=== Courbes

Fonctions pour les courbes, les traces de fonctions et les traces avec barres d'erreur.

==== Functions

- #nlink(<graphics:1_plots.1_line_plots.errorbar>)[errorbar]: Trace des donnees avec barres d'erreur.
- #nlink(<graphics:1_plots.1_line_plots.fplot>)[fplot]: Trace une expression ou une fonction parametrique.
- #nlink(<graphics:1_plots.1_line_plots.fplot3>)[fplot3]: Tracer une courbe parametrique 3-D depuis des handles de fonctions.
- #nlink(<graphics:1_plots.1_line_plots.line>)[line]: Crée une ligne primitive.
- #nlink(<graphics:1_plots.1_line_plots.loglog>)[loglog]: Tracé en échelle log-log.
- #nlink(<graphics:1_plots.1_line_plots.plot>)[plot]: Tracé linéaire 2D.
- #nlink(<graphics:1_plots.1_line_plots.plot3>)[plot3]: Tracé de courbe 3D.
- #nlink(<graphics:1_plots.1_line_plots.semilogx>)[semilogx]: Graphique semi-logarithmique (axe x en échelle logarithmique).
- #nlink(<graphics:1_plots.1_line_plots.semilogy>)[semilogy]: Graphique semi-logarithmique (axe y en échelle logarithmique).
- #nlink(<graphics:1_plots.1_line_plots.xline>)[xline]: Ligne constante verticale.
- #nlink(<graphics:1_plots.1_line_plots.yline>)[yline]: Ligne constante horizontale.

=== Graphiques polaires

Fonctions pour creer et configurer des graphiques polaires.

==== Functions

- #nlink(<graphics:1_plots.2_polar_plots.fpolarplot>)[fpolarplot]: Trace une fonction en coordonnees polaires.
- #nlink(<graphics:1_plots.2_polar_plots.polaraxes>)[polaraxes]: Cree des axes configures pour les traces polaires.
- #nlink(<graphics:1_plots.2_polar_plots.polarbubblechart>)[polarbubblechart]: Affiche un graphique a bulles en coordonnees polaires.
- #nlink(<graphics:1_plots.2_polar_plots.polarhistogram>)[polarhistogram]: Affiche des angles sous forme d'histogramme polaire.
- #nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot]: Trace des donnees en coordonnees polaires.
- #nlink(<graphics:1_plots.2_polar_plots.polarscatter>)[polarscatter]: Affiche des points en coordonnees polaires.

=== Graphiques de contours

Fonctions pour le calcul de contours, les graphiques de contours et leurs etiquettes.

==== Functions

- #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel]: Étiquetage des contours
- #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour]: Tracé de contours d'une matrice
- #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3]: Tracé de contours 3D d'une matrice
- #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc]: Calcul de matrice de contours
- #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf]: Trace de contours remplis d'une matrice
- #nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour]: Tracer des contours depuis une fonction de deux variables.

=== Graphiques de distribution de donnees

Fonctions pour les histogrammes, nuages de points, graphiques de distribution et visualisations de synthese de donnees.

==== Functions

- #nlink(<graphics:1_plots.4_data_distribution_plots.binscatter>)[binscatter]: Afficher un nuage de points regroupe par bins.
- #nlink(<graphics:1_plots.4_data_distribution_plots.boxchart>)[boxchart]: Afficher une boite a moustaches pour donnees numeriques groupees.
- #nlink(<graphics:1_plots.4_data_distribution_plots.boxplot>)[boxplot]: Afficher des boites a moustaches pour des donnees numeriques.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart]: Afficher un graphique a bulles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart3>)[bubblechart3]: Afficher un graphique a bulles 3-D.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblecloud>)[bubblecloud]: Afficher des bulles etiquetees dans une disposition en nuage.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelegend>)[bubblelegend]: Ajoute une legende de taille de bulles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblelim>)[bubblelim]: Definit ou retourne les limites des donnees de taille des bulles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.bubblesize>)[bubblesize]: Definit ou retourne la plage des diametres affiches des bulles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.heatmap>)[heatmap]: Creer une carte de chaleur depuis une matrice numerique ou une table.
- #nlink(<graphics:1_plots.4_data_distribution_plots.hist>)[hist]: Tracé d'histogramme.
- #nlink(<graphics:1_plots.4_data_distribution_plots.histogram>)[histogram]: Crée un histogramme.
- #nlink(<graphics:1_plots.4_data_distribution_plots.histogram2>)[histogram2]: Cree un histogramme bivarie.
- #nlink(<graphics:1_plots.4_data_distribution_plots.parallelplot>)[parallelplot]: Affiche un graphique en coordonnees paralleles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.plotmatrix>)[plotmatrix]: Affiche une matrice de graphiques deux a deux.
- #nlink(<graphics:1_plots.4_data_distribution_plots.raincloudplot>)[raincloudplot]: Visualiser des donnees numeriques groupees avec des graphiques en nuage de pluie.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatter>)[scatter]: Nuage de points.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatter3>)[scatter3]: Nuage de points 3D.
- #nlink(<graphics:1_plots.4_data_distribution_plots.scatterhistogram>)[scatterhistogram]: Affiche un nuage de points avec histogrammes marginaux.
- #nlink(<graphics:1_plots.4_data_distribution_plots.spy>)[spy]: Visualiser le motif de parcimonie d'une matrice.
- #nlink(<graphics:1_plots.4_data_distribution_plots.stackedplot>)[stackedplot]: Trace des variables dans des axes empiles.
- #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart>)[swarmchart]: Afficher un swarm chart 2-D.
- #nlink(<graphics:1_plots.4_data_distribution_plots.swarmchart3>)[swarmchart3]: Afficher un swarm chart 3-D.
- #nlink(<graphics:1_plots.4_data_distribution_plots.violinplot>)[violinplot]: Afficher des distributions sous forme de violons.
- #nlink(<graphics:1_plots.4_data_distribution_plots.wordcloud>)[wordcloud]: Afficher des mots avec des tailles proportionnelles aux poids.

=== Champs de vecteurs

Fonctions pour les champs de vecteurs et les visualisations de flux.

==== Functions

- #nlink(<graphics:1_plots.5_vector_fields.compass>)[compass]: Afficher des fleches depuis l'origine sur une grille polaire.
- #nlink(<graphics:1_plots.5_vector_fields.compassplot>)[compassplot]: Affiche des vecteurs depuis l'origine en coordonnees polaires.
- #nlink(<graphics:1_plots.5_vector_fields.coneplot>)[coneplot]: Afficher des directions vectorielles 3-D avec des fleches de style cone.
- #nlink(<graphics:1_plots.5_vector_fields.feather>)[feather]: Afficher des vecteurs depuis une ligne de base.
- #nlink(<graphics:1_plots.5_vector_fields.quiver>)[quiver]: Trace de champ vectoriel 2-D.
- #nlink(<graphics:1_plots.5_vector_fields.quiver3>)[quiver3]: Trace de champ vectoriel 3-D.
- #nlink(<graphics:1_plots.5_vector_fields.stream2>)[stream2]: Calculer les sommets de lignes de courant 2-D depuis un champ vectoriel.
- #nlink(<graphics:1_plots.5_vector_fields.stream3>)[stream3]: Calculer les sommets de lignes de courant 3-D depuis un champ vectoriel.
- #nlink(<graphics:1_plots.5_vector_fields.streamline>)[streamline]: Afficher des lignes de courant depuis un champ vectoriel.
- #nlink(<graphics:1_plots.5_vector_fields.streamparticles>)[streamparticles]: Afficher des marqueurs de particules le long de chemins de courant.
- #nlink(<graphics:1_plots.5_vector_fields.streamribbon>)[streamribbon]: Afficher des chemins de courant avec un style ruban.
- #nlink(<graphics:1_plots.5_vector_fields.streamslice>)[streamslice]: Afficher la direction d'un champ vectoriel sur un plan.
- #nlink(<graphics:1_plots.5_vector_fields.streamtube>)[streamtube]: Afficher des chemins de courant avec un style tube.

=== Graphiques de donnees discretes

Fonctions pour les diagrammes en barres, traces en tiges, diagrammes circulaires et autres affichages de donnees discretes.

==== Functions

- #nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar]: Diagramme en barres.
- #nlink(<graphics:1_plots.6_discrete_data_plots.bar3>)[bar3]: Afficher un diagramme en barres verticales 3-D.
- #nlink(<graphics:1_plots.6_discrete_data_plots.bar3h>)[bar3h]: Afficher un diagramme en barres horizontales 3-D.
- #nlink(<graphics:1_plots.6_discrete_data_plots.barh>)[barh]: Diagramme en barres horizontales.
- #nlink(<graphics:1_plots.6_discrete_data_plots.donutchart>)[donutchart]: Objet graphique en anneau.
- #nlink(<graphics:1_plots.6_discrete_data_plots.pareto>)[pareto]: Afficher un diagramme de Pareto.
- #nlink(<graphics:1_plots.6_discrete_data_plots.pie>)[pie]: Ancien graphique en secteurs (camembert).
- #nlink(<graphics:1_plots.6_discrete_data_plots.piechart>)[piechart]: Objet graphique en secteurs.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stairs>)[stairs]: Graphique en escalier.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stem>)[stem]: Tracer des données discrètes.
- #nlink(<graphics:1_plots.6_discrete_data_plots.stem3>)[stem3]: Afficher un trace en tiges 3-D.

=== Surfaces, volumes et polygones

Fonctions pour les surfaces, maillages, volumes, zones remplies et graphiques polygonaux.

==== Functions

- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.area>)[area]: Creer des graphes d'aires.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.contourslice>)[contourslice]: Afficher des lignes de contour sur des coupes de volume.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.cylinder>)[cylinder]: Créer un cylindre.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill]: Créer des formes 2D remplies.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill3>)[fill3]: Creer des patchs 3-D remplis.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit]: Tracer une courbe de fonction implicite.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit3>)[fimplicit3]: Tracer une approximation de surface implicite 3-D.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fmesh>)[fmesh]: Tracer un maillage depuis une fonction de deux variables.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fsurf>)[fsurf]: Trace une surface definie par une fonction.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isonormals>)[isonormals]: Calculer les normales des sommets d'une isosurface.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface]: Extraire une isosurface depuis des donnees volumiques.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh]: Tracé de surface en maillage (mesh).
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.meshc>)[meshc]: Afficher un maillage avec des contours en dessous.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.meshz>)[meshz]: Tracé de surface en maillage (mesh) avec rideau.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch]: Créer des patchs de polygones colorés
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.pcolor>)[pcolor]: Graphique en pseudo-couleurs.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.rectangle>)[rectangle]: Cree un rectangle a coins droits, arrondis ou courbes
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.ribbon>)[ribbon]: Graphique en ruban.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.shrinkfaces>)[shrinkfaces]: Reduire la taille des faces d'un patch.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.slice>)[slice]: Afficher des coupes orthogonales dans des donnees volumiques.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.smooth3>)[smooth3]: Lisser des donnees 3-D.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere]: Créer une sphère.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf]: tracé de surface.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface]: Tracé de surface primitif.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfc>)[surfc]: Afficher une surface avec des contours en dessous.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfl>)[surfl]: Afficher une surface eclairee.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surfnorm>)[surfnorm]: Calculer ou afficher les vecteurs normaux d'une surface.
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.triplot>)[triplot]: Trace de triangles 2-D
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.trisurf>)[trisurf]: Trace de surface triangulaire
- #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.waterfall>)[waterfall]: graphique en cascade.

=== Animation

Fonctions pour les graphiques animes et les mises a jour dynamiques de points.

==== Functions

- #nlink(<graphics:1_plots.8_animation.addpoints>)[addpoints]: Ajouter des points a une ligne animee.
- #nlink(<graphics:1_plots.8_animation.animatedline>)[animatedline]: Creer une ligne animee.
- #nlink(<graphics:1_plots.8_animation.clearpoints>)[clearpoints]: Effacer les points d'une ligne animee.
- #nlink(<graphics:1_plots.8_animation.comet>)[comet]: Creer un trace comete 2-D.
- #nlink(<graphics:1_plots.8_animation.comet3>)[comet3]: Creer un trace comete 3-D.
- #nlink(<graphics:1_plots.8_animation.getpoints>)[getpoints]: Retourner les points d'une ligne animee.

== Objets graphiques

Fonctions et pages de reference pour la gestion des objets graphiques, objets de disposition, objets d'interface utilisateur et proprietes d'objets.

=== Gestion des objets graphiques

Fonctions pour creer, rechercher, interroger, effacer et fermer des objets graphiques.

==== Functions

- #nlink(<graphics:2_graphics_objects.1_object_management.allchild>)[allchild]: Retourne tous les enfants directs d'objets graphiques.
- #nlink(<graphics:2_graphics_objects.1_object_management.ancestor>)[ancestor]: Ancêtre d'un objet graphique.
- #nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes]: Créer des axes cartésiens.
- #nlink(<graphics:2_graphics_objects.1_object_management.cla>)[cla]: Efface les axes.
- #nlink(<graphics:2_graphics_objects.1_object_management.clf>)[clf]: Efface la figure.
- #nlink(<graphics:2_graphics_objects.1_object_management.close>)[close]: Ferme une ou plusieurs figures
- #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure]: Crée une fenêtre figure.
- #nlink(<graphics:2_graphics_objects.1_object_management.findall>)[findall]: Trouve des objets graphiques, y compris les handles caches.
- #nlink(<graphics:2_graphics_objects.1_object_management.findobj>)[findobj]: Trouve des objets graphiques avec des proprietes donnees.
- #nlink(<graphics:2_graphics_objects.1_object_management.gca>)[gca]: Récupère l'objet axes courant.
- #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf]: Récupère l'objet figure courant.
- #nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot]: Objet racine graphique.
- #nlink(<graphics:2_graphics_objects.1_object_management.hggroup>)[hggroup]: Créer un objet groupe.
- #nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold]: Conserver le tracé courant lors de l'ajout de nouveaux tracés.
- #nlink(<graphics:2_graphics_objects.1_object_management.is2D>)[is2D]: Vérifie si ax est un axe 2D polaire ou cartésien.
- #nlink(<graphics:2_graphics_objects.1_object_management.isValidGraphicsProperty>)[isValidGraphicsProperty]: Vérifie si le nom de propriété est valide.
- #nlink(<graphics:2_graphics_objects.1_object_management.isgraphics>)[isgraphics]: Vérifie si l'objet est graphique.
- #nlink(<graphics:2_graphics_objects.1_object_management.ishold>)[ishold]: Obtient l'état actuel du mode hold.
- #nlink(<graphics:2_graphics_objects.1_object_management.newplot>)[newplot]: Préparer la création d'un nouveau graphique.

=== Objets de disposition

Fonctions pour organiser plusieurs graphiques et travailler avec les dispositions en tuiles.

==== Functions

- #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile]: Créer des axes dans une disposition en mosaïque.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot]: Créer des axes en positions mosaïques.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout]: Créer une disposition en mosaïque.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum]: Obtenir le numéro de tuile à partir d'indices ligne-colonne ou d'un objet graphique.
- #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol]: Obtenir les indices ligne et colonne à partir d'un numéro de tuile ou d'un objet graphique.

=== Objets d'interface utilisateur

Fonctions pour les controles d'interface utilisateur, menus et menus contextuels.

==== Functions

- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiaxes>)[uiaxes]: Crée des axes pour les applications de style App Designer.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uibutton>)[uibutton]: Crée un bouton poussoir ou un bouton à état.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uibuttongroup>)[uibuttongroup]: Crée un groupe de boutons.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicheckbox>)[uicheckbox]: Crée une case à cocher.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontextmenu>)[uicontextmenu]: Creer un objet graphique de menu contextuel.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol]: Créer un composant d'interface utilisateur.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uidatepicker>)[uidatepicker]: Crée un sélecteur de date.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uidropdown>)[uidropdown]: Crée une liste déroulante.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uieditfield>)[uieditfield]: Crée un champ d'édition texte ou numérique.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uigauge>)[uigauge]: Crée une jauge (circular, linear, ninetydegree, semicircular).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uigridlayout>)[uigridlayout]: Crée un gestionnaire de disposition en grille.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uihtml>)[uihtml]: Cree un composant HTML.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiknob>)[uiknob]: Crée un bouton rotatif (knob), continu ou discret.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilabel>)[uilabel]: Crée un composant étiquette (label).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilamp>)[uilamp]: Crée un témoin lumineux (lamp).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uilistbox>)[uilistbox]: Crée une liste de sélection.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uimenu>)[uimenu]: Creer un objet graphique menu ou entree de menu.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uipanel>)[uipanel]: Crée un panneau conteneur.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiradiobutton>)[uiradiobutton]: Crée un bouton radio dans un groupe de boutons.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uislider>)[uislider]: Crée un curseur (slider) ou un curseur de plage.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uispinner>)[uispinner]: Crée un compteur numérique (spinner).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uiswitch>)[uiswitch]: Crée un interrupteur (slider, rocker, toggle).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitab>)[uitab]: Crée un onglet.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitabgroup>)[uitabgroup]: Crée un groupe d'onglets.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitable>)[uitable]: Crée un composant table (style App Designer).
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitextarea>)[uitextarea]: Crée une zone de texte multiligne.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitogglebutton>)[uitogglebutton]: Crée un bouton bascule dans un groupe de boutons.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitree>)[uitree]: Crée un arbre ou un arbre à cases à cocher.
- #nlink(<graphics:2_graphics_objects.3_ui_controls.uitreenode>)[uitreenode]: Crée un nœud d'arbre.

=== Proprietes des objets graphiques

Pages de reference des proprietes visibles des objets graphiques, types de valeurs pris en charge et actions associees.

==== Functions

- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.animatedline.properties>)[animatedline properties]: Proprietes de l'objet graphique animatedline.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.arrow.properties>)[annotation arrow properties]: Proprietes de l'annotation arrow.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.doublearrow.properties>)[annotation doublearrow properties]: Proprietes de l'annotation doublearrow.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.ellipse.properties>)[annotation ellipse properties]: Proprietes de l'annotation ellipse.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.line.properties>)[line annotation properties]: Proprietes de l'annotation line.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.properties>)[annotation properties]: Proprietes des annotations.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.rectangle.properties>)[annotation rectangle properties]: Proprietes de l'annotation rectangle.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textarrow.properties>)[annotation textarrow properties]: Proprietes de l'annotation textarrow.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textbox.properties>)[annotation textbox properties]: Proprietes de l'annotation textbox.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.area.properties>)[area properties]: Proprietes de l'objet graphique area.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.axes.properties>)[axes properties]: Proprietes de l'objet graphique axes.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bar.properties>)[bar properties]: Proprietes de l'objet graphique bar.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.binscatter.properties>)[binscatter properties]: Proprietes de l'objet graphique binscatter.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.boxchart.properties>)[boxchart properties]: Proprietes de l'objet graphique boxchart.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblechart.properties>)[bubblechart properties]: Proprietes de l'objet graphique bubblechart.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblecloud.properties>)[bubblecloud properties]: Proprietes de l'objet graphique bubblecloud.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.bubblelegend.properties>)[bubblelegend properties]: Proprietes de l'objet graphique bubblelegend.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.colorbar.properties>)[colorbar properties]: Proprietes de l'objet graphique colorbar.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.compassplot.properties>)[compassplot properties]: Proprietes de l'objet graphique compassplot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.contour.properties>)[contour properties]: Proprietes de l'objet graphique contour.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.donutchart.properties>)[donutchart properties]: Proprietes de l'objet graphique donutchart.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.errorbar.properties>)[errorbar properties]: Proprietes de l'objet graphique errorbar.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.figure.properties>)[figure properties]: Proprietes de l'objet graphique figure.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[functioncontour properties]: Proprietes de l'objet graphique functioncontour.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionline.properties>)[functionline properties]: Proprietes de l'objet graphique functionline.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[functionsurface properties]: Proprietes de l'objet graphique functionsurface.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>)[groot properties]: Proprietes de l'objet graphique groot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.hggroup.properties>)[hggroup properties]: Proprietes de l'objet graphique hggroup.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram.properties>)[histogram properties]: Proprietes de l'objet graphique histogram.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.histogram2.properties>)[histogram2 properties]: Proprietes de l'objet graphique histogram2.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[image properties]: Proprietes de l'objet graphique image.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[implicitfunctionline properties]: Proprietes de l'objet graphique implicitfunctionline.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[implicitfunctionsurface properties]: Proprietes de l'objet graphique implicitfunctionsurface.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.legend.properties>)[legend properties]: Proprietes de l'objet graphique legend.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[light properties]: Proprietes de l'objet graphique light.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.line.properties>)[line properties]: Proprietes de l'objet graphique line.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parallelplot.properties>)[parallelplot properties]: Proprietes de l'objet graphique parallelplot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.parameterizedfunctionline.properties>)[parameterizedfunctionline properties]: Proprietes de l'objet graphique parameterizedfunctionline.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.patch.properties>)[patch properties]: Proprietes de l'objet graphique patch.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.piechart.properties>)[piechart properties]: Proprietes de l'objet graphique piechart.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.polaraxes.properties>)[polaraxes properties]: Proprietes de l'objet graphique polaraxes.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.properties>)[proprietes des objets graphiques]: Reference des proprietes des objets graphiques.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.quiver.properties>)[quiver properties]: Proprietes de l'objet graphique quiver.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.raincloudplot.properties>)[raincloudplot properties]: Proprietes de l'objet graphique raincloudplot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatter.properties>)[scatter properties]: Proprietes de l'objet graphique scatter.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.scatterhistogram.properties>)[scatterhistogram properties]: Proprietes de l'objet graphique scatterhistogram.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stackedplot.properties>)[stackedplot properties]: Proprietes de l'objet graphique stackedplot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.stem.properties>)[stem properties]: Proprietes de l'objet graphique stem.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[surface properties]: Proprietes de l'objet graphique surface.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.text.properties>)[text properties]: Proprietes de l'objet graphique text.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[tiledlayout properties]: Proprietes de l'objet graphique tiledlayout.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontextmenu.properties>)[uicontextmenu properties]: Proprietes de l'objet graphique uicontextmenu.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[uicontrol properties]: Proprietes de l'objet graphique uicontrol.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uimenu.properties>)[uimenu properties]: Proprietes de l'objet graphique uimenu.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.violinplot.properties>)[violinplot properties]: Proprietes de l'objet graphique violinplot.
- #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.wordcloud.properties>)[wordcloud properties]: Proprietes de l'objet graphique wordcloud.

== Etiquettes et style

Fonctions pour les etiquettes, annotations, apparence des axes, couleurs, interactions, vues camera et eclairage.

=== Functions

- #nlink(<graphics:3_labels_styling.caxis>)[caxis]: Lit ou definit les limites de couleur des axes.

=== Apparence des axes

Fonctions pour les limites d'axes, graduations, grilles, boites et rapports d'aspect.

==== Functions

- #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis]: Définit les limites et les rapports d'aspect des axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.box>)[box]: Afficher ou masquer le contour d'un objet graphique.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.daspect>)[daspect]: Contrôler la longueur des unités de données le long de chaque axe.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.datetick>)[datetick]: Etiquettes de graduation au format date.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid]: Afficher ou masquer les lignes de grille des axes.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.pbaspect>)[pbaspect]: Contrôler les longueurs relatives de chaque axe dans la boîte de tracé.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rlim>)[rlim]: Definit ou retourne les limites radiales des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rticklabels>)[rticklabels]: Definit ou retourne les etiquettes radiales des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.rticks>)[rticks]: Definit ou retourne les graduations radiales des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetalim>)[thetalim]: Definit ou retourne les limites angulaires des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticklabels>)[thetaticklabels]: Definit ou retourne les etiquettes angulaires des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.thetaticks>)[thetaticks]: Definit ou retourne les graduations angulaires des axes polaires.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xlim>)[xlim]: définir ou obtenir les limites de l'axe des x.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickangle>)[xtickangle]: Faire pivoter les etiquettes de l'axe des x.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xtickformat>)[xtickformat]: Definir ou obtenir le format des etiquettes de l'axe des x.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xticklabels>)[xticklabels]: Definir ou obtenir les etiquettes de l'axe des x.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.xticks>)[xticks]: Definir ou obtenir les graduations de l'axe des x.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ylim>)[ylim]: définir ou obtenir les limites de l'axe des y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickangle>)[ytickangle]: Faire pivoter les etiquettes de l'axe des y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ytickformat>)[ytickformat]: Definir ou obtenir le format des etiquettes de l'axe des y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yticklabels>)[yticklabels]: Definir ou interroger les etiquettes des graduations de l'axe y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yticks>)[yticks]: Definir ou obtenir les graduations de l'axe des y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.yyaxis>)[yyaxis]: Cree ou selectionne un axe avec deux axes y.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zlim>)[zlim]: définir ou obtenir les limites de l'axe des z.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickangle>)[ztickangle]: Faire pivoter les etiquettes de l'axe des z.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.ztickformat>)[ztickformat]: Definir ou obtenir le format des etiquettes de l'axe des z.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zticklabels>)[zticklabels]: Definir ou obtenir les etiquettes de l'axe des z.
- #nlink(<graphics:3_labels_styling.1_axes_appearance.zticks>)[zticks]: Definir ou obtenir les graduations de l'axe des z.

=== Couleurs et style

Fonctions pour les couleurs, palettes de couleurs, limites de couleur, ordre des couleurs et style de rendu.

==== Functions

- #nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim]: Définit les limites de la palette de couleurs.
- #nlink(<graphics:3_labels_styling.2_color_styling.colororder>)[colororder]: Definir ou interroger l'ordre des couleurs des axes.
- #nlink(<graphics:3_labels_styling.2_color_styling.colstyle>)[colstyle]: Analyse la couleur et le style à partir d'une chaîne.
- #nlink(<graphics:3_labels_styling.2_color_styling.fliplightness>)[fliplightness]: Assombrir les couleurs claires et éclaircir les couleurs sombres.
- #nlink(<graphics:3_labels_styling.2_color_styling.rgbplot>)[rgbplot]: Tracer une palette de couleurs.
- #nlink(<graphics:3_labels_styling.2_color_styling.shading>)[shading]: Definit le mode d'ombrage des surfaces et patchs.
- #nlink(<graphics:3_labels_styling.2_color_styling.theme>)[theme]: Definit le theme de couleur d'une figure.
- #nlink(<graphics:3_labels_styling.2_color_styling.validatecolor>)[validatecolor]: Valider les valeurs de couleur.

==== Palettes de couleurs

Fonctions pour creer, selectionner et lister les palettes de couleurs.

===== Functions

- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.abyss>)[abyss]: Palette de couleurs abyss.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.autumn>)[autumn]: Palette de couleurs autumn.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.bone>)[bone]: Palette de couleurs bone.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colorcube>)[colorcube]: Tableau de colormap RGB en cube ameliore.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap]: Afficher et définir la palette de couleurs courante.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormaplist>)[colormaplist]: Fournit la liste des palettes de couleurs.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.cool>)[cool]: Palette de couleurs cool.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.copper>)[copper]: Palette de couleurs copper.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.flag>)[flag]: Palette de couleurs flag.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.gray>)[gray]: Palette de couleurs gray.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.hot>)[hot]: Palette de couleurs hot.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.hsv>)[hsv]: Tableau de colormap teinte-saturation-valeur.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.jet>)[jet]: Tableau de palette de couleurs jet.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.lines>)[lines]: Tableau de colormap base sur l'ordre des couleurs de lignes.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.nebula>)[nebula]: Palette de couleurs Nebula.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.parula>)[parula]: Palette de couleurs Parula.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.pink>)[pink]: Palette de couleurs Pink.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.prism>)[prism]: Palette de couleurs Prism.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.sky>)[sky]: Table de couleurs 'sky'.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.spring>)[spring]: Table de couleurs 'spring'.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.summer>)[summer]: Table de couleurs 'summer'.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.turbo>)[turbo]: Tableau de couleurs Turbo.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.viridis>)[viridis]: Tableau de couleurs Viridis.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.white>)[white]: tableau de colormap blanc.
- #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.winter>)[winter]: Tableau de colormap hiver.

=== Interactions, vues camera et eclairage

Fonctions pour les graphiques interactifs, callbacks, vues camera et eclairage.

==== Functions

- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.camlight>)[camlight]: Cree ou positionne une lumiere par rapport a la camera.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.drawnow>)[drawnow]: Met à jour les figures et traite les callbacks
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>)[Gestion des interruptions de callback dans Nelson]: 
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light]: Cree un objet lumiere dans des axes.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lightangle>)[lightangle]: Cree ou positionne une lumiere a partir d'angles.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting]: Definit le mode d'eclairage des surfaces et patchs.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material]: Definit les proprietes de materiau.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan]: Activer le mode déplacement (pan).
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.refresh>)[refresh]: Rafraîchir la figure courante.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.rotate3d>)[rotate3d]: Activer le mode rotation.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view]: Ligne de visée de la caméra.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitfor>)[waitfor]: Attendre une condition.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitforbuttonpress>)[waitforbuttonpress]: Attendre un clic ou une pression sur une touche.
- #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom]: Activer le mode zoom.

=== Etiquettes et annotations

Fonctions pour les titres, etiquettes d'axes, legendes, barres de couleur, texte et annotations.

==== Functions

- #nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation]: Creer des annotations de figure.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar]: Ajoute une echelle de couleurs aux axes.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.legend>)[legend]: Ajoute une legende aux axes.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.sgtitle>)[sgtitle]: Ajouter un titre commun a une disposition graphique.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.subtitle>)[subtitle]: Ajouter un sous-titre.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text]: crée des descriptions textuelles pour les points de données.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title]: Ajouter un titre.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.xlabel>)[xlabel]: Étiquette de l'axe des x.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.ylabel>)[ylabel]: Étiquette de l'axe des y.
- #nlink(<graphics:3_labels_styling.4_labels_annotations.zlabel>)[zlabel]: Étiquette de l'axe des z.

== Images

Fonctions pour afficher des images, convertir des frames et lire des frames enregistrees.

=== Functions

- #nlink(<graphics:4_images.frame2im>)[frame2im]: Récupère les données d'image d'une image vidéo.
- #nlink(<graphics:4_images.getframe>)[getframe]: Capture une figure ou des axes comme image vidéo.
- #nlink(<graphics:4_images.im2frame>)[im2frame]: Convertit une image en image de film.
- #nlink(<graphics:4_images.image>)[image]: Affiche une image à partir d'un tableau.
- #nlink(<graphics:4_images.imagesc>)[imagesc]: Affiche une image à partir d'un tableau avec des couleurs mises à l'échelle.
- #nlink(<graphics:4_images.imshow>)[imshow]: Affiche une image.
- #nlink(<graphics:4_images.movie>)[movie]: Jouer des séquences d'images enregistrées (movie).

== Impression et sauvegarde

Fonctions pour ouvrir et sauvegarder des fichiers figure.

=== Functions

- #nlink(<graphics:5_printing_saving.openfig>)[openfig]: Ouvre un fichier FIG Nelson.
- #nlink(<graphics:5_printing_saving.print>)[print]: Exporte une figure vers un fichier image ou document.
- #nlink(<graphics:5_printing_saving.savefig>)[savefig]: Enregistre une figure dans un fichier FIG Nelson.


#nested[
#pagebreak(weak: true)
#include "1_plots/1_line_plots/errorbar.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/fplot.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/fplot3.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/line.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/loglog.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/plot.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/plot3.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/semilogx.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/semilogy.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/xline.typ"
#pagebreak(weak: true)
#include "1_plots/1_line_plots/yline.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/fpolarplot.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polaraxes.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarbubblechart.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarhistogram.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarplot.typ"
#pagebreak(weak: true)
#include "1_plots/2_polar_plots/polarscatter.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/clabel.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contour.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contour3.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contourc.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/contourf.typ"
#pagebreak(weak: true)
#include "1_plots/3_contour_plots/fcontour.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/binscatter.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/boxchart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/boxplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblechart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblechart3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblecloud.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblelegend.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblelim.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/bubblesize.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/heatmap.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/hist.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/histogram.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/histogram2.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/parallelplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/plotmatrix.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/raincloudplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatter.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatter3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/scatterhistogram.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/spy.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/stackedplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/swarmchart.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/swarmchart3.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/violinplot.typ"
#pagebreak(weak: true)
#include "1_plots/4_data_distribution_plots/wordcloud.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/compass.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/compassplot.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/coneplot.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/feather.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/quiver.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/quiver3.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/stream2.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/stream3.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamline.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamparticles.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamribbon.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamslice.typ"
#pagebreak(weak: true)
#include "1_plots/5_vector_fields/streamtube.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar3.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/bar3h.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/barh.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/donutchart.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/pareto.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/pie.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/piechart.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stairs.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stem.typ"
#pagebreak(weak: true)
#include "1_plots/6_discrete_data_plots/stem3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/area.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/contourslice.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/cylinder.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fill.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fill3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fimplicit.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fimplicit3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fmesh.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/fsurf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/isonormals.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/isosurface.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/mesh.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/meshc.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/meshz.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/patch.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/pcolor.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/rectangle.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/ribbon.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/shrinkfaces.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/slice.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/smooth3.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/sphere.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surface.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfc.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfl.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/surfnorm.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/triplot.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/trisurf.typ"
#pagebreak(weak: true)
#include "1_plots/7_surfaces_volumes_polygons/waterfall.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/addpoints.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/animatedline.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/clearpoints.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/comet.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/comet3.typ"
#pagebreak(weak: true)
#include "1_plots/8_animation/getpoints.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/allchild.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/ancestor.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/axes.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/cla.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/clf.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/close.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/figure.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/findall.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/findobj.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/gca.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/gcf.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/groot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/hggroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/hold.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/is2D.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/isValidGraphicsProperty.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/isgraphics.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/ishold.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/1_object_management/newplot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/nexttile.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/subplot.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tiledlayout.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tilenum.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/2_layout_objects/tilerowcol.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiaxes.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uibutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uibuttongroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicheckbox.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicontextmenu.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uicontrol.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uidatepicker.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uidropdown.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uieditfield.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uigauge.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uigridlayout.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uihtml.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiknob.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilabel.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilamp.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uilistbox.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uimenu.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uipanel.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiradiobutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uislider.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uispinner.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uiswitch.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitab.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitabgroup.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitable.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitextarea.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitogglebutton.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitree.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/3_ui_controls/uitreenode.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.animatedline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.arrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.doublearrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.ellipse.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.line.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.rectangle.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.textarrow.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.annotation.textbox.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.area.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.axes.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.binscatter.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.boxchart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblechart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblecloud.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.bubblelegend.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.colorbar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.compassplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.contour.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.donutchart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.errorbar.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.figure.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functioncontour.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.functionsurface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.groot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.histogram.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.histogram2.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.image.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.implicitfunctionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.implicitfunctionsurface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.legend.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.light.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.line.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.parallelplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.parameterizedfunctionline.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.patch.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.piechart.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.polaraxes.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.quiver.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.raincloudplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.scatter.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.scatterhistogram.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.stackedplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.stem.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.surface.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.text.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uicontextmenu.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uicontrol.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.uimenu.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.violinplot.properties.typ"
#pagebreak(weak: true)
#include "2_graphics_objects/4_properties/nelson.graphics.wordcloud.properties.typ"
#pagebreak(weak: true)
#include "3_labels_styling/caxis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/axis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/box.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/daspect.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/datetick.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/grid.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/pbaspect.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/rticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetalim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetaticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/thetaticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xtickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xtickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/xticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ylim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ytickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ytickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/yyaxis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zlim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ztickangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/ztickformat.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zticklabels.typ"
#pagebreak(weak: true)
#include "3_labels_styling/1_axes_appearance/zticks.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/clim.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colororder.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colstyle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/fliplightness.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/rgbplot.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/shading.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/theme.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/validatecolor.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/abyss.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/autumn.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/bone.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colorcube.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colormap.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/colormaplist.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/cool.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/copper.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/flag.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/gray.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/hot.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/hsv.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/jet.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/lines.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/nebula.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/parula.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/pink.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/prism.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/sky.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/spring.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/summer.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/turbo.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/viridis.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/white.typ"
#pagebreak(weak: true)
#include "3_labels_styling/2_color_styling/colormaps/winter.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/camlight.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/drawnow.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/graphical_callback.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/light.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/lightangle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/lighting.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/material.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/pan.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/refresh.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/rotate3d.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/view.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/waitfor.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/waitforbuttonpress.typ"
#pagebreak(weak: true)
#include "3_labels_styling/3_interactions_camera_lighting/zoom.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/annotation.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/colorbar.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/legend.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/sgtitle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/subtitle.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/text.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/title.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/xlabel.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/ylabel.typ"
#pagebreak(weak: true)
#include "3_labels_styling/4_labels_annotations/zlabel.typ"
#pagebreak(weak: true)
#include "4_images/frame2im.typ"
#pagebreak(weak: true)
#include "4_images/getframe.typ"
#pagebreak(weak: true)
#include "4_images/im2frame.typ"
#pagebreak(weak: true)
#include "4_images/image.typ"
#pagebreak(weak: true)
#include "4_images/imagesc.typ"
#pagebreak(weak: true)
#include "4_images/imshow.typ"
#pagebreak(weak: true)
#include "4_images/movie.typ"
#pagebreak(weak: true)
#include "5_printing_saving/openfig.typ"
#pagebreak(weak: true)
#include "5_printing_saving/print.typ"
#pagebreak(weak: true)
#include "5_printing_saving/savefig.typ"
]
