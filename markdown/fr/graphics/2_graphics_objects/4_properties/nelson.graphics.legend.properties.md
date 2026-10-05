# legend properties

Proprietes de l'objet graphique legend.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>legend</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Title** | met a jour le titre affiche ou l'objet titre associe a l'objet graphique. | Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de titre, vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **AutoUpdate** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **Box** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **BackgroundAlpha** | met a jour le rendu au prochain rafraichissement graphique. | Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans [0,1]; les tableaux doivent correspondre aux donnees rendues associees. | 
| **Color** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **EdgeColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value or color mode keyword. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **FontName** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'. | 
| **FontSize** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **FontAngle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'italic'. | 
| **FontWeight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'. | 
| **Interpreter** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'tex', 'none'. | 
| **ItemHitFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **LineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **Location** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **NumColumns** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **NumColumnsMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Orientation** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'vertical', 'horizontal'. | 
| **IconColumnWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, image array, or empty array. Valeurs prises en charge: [], chemin d'image ou donnees image. | 
| **IconColumnWidthMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Direction** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'reverse'. | 
| **DirectionMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Position** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **String** | met a jour le contenu texte affiche. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs ligne de caracteres. | 
| **TextColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **Units** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **Selected** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **HitTest** | inclut ou exclut l'objet des tests de selection souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **PickableParts** | choisit quelles parties visibles ou invisibles peuvent recevoir les clics. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Layout** | met a jour le placement demande au gestionnaire de layout parent. | Type: objet d'options de layout ou valeur vide. Valeurs prises en charge: informations de layout stockees par les gestionnaires parents, y compris le placement en tuile quand l'objet le prend en charge. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
plot(ax, 1:3, 1:3, 'DisplayName', 'line');
h = legend(ax, {'line'});
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[legend](../../../graphics/3_labels_styling/4_labels_annotations/legend.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
