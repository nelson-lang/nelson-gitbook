#import "../../nelson_help.typ": *

= annotation textbox properties <graphics:2_graphics_objects.4_properties.nelson.graphics.annotation.textbox.properties>

Proprietes de l'annotation textbox.

== Description

Cette page documente les proprietes visibles retournees par #strong[properties]; pour une annotation #strong[textbox];.

 

#table(
  columns: 3,
  [Propriete], [Action], [Type et valeurs prises en charge], 
  [#strong[BackgroundColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB'.], 
  [#strong[BeingDeleted];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.], 
  [#strong[BusyAction];], [controle si un callback interrompant est mis en file ou annule.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.], 
  [#strong[ButtonDownFcn];], [s'execute lors d'un clic sur l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[Children];], [les operations de parentage mettent le vecteur a jour.], [Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.], 
  [#strong[Color];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB'.], 
  [#strong[ContextMenu];], [associe le menu contextuel affiche au clic droit.], [Type: graphics object handle scalar. Valeurs prises en charge: handle vide ou handle d'objet menu contextuel.], 
  [#strong[CreateFcn];], [s'execute lors de la creation de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[DeleteFcn];], [s'execute lors de la suppression de l'objet.], [Type: callback value. Valeurs prises en charge: \[\], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.], 
  [#strong[EdgeColor];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: color value or color mode keyword. Valeurs prises en charge: 'red'\/'r', 'green'\/'g', 'blue'\/'b', 'cyan'\/'c', 'magenta'\/'m', 'yellow'\/'y', 'black'\/'k', 'white'\/'w', triplet RGB \[r g b\] avec valeurs dans \[0,1\], ou couleur hexadecimale '\#RRGGBB'\/'\#RGB', 'none', 'flat', 'interp'.], 
  [#strong[FaceAlpha];], [change la transparence du remplissage de l'annotation.], [Type: scalaire numerique. Valeurs prises en charge: valeur dans \[0,1\].], 
  [#strong[FitBoxToText];], [redimensionne les limites du textbox pour adapter le texte quand active.], [Type: valeur on\/off. Valeurs prises en charge: 'on', 'off', true ou false.], 
  [#strong[FontAngle];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'italic'.], 
  [#strong[FontName];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'.], 
  [#strong[FontSize];], [recalcule la geometrie, les limites ou la disposition.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.], 
  [#strong[FontUnits];], [change la conversion de FontSize pour le texte rendu.], [Type: mot-cle texte. Valeurs prises en charge: 'points', 'inches', 'centimeters', 'normalized' ou 'pixels'.], 
  [#strong[FontWeight];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'.], 
  [#strong[HandleVisibility];], [controle si le handle de l'objet est liste par les recherches de handles.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'callback', 'off'.], 
  [#strong[HitTest];], [controle si l'objet peut capturer les clics souris.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[HorizontalAlignment];], [aligne horizontalement le texte de l'annotation.], [Type: mot-cle texte. Valeurs prises en charge: 'left', 'center' ou 'right'.], 
  [#strong[Interpreter];], [change l'interpretation du balisage du texte d'annotation.], [Type: mot-cle texte. Valeurs prises en charge: 'tex', 'latex' ou 'none'.], 
  [#strong[Interruptible];], [controle si un callback en cours peut etre interrompu.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[LineStyle];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'.], 
  [#strong[LineWidth];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0.], 
  [#strong[Margin];], [change l'espacement entre le texte du textbox et son contour.], [Type: scalaire numerique fini non negatif. Valeurs prises en charge: valeur superieure ou egale a 0 en pixels.], 
  [#strong[Parent];], [change le parent et met a jour Children sur les anciens et nouveaux parents.], [Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.], 
  [#strong[PickableParts];], [controle quelles parties de l'objet peuvent capturer les clics souris.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'.], 
  [#strong[Position];], [met a jour la position et la taille de l'annotation; les annotations de type ligne mettent aussi X et Y a jour.], [Type: vecteur numerique a quatre elements. Valeurs prises en charge: \[x y width height\] pour les annotations de forme et textbox, ou \[xstart ystart dx dy\] pour les annotations de type ligne.], 
  [#strong[Rotation];], [fait pivoter l'annotation autour de son point d'ancrage.], [Type: scalaire numerique fini. Valeurs prises en charge: angle de rotation en degres.], 
  [#strong[Selected];], [indique si l'objet est actuellement selectionne.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[SelectionHighlight];], [controle si les poignees de selection sont dessinees quand l'objet est selectionne.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
  [#strong[String];], [met a jour le contenu texte affiche.], [Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs ligne de caracteres.], 
  [#strong[Tag];], [met a jour l'etat stocke de l'objet.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.], 
  [#strong[Type];], [valeur calculee par Nelson; les operations graphiques la mettent a jour.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.], 
  [#strong[Units];], [change l'interpretation des valeurs de position et convertit Position, X et Y.], [Type: mot-cle texte. Valeurs prises en charge: 'normalized', 'inches', 'centimeters', 'characters', 'points' ou 'pixels'.], 
  [#strong[UserData];], [met a jour l'etat stocke de l'objet.], [Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: \[\], tableaux numeriques, texte, cellules, structures ou handles.], 
  [#strong[VerticalAlignment];], [aligne verticalement le texte de l'annotation.], [Type: mot-cle texte. Valeurs prises en charge: 'top', 'middle' ou 'bottom'.], 
  [#strong[Visible];], [met a jour le rendu au prochain rafraichissement graphique.], [Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.], 
)

== Exemple

Creer l'annotation et lister ses proprietes.

``````matlab
f = figure('Visible', 'off');
h = annotation(f, 'textbox', [0.2 0.2 0.3 0.2], 'String', 'note');
names = properties(h);
close(f)
``````


== Voir aussi

#nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation];, #nlink(<handle:properties>)[properties];, #nlink(<handle:get>)[get];, #nlink(<handle:set>)[set];.
