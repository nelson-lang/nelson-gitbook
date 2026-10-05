# figure properties

Proprietes de l'objet graphique figure.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>figure</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Alphamap** | met a jour le rendu au prochain rafraichissement graphique. | Type: vecteur numerique fini. Valeurs prises en charge: valeurs alpha numeriques dans [0,1]. | 
| **AutoResizeChildren** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **CloseRequestFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Color** | couleur de fond de la figure. Par defaut : gris clair [0.94 0.94 0.94] (theme clair). Les exports (saveas) utilisent un fond blanc tant que InvertHardcopy vaut 'on'. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **Colormap** | met a jour le rendu au prochain rafraichissement graphique. | Type: matrice numerique finie. Valeurs prises en charge: matrice RGB m-par-3 avec valeurs dans [0,1]. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **CurrentAxes** | change la cible de figure utilisee par les commandes de trace qui operent sur les axes courants. | Type: handle graphique d'axes. Valeurs prises en charge: axes ou axes polaires enfant de la figure, ou handle graphique vide. | 
| **CurrentCharacter** | rapporte l'etat d'entree clavier pour la figure courante. | Type: valeur texte d'un caractere. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire contenant le dernier caractere, ou texte vide. | 
| **CurrentObject** | rapporte l'objet actuellement cible par l'interaction de figure. | Type: handle graphique. Valeurs prises en charge: handle de l'objet enfant sous le pointeur ou cible d'interaction courante, ou handle graphique vide. | 
| **CurrentPoint** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DevicePixelRatio** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **DockControls** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **DrawLater** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **FileName** | stocke le chemin de fichier associe a une figure persistee ou chargee. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **GraphicsSmoothing** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **Icon** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, image array, or empty array. Valeurs prises en charge: [], chemin d'image ou donnees image. | 
| **InnerPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **IntegerHandle** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **InvertHardcopy** | 'on' (par defaut) : saveas exporte la figure avec un fond blanc quelle que soit sa couleur. 'off' : l'export conserve la couleur de fond affichee. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **KeyPressFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **KeyReleaseFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **MenuBar** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'figure', 'auto'. | 
| **Name** | met a jour le nom de l'objet affiche par les fenetres, gestionnaires ou l'inspection d'objet. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **NextPlot** | choisit comment la prochaine commande graphique reutilise ou reinitialise les enfants. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'add', 'replace', 'replacechildren', 'replaceall', 'new'. | 
| **Number** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **NumberTitle** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **OuterPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PaperOrientation** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'vertical', 'horizontal'. | 
| **PaperPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PaperPositionMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **PaperSize** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PaperType** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'usletter', 'a4', 'a3', 'a5', 'b4', 'b5', 'tabloid' ou 'legal'. | 
| **PaperUnits** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **Pointer** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'arrow', 'crosshair', 'ibeam', 'watch', 'topl', 'topr', 'botl', 'botr', 'circle', 'cross', 'fleur', 'left', 'right', 'top', 'bottom', 'custom'. | 
| **PointerShapeCData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **PointerShapeHotSpot** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Position** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Renderer** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'opengl', 'painters'. | 
| **RendererMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Resize** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **Scrollable** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **SelectionType** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'extend', 'alt', 'open'. | 
| **SizeChangedFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **Theme** | renvoie l'objet de theme graphique actif; l'affectation de 'light' ou 'dark' met a jour le rendu au prochain rafraichissement graphique. | Type: objet de theme graphique en lecture, chaine scalaire ou vecteur ligne de caracteres en ecriture. Valeurs prises en charge en affectation: 'light', 'dark'. | 
| **ThemeChangedFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **ThemeMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ToolBar** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'figure', 'auto'. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **Units** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **WindowButtonDownFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowButtonMotionFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowButtonUpFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowKeyPressFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowKeyReleaseFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowScrollWheelFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **WindowState** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'minimized', 'maximized', 'fullscreen'. | 
| **WindowStyle** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'modal', 'docked'. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
h = figure('Visible', 'off');
names = properties(h);
close(h)
```


## 🔗 Voir aussi

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
