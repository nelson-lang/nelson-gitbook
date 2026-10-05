# implicitfunctionline properties

Proprietes de l'objet graphique implicitfunctionline.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>implicitfunctionline</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par l'inspection graphique. | Type: objet annotation graphique ou handle vide. Valeurs prises en charge: handle d'annotation ou handle vide. | 
| **BeingDeleted** | indique l'etat de suppression de l'objet. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle la file des callbacks pendant l'execution d'un autre callback. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: valeur de callback. Valeurs prises en charge: [], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback. | 
| **Children** | stocke les handles graphiques enfants. | Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | controle le rognage dans les axes parents. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Color** | definit la couleur de la courbe implicite. | Type: triplet RGB ou nom de couleur. Valeurs prises en charge: triplet RGB, nom court de couleur ou nom long de couleur. | 
| **ColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ContextMenu** | attache un menu contextuel a l'objet. | Type: handle graphique scalaire. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **ContourMatrix** | stocke les donnees de segments de contour generees. | Type: matrice numerique. Valeurs prises en charge: [] ou matrice de contour. | 
| **CreateFcn** | s'execute a la creation de l'objet. | Type: valeur de callback. Valeurs prises en charge: [], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback. | 
| **DataTipTemplate** | met a jour le contenu des infobulles de donnees. | Type: objet modele d'infobulle ou handle vide. Valeurs prises en charge: handle de modele d'infobulle ou handle vide. | 
| **DeleteFcn** | s'execute a la suppression de l'objet. | Type: valeur de callback. Valeurs prises en charge: [], fonction handle, vecteur de caracteres, string scalaire ou cellule de callback. | 
| **DisplayName** | definit le libelle utilise par les legendes et l'identification d'objet. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire. | 
| **EdgeAlpha** | definit la transparence de ligne de contour interne. | Type: scalaire numerique. Valeurs prises en charge: valeurs dans [0, 1]. | 
| **EdgeColor** | definit la couleur de ligne de contour interne. | Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'. | 
| **FaceAlpha** | definit la transparence de contour rempli interne. | Type: scalaire numerique ou valeur texte. Valeurs prises en charge: valeurs dans [0, 1], 'flat' ou 'interp'. | 
| **FaceColor** | definit la couleur de contour rempli interne. | Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'. | 
| **Fill** | controle le remplissage de contour interne. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Floating** | controle si les contours utilisent leur niveau comme coordonnee z. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Function** | definit la fonction echantillonnee pour generer la courbe implicite. | Type: fonction handle. Valeurs prises en charge: fonction handle scalaire avec deux entrees. | 
| **HandleVisibility** | controle la decouverte du handle. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | controle si l'objet peut recevoir des evenements pointeur. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interruptible** | controle si les callbacks peuvent etre interrompus. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LabelColor** | definit la couleur des libelles de contour internes. | Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'. | 
| **LabelFormat** | definit le format des libelles de contour internes. | Type: valeur texte ou fonction handle. Valeurs prises en charge: texte de format, string scalaire ou fonction handle. | 
| **LabelSpacing** | definit l'espacement entre les libelles de contour internes. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies non negatives. | 
| **LevelList** | stocke le niveau zero implicite utilise pour le dessin. | Type: vecteur numerique. Valeurs prises en charge: niveaux reels finis. | 
| **LevelListMode** | stocke le mode automatique ou manuel des niveaux de contour internes. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LevelStep** | definit l'espacement des niveaux de contour internes. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **LevelStepMode** | stocke le mode automatique ou manuel de l'espacement de niveaux interne. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LineColor** | definit la couleur de ligne de contour interne. | Type: valeur de couleur. Valeurs prises en charge: triplet RGB, nom court ou long de couleur, 'flat', 'interp' ou 'none'. | 
| **LineStyle** | definit le style de ligne de la courbe implicite. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.' ou 'none'. | 
| **LineStyleMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **LineWidth** | definit la largeur de ligne de la courbe implicite. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **Marker** | definit le marqueur de la courbe implicite. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de marqueurs comme 'none', 'o', '+', '\*', '.', 'x', 'square' ou 'diamond'. | 
| **MarkerEdgeColor** | definit la couleur de bord du marqueur. | Type: triplet RGB ou nom de couleur. Valeurs prises en charge: 'auto', 'none', triplet RGB ou nom de couleur. | 
| **MarkerFaceColor** | definit la couleur de remplissage du marqueur. | Type: triplet RGB ou nom de couleur. Valeurs prises en charge: 'auto', 'none', triplet RGB ou nom de couleur. | 
| **MarkerMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' preserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MarkerSize** | definit la taille du marqueur. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **MeshDensity** | definit le nombre de points d'echantillonnage dans chaque direction. | Type: entier positif scalaire. Valeurs prises en charge: entiers superieurs a un. | 
| **Parent** | definit les axes parents. | Type: handle graphique scalaire. Valeurs prises en charge: handle d'axes. | 
| **PickableParts** | controle quelles parties peuvent recevoir les evenements pointeur. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | definit l'etat de selection de l'objet. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **SelectionHighlight** | controle la mise en evidence de selection. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SeriesIndex** | stocke l'ordre de serie. | Type: entier scalaire. Valeurs prises en charge: valeur entiere finie. | 
| **ShowText** | controle l'affichage des libelles de contour internes. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **SourceTable** | lie les donnees de l'objet a une table; les proprietes de variables selectionnent les colonnes. | Type: table. Valeurs prises en charge: table vide ou table fournissant les variables liees. | 
| **Tag** | stocke un texte utilisateur pour identifier l'objet. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire. | 
| **TextList** | definit les niveaux de contour internes qui recoivent des libelles. | Type: vecteur numerique. Valeurs prises en charge: niveaux reels finis. | 
| **TextListMode** | stocke le mode automatique ou manuel des niveaux internes etiquetes. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **TextStep** | definit l'espacement entre les niveaux de contour internes etiquetes. | Type: scalaire numerique. Valeurs prises en charge: valeurs finies positives. | 
| **TextStepMode** | stocke le mode automatique ou manuel de l'espacement des libelles internes. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Type** | indique le type d'objet graphique. | Type: texte en lecture seule. Valeurs prises en charge: 'implicitfunctionline'. | 
| **UserData** | stocke des donnees utilisateur sur l'objet. | Type: toute valeur Nelson. Valeurs prises en charge: toute valeur. | 
| **Visible** | controle la visibilite de l'objet. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XData** | stocke les coordonnees x echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec YData et ZData. | 
| **XDataMode** | stocke le mode automatique ou manuel des donnees x. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XDataSource** | stocke l'expression source des donnees x. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire. | 
| **XRange** | definit l'intervalle x echantillonne. | Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes. | 
| **XRangeMode** | selectionne le mode automatique ou manuel des limites x. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XVariable** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **YData** | stocke les coordonnees y echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et ZData. | 
| **YDataMode** | stocke le mode automatique ou manuel des donnees y. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YDataSource** | stocke l'expression source des donnees y. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire. | 
| **YRange** | definit l'intervalle y echantillonne. | Type: vecteur numerique a deux elements. Valeurs prises en charge: limites finies croissantes. | 
| **YRangeMode** | selectionne le mode automatique ou manuel des limites y. | Type: texte scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YVariable** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **ZData** | stocke les valeurs de fonction echantillonnees. | Type: matrice numerique. Valeurs prises en charge: matrice numerique reelle compatible avec XData et YData. | 
| **ZDataMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZDataSource** | stocke l'expression source des donnees z. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou string scalaire. | 
| **ZLocation** | definit le plan z utilise pour dessiner le contour interne. | Type: scalaire numerique ou valeur texte. Valeurs prises en charge: scalaire fini, 'zmin' ou 'zmax'. | 
| **ZVariable** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 



## 💡 Exemple

Inspecter les proprietes de ligne implicite.

```matlab
h = fimplicit(@(x, y) x.^2 + y.^2 - 1);
names = properties(h);
```


## 🔗 Voir aussi

[fimplicit](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit.md), [proprietes de functioncontour](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.functioncontour.properties.md).