#import "../../nelson_help.typ": *

= groot properties <graphics:2_graphics_objects.4_properties.nelson.graphics.groot.properties>

Proprietes de l'objet graphique groot.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour un objet graphique #strong[groot];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[CallbackObject];], [rapporte le contexte d'execution de callback.], [Type: handle graphique. Valeurs prises en charge: handle de l'objet dont le callback s'execute, ou handle graphique vide hors execution de callback.], 
  [#strong[Children];], [les operations de parentage mettent le vecteur a jour.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[CommandWindowSize];], [rapporte la taille de la fenetre de commande utilisee pour la mise en page de l'affichage.], [Type: vecteur numerique a deux elements en lecture seule. Valeurs prises en charge: \[colonnes lignes\] en caracteres.], 
  [#strong[CurrentFigure];], [change ou rapporte la figure courante racine utilisee par les commandes de trace.], [Type: handle graphique de figure. Valeurs prises en charge: handle de la figure courante, ou handle graphique vide si aucune figure courante n'existe.], 
  [#strong[FixedWidthFontName];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'.], 
  [#strong[Format];], [rapporte le format d'affichage numerique courant.], [Type: chaine scalaire en lecture seule. Valeurs prises en charge: 'short', 'long', 'shortE', 'longE', 'shortG', 'longG', 'shortEng', 'longEng', '+', 'bank', 'hex', 'rational'.], 
  [#strong[FormatSpacing];], [rapporte l'espacement de lignes courant utilise lors de l'affichage.], [Type: chaine scalaire en lecture seule. Valeurs prises en charge: 'loose', 'compact'.], 
  [#strong[HandleVisibility];], [controle si les fonctions de recherche de handles peuvent trouver l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.], 
  [#strong[MonitorPositions];], [rapporte le rectangle de l'ecran principal, relu a chaque interrogation (changements d'echelle ou de resolution compris).], [Type: vecteur numerique a quatre elements (lecture seule). Valeurs prises en charge: \[left bottom width height\] dans les Units de la racine ; en pixels, pixels logiques (1 pixel \= 1\/96 pouce).], 
  [#strong[Parent];], [change le parent et met a jour Children sur les anciens et nouveaux parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.], 
  [#strong[PointerLocation];], [recalcule la geometrie, les limites ou la disposition.], [Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple \[left bottom width height\], \[x y z\], \[azimuth elevation\] ou \[minor major\].], 
  [#strong[ScreenDepth];], [rapporte la profondeur de couleur d'ecran utilisee par le code d'affichage graphique.], [Type: scalaire numerique. Valeurs prises en charge: profondeur positive en bits rapportee par l'affichage.], 
  [#strong[ScreenPixelsPerInch];], [rapporte la resolution logique utilisee pour convertir les pixels en pouces, centimetres et points.], [Type: scalaire numerique fini. Valeurs prises en charge: 96 sous Windows, quelle que soit l'echelle d'affichage.], 
  [#strong[ScreenSize];], [rapporte le rectangle de l'ecran principal utilise pour placer les figures, relu a chaque interrogation.], [Type: vecteur numerique a quatre elements (lecture seule). Valeurs prises en charge: \[left bottom width height\] dans les Units de la racine ; en pixels, pixels logiques (1 pixel \= 1\/96 pouce) : un ecran 1920x1080 a l'echelle 125 % rapporte \[1 1 1536 864\], et ses figures un DevicePixelRatio de 1.25.], 
  [#strong[ShowHiddenHandles];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: on\/off value. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[Tag];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.], 
  [#strong[Type];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.], 
  [#strong[Units];], [recalcule la geometrie, les limites ou la disposition.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.], 
  [#strong[UserData];], [met a jour l'etat stocke de l'objet.], [Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: \[\], tableaux numeriques, texte, cellules, structures ou handles.], 
)

== Exemple

Creer l'objet graphique et lister ses proprietes.

``````matlab
h = groot();
names = properties(h)
``````


== Voir aussi

#nlink(<graphics:2_graphics_objects.1_object_management.groot>)[groot];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [--], [Page de proprietes ajoutee.],
)

// Auteur: Allan CORNET
