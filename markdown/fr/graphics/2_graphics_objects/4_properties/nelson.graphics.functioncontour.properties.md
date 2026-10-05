# functioncontour properties

Proprietes de l'objet graphique functioncontour.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>functioncontour</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Annotation** | met a jour les metadonnees d'annotation. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: handle d'annotation ou handle vide. | 
| **BeingDeleted** | indique l'etat de suppression. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle la file d'attente des callbacks. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute lors d'un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **Children** | stocke les handles graphiques enfants. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | controle le rognage par les axes parents. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ContextMenu** | attache un menu contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **ContourMatrix** | stocke les segments de contour generes. | Type: matrice numerique. Valeurs prises en charge: [] ou matrice de contour. | 
| **CreateFcn** | s'execute lors de la creation. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DataTipTemplate** | met a jour le contenu des data tips. | Type: data tip template object ou handle vide. Valeurs prises en charge: handle de data tip template ou handle vide. | 
| **DeleteFcn** | s'execute lors de la suppression. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DisplayName** | definit le libelle utilise par les legendes. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **EdgeAlpha** | definit la transparence des lignes de contour. | Type: scalaire numerique. Valeurs prises en charge: valeurs dans [0, 1]. | 
| **EdgeColor** | definit la couleur interne des lignes. | Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'. | 
| **FaceAlpha** | definit la transparence du remplissage. | Type: scalaire numerique ou valeur texte. Valeurs prises en charge: valeurs dans [0, 1], 'flat' ou 'interp'. | 
| **FaceColor** | definit la couleur du remplissage. | Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'. | 
| **Fill** | controle le remplissage entre niveaux. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Floating** | controle l'utilisation des niveaux comme coordonnee z. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Function** | definit la fonction echantillonnee. | Type: handle de fonction. Valeurs prises en charge: handle scalaire a deux entrees. | 
| **HandleVisibility** | controle la decouverte du handle. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | controle la reception des evenements pointeur. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interruptible** | controle l'interruption des callbacks. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LabelColor** | definit la couleur des libelles. | Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'. | 
| **LabelFormat** | definit le format des libelles. | Type: valeur texte ou handle de fonction. Valeurs prises en charge: texte de format, chaine scalaire ou handle de fonction. | 
| **LabelSpacing** | definit l'espacement des libelles. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies non negatives. | 
| **LevelList** | definit les niveaux de contour. | Type: vecteur numerique. Valeurs prises en charge: valeurs de niveaux reelles finies. | 
| **LevelListMode** | selectionne les niveaux automatiques ou manuels. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LevelStep** | definit l'espacement entre niveaux generes. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **LevelStepMode** | selectionne l'espacement automatique ou manuel. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LineColor** | definit la couleur des lignes de contour. | Type: valeur couleur. Valeurs prises en charge: triplet RGB, nom de couleur court ou long, 'flat', 'interp' ou 'none'. | 
| **LineStyle** | definit le style des lignes. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'. | 
| **LineWidth** | definit l'epaisseur des lignes. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **MeshDensity** | definit le nombre de points echantillonnes par direction. | Type: scalaire entier positif. Valeurs prises en charge: entiers superieurs a un. | 
| **Parent** | definit les axes parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle d'axes. | 
| **PickableParts** | controle les parties recevant les evenements pointeur. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | definit l'etat de selection. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **SelectionHighlight** | controle la surbrillance de selection. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ShowText** | controle l'affichage des libelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Tag** | stocke un texte utilisateur d'identification. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **TextList** | definit les niveaux qui recoivent des libelles. | Type: vecteur numerique. Valeurs prises en charge: valeurs de niveaux reelles finies. | 
| **TextListMode** | selectionne les niveaux libelles automatiques ou manuels. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **TextStep** | definit l'espacement des niveaux libelles. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **TextStepMode** | selectionne l'espacement automatique ou manuel des libelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Type** | indique le type d'objet graphique. | Type: texte en lecture seule. Valeurs prises en charge: 'functioncontour'. | 
| **UserData** | stocke des donnees utilisateur. | Type: any Nelson value. Valeurs prises en charge: toute valeur. | 
| **Visible** | controle la visibilite. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XData** | stocke les coordonnees x echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec YData et ZData. | 
| **XDataMode** | selectionne les donnees x automatiques ou manuelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XDataSource** | stocke l'expression source des donnees x. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **XRange** | definit l'intervalle x echantillonne. | Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes. | 
| **XRangeMode** | selectionne les limites x automatiques ou manuelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YData** | stocke les coordonnees y echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et ZData. | 
| **YDataMode** | selectionne les donnees y automatiques ou manuelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YDataSource** | stocke l'expression source des donnees y. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **YRange** | definit l'intervalle y echantillonne. | Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes. | 
| **YRangeMode** | selectionne les limites y automatiques ou manuelles. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZData** | stocke les valeurs de fonction echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et YData. | 
| **ZDataSource** | stocke l'expression source des donnees z. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **ZLocation** | definit le plan z utilise pour tracer les contours. | Type: scalaire numerique ou valeur texte. Valeurs prises en charge: scalaire fini, 'zmin' ou 'zmax'. | 



## 💡 Exemple

Inspecter les proprietes d'un contour de fonction.

```matlab
h = fcontour(@(x, y) x.^2 - y.^2);
names = properties(h);
```


## 🔗 Voir aussi

[fcontour](../../../graphics/1_plots/3_contour_plots/fcontour.md), [proprietes de contour](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.contour.properties.md).