# image properties

Proprietes de l'objet graphique image.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>image</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **AlphaData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **AlphaDataMapping** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par les outils interactifs et l'inspection d'objet. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe a l'objet graphique, ou handle graphique vide si aucune annotation n'est attachee. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **CData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **CDataMapping** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | inclut ou exclut l'objet des tests de selection souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interpolation** | change l'interpolation des couleurs ou echantillons entre les valeurs de donnees stockees. | Type: mot-cle texte. Valeurs prises en charge: 'nearest', 'linear' ou 'none'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **MaxRenderedResolution** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **PickableParts** | choisit quelles parties visibles ou invisibles peuvent recevoir les clics. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **YData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = image('Parent', ax, 'CData', magic(3));
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[image](../../../graphics/4_images/image.md), [imagesc](../../../graphics/4_images/imagesc.md), [imshow](../../../graphics/4_images/imshow.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
