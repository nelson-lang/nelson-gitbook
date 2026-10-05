# tiledlayout properties

Proprietes de l'objet graphique tiledlayout.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>tiledlayout</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **GridSize** | change la taille de grille fixe demandee par un layout en tuiles. | Type: vecteur de deux entiers positifs. Valeurs prises en charge: [rows columns]. | 
| **GridSizeChangedFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **InnerPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Layout** | met a jour le placement demande au gestionnaire de layout parent. | Type: objet d'options de layout ou valeur vide. Valeurs prises en charge: informations de layout stockees par les gestionnaires parents, y compris le placement en tuile quand l'objet le prend en charge. | 
| **OuterPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Padding** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'loose', 'compact', 'tight', 'none'. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **Position** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PositionConstraint** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Subtitle** | met a jour le sous-titre affiche ou l'objet sous-titre. | Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de sous-titre, vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **TileArrangement** | controle comment un layout en tuiles alloue et agrandit les tuiles. | Type: mot-cle texte. Valeurs prises en charge: 'fixed' ou 'flow'. | 
| **TileIndexing** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **TileSpacing** | change l'espacement entre les tuiles d'un layout en tuiles. | Type: mot-cle texte. Valeurs prises en charge: 'loose', 'compact', 'tight' ou 'none'. | 
| **Title** | met a jour le titre affiche ou l'objet titre associe a l'objet graphique. | Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de titre, vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **ToolBar** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'figure', 'auto'. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **Units** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XLabel** | met a jour l'objet libelle de l'axe x et rafraichit la decoration de l'axe. | Type: objet texte graphique. Valeurs prises en charge: objet texte utilise comme libelle de l'axe x. | 
| **YLabel** | met a jour l'objet libelle de l'axe y et rafraichit la decoration de l'axe. | Type: objet texte graphique. Valeurs prises en charge: objet texte utilise comme libelle de l'axe y. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
h = tiledlayout(f, 1, 2);
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[tiledlayout](../../../graphics/2_graphics_objects/2_layout_objects/tiledlayout.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
