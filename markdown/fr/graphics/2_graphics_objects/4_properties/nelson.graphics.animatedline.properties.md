# animatedline properties

Proprietes de l'objet graphique animatedline.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>animatedline</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **AlignVertexCenters** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par les outils interactifs et l'inspection d'objet. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe a l'objet graphique, ou handle graphique vide si aucune annotation n'est attachee. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Color** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **ColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DisplayName** | met a jour le libelle utilise par les entrees de legende et l'identification de l'objet. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | inclut ou exclut l'objet des tests de selection souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LineStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineStyleMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **Marker** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MarkerSize** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **MaximumNumPoints** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **PickableParts** | choisit quelles parties visibles ou invisibles peuvent recevoir les clics. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SeriesIndex** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = animatedline(ax, 1:3, [1 3 2]);
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[animatedline](../../../graphics/1_plots/8_animation/animatedline.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
