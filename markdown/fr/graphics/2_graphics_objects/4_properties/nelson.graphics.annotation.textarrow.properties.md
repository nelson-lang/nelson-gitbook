# annotation textarrow properties

Proprietes de l'annotation textarrow.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour une annotation <b>textarrow</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute lors d'un clic sur l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Color** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **ContextMenu** | associe le menu contextuel affiche au clic droit. | Type: graphics object handle scalar. Valeurs prises en charge: handle vide ou handle d'objet menu contextuel. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **FontAngle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'italic'. | 
| **FontName** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'. | 
| **FontSize** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **FontUnits** | change la conversion de FontSize pour le texte rendu. | Type: mot-cle texte. Valeurs prises en charge: 'points', 'inches', 'centimeters', 'normalized' ou 'pixels'. | 
| **FontWeight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'. | 
| **HandleVisibility** | controle si le handle de l'objet est liste par les recherches de handles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'callback', 'off'. | 
| **HeadLength** | change la longueur de la tete de fleche d'annotation. | Type: scalaire numerique. Valeurs prises en charge: scalaire positif fini en points. | 
| **HeadStyle** | change la forme de la tete de fleche d'annotation. | Type: mot-cle texte. Valeurs prises en charge: 'plain', 'ellipse', 'vback1', 'vback2', 'vback3', 'cback1', 'cback2', 'cback3', 'fourstar', 'rectangle', 'diamond', 'rose', 'hypocycloid', 'astroid', 'deltoid' ou 'none'. | 
| **HeadWidth** | change la largeur de la tete de fleche d'annotation. | Type: scalaire numerique. Valeurs prises en charge: scalaire positif fini en points. | 
| **HitTest** | controle si l'objet peut capturer les clics souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **HorizontalAlignment** | aligne horizontalement le texte de l'annotation. | Type: mot-cle texte. Valeurs prises en charge: 'left', 'center' ou 'right'. | 
| **Interpreter** | change l'interpretation du balisage du texte d'annotation. | Type: mot-cle texte. Valeurs prises en charge: 'tex', 'latex' ou 'none'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LineStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **PickableParts** | controle quelles parties de l'objet peuvent capturer les clics souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Position** | met a jour la position et la taille de l'annotation; les annotations de type ligne mettent aussi X et Y a jour. | Type: vecteur numerique a quatre elements. Valeurs prises en charge: [x y width height] pour les annotations de forme et textbox, ou [xstart ystart dx dy] pour les annotations de type ligne. | 
| **Selected** | indique si l'objet est actuellement selectionne. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | controle si les poignees de selection sont dessinees quand l'objet est selectionne. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **String** | met a jour le contenu texte affiche. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs ligne de caracteres. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **TextBackgroundColor** | met a jour le fond de la boite de texte de l'etiquette textarrow. | Type: valeur de couleur. Valeurs prises en charge: 'none', noms et raccourcis de couleurs, triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **TextColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **TextEdgeColor** | met a jour le contour de la boite de texte de l'etiquette textarrow. | Type: valeur de couleur. Valeurs prises en charge: 'none', noms et raccourcis de couleurs, triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **TextLineWidth** | change la largeur du contour de la boite de texte de l'etiquette textarrow. | Type: scalaire numerique positif fini. Valeurs prises en charge: valeur superieure a 0 en points. | 
| **TextMargin** | change l'espacement entre le texte textarrow et le contour de sa boite. | Type: scalaire numerique fini non negatif. Valeurs prises en charge: valeur superieure ou egale a 0 en pixels. | 
| **TextRotation** | fait pivoter le libelle textarrow. | Type: scalaire numerique fini. Valeurs prises en charge: angle de rotation en degres. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **Units** | change l'interpretation des valeurs de position et convertit Position, X et Y. | Type: mot-cle texte. Valeurs prises en charge: 'normalized', 'inches', 'centimeters', 'characters', 'points' ou 'pixels'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **VerticalAlignment** | aligne verticalement le texte de l'annotation. | Type: mot-cle texte. Valeurs prises en charge: 'top', 'cap', 'middle', 'baseline' ou 'bottom'. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **X** | met a jour les extremites horizontales de l'annotation et recalcule sa position. | Type: vecteur numerique a deux elements. Valeurs prises en charge: coordonnees x finies [xstart xend] en unites normalisees ou selon Units pour les annotations de type ligne. | 
| **Y** | met a jour les extremites verticales de l'annotation et recalcule sa position. | Type: vecteur numerique a deux elements. Valeurs prises en charge: coordonnees y finies [ystart yend] en unites normalisees ou selon Units pour les annotations de type ligne. | 



## 💡 Exemple

Creer l'annotation et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
h = annotation(f, 'textarrow');
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[annotation](../../../graphics/3_labels_styling/4_labels_annotations/annotation.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).