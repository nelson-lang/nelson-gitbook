# implicitfunctionsurface properties

Proprietes de l'objet graphique implicitfunctionsurface.

## 📄 Description


Cette page documente les proprietes visibles retournees par properties pour un objet graphique implicitfunctionsurface. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **AlignVertexCenters** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **AlphaData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **AlphaDataMapping** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **AmbientStrength** | change la contribution de lumiere ambiante utilisee pour les faces rendues. | Type: scalaire numerique. Valeurs prises en charge: scalaire fini de 0 a 1. | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par les outils interactifs et l'inspection d'objet. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet d'annotation associe a l'objet graphique, ou handle graphique vide si aucune annotation n'est attachee. | 
| **BackFaceLighting** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'flat', 'gouraud'. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **CData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **CDataMapping** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **CDataMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **CDataSource** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DataTipTemplate** | met a jour le contenu utilise par les bulles de donnees interactives. | Type: objet modele de bulle de donnees ou handle vide. Valeurs prises en charge: objet modele de bulle de donnees possede par l'objet graphique, ou handle graphique vide si les bulles ne sont pas configurees. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **DiffuseStrength** | change la contribution de lumiere diffuse utilisee pour les faces rendues. | Type: scalaire numerique. Valeurs prises en charge: scalaire fini de 0 a 1. | 
| **DisplayName** | met a jour le libelle utilise par les entrees de legende et l'identification de l'objet. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres ou chaine scalaire. | 
| **EdgeAlpha** | met a jour le rendu au prochain rafraichissement graphique. | Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans [0,1]; les tableaux doivent correspondre aux donnees rendues associees. | 
| **EdgeColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value or color mode keyword. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **EdgeLighting** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'flat', 'gouraud'. | 
| **FaceAlpha** | met a jour le rendu au prochain rafraichissement graphique. | Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans [0,1]; les tableaux doivent correspondre aux donnees rendues associees. | 
| **FaceColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value or color mode keyword. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'none', 'flat', 'interp'. | 
| **FaceLighting** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'flat', 'gouraud'. | 
| **FaceNormals** | met a jour le rendu au prochain rafraichissement graphique. | Type: matrice numerique finie. Valeurs prises en charge: [] ou matrice avec une ligne par sommet, normale, point ou segment de contour. | 
| **FaceNormalsMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **FaceVertexAlphaData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **FaceVertexCData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **FaceVertexCDataMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Faces** | met a jour le rendu au prochain rafraichissement graphique. | Type: integer matrix. Valeurs prises en charge: indices referencant les lignes de Vertices. | 
| **Function** | reechantillonne la surface implicite et rafraichit Faces et Vertices. | Type: handle de fonction. Valeurs prises en charge: handle de fonction scalaire evalue sur la grille d'echantillonnage de la surface implicite. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | inclut ou exclut l'objet des tests de selection souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interpolation** | change l'interpolation des couleurs ou echantillons entre les valeurs de donnees stockees. | Type: mot-cle texte. Valeurs prises en charge: 'nearest', 'linear' ou 'none'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LineJoin** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'miter', 'round', 'chamfer'. | 
| **LineStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **Marker** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'o', '+', '\*', '.', 'x', '\_', '\|', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerFaceColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: valeur de couleur ou mot-cle de couleur de marqueur. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB', 'auto', 'none', 'flat'. | 
| **MarkerSize** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **MaxRenderedResolution** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **MeshDensity** | change la densite de la grille d'echantillonnage et reechantillonne la surface implicite. | Type: scalaire entier positif. Valeurs prises en charge: entier fini superieur ou egal a 2. | 
| **MeshStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de style definis par cet objet: styles UI, styles de lumiere, styles de graphique ou styles de ligne. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **PickableParts** | choisit quelles parties visibles ou invisibles peuvent recevoir les clics. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SeriesIndex** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **SpecularColorReflectance** | change la contribution de la couleur de l'objet aux reflets speculaires. | Type: scalaire numerique. Valeurs prises en charge: scalaire fini de 0 a 1. | 
| **SpecularExponent** | change la nettete des reflets speculaires dans les calculs d'eclairage. | Type: scalaire numerique. Valeurs prises en charge: scalaire positif fini controlant la taille des reflets. | 
| **SpecularStrength** | change l'intensite des reflets speculaires dans les calculs d'eclairage. | Type: scalaire numerique. Valeurs prises en charge: scalaire fini de 0 a 1. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **VertexNormals** | met a jour le rendu au prochain rafraichissement graphique. | Type: matrice numerique finie. Valeurs prises en charge: [] ou matrice avec une ligne par sommet, normale, point ou segment de contour. | 
| **VertexNormalsMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Vertices** | met a jour le rendu au prochain rafraichissement graphique. | Type: matrice numerique finie. Valeurs prises en charge: [] ou matrice avec une ligne par sommet, normale, point ou segment de contour. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **XDataMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XDataSource** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **XRange** | change la plage d'echantillonnage et reechantillonne la surface implicite. | Type: vecteur numerique a deux elements. Valeurs prises en charge: vecteur fini croissant [min max]. | 
| **XRangeMode** | 'auto' utilise la plage d'echantillonnage par defaut; 'manual' conserve la plage affectee. | Type: mot-cle texte. Valeurs prises en charge: 'auto' ou 'manual'. | 
| **YData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **YDataMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YDataSource** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **YRange** | change la plage d'echantillonnage et reechantillonne la surface implicite. | Type: vecteur numerique a deux elements. Valeurs prises en charge: vecteur fini croissant [min max]. | 
| **YRangeMode** | 'auto' utilise la plage d'echantillonnage par defaut; 'manual' conserve la plage affectee. | Type: mot-cle texte. Valeurs prises en charge: 'auto' ou 'manual'. | 
| **ZData** | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu. | 
| **ZDataSource** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou nom de variable d'espace de travail/table. | 
| **ZRange** | change la plage z d'echantillonnage et reechantillonne la surface implicite. | Type: vecteur numerique a deux elements. Valeurs prises en charge: vecteur fini croissant [min max]. | 
| **ZRangeMode** | 'auto' utilise la plage z d'echantillonnage par defaut; 'manual' conserve la plage affectee. | Type: mot-cle texte. Valeurs prises en charge: 'auto' ou 'manual'. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
ax = axes('Parent', f);
h = fimplicit3(ax, @(x, y, z) x.^2 + y.^2 + z.^2 - 1);
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [fimplicit](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit.md), [fimplicit](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit.md), [fimplicit3](../../../graphics/1_plots/7_surfaces_volumes_polygons/fimplicit3.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).