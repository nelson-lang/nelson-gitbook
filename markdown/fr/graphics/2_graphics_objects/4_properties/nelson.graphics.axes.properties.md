# axes properties

Proprietes de l'objet graphique axes.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>axes</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **ALim** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **ALimMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **AlphaScale** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'linear', 'log'. | 
| **Alphamap** | met a jour le rendu au prochain rafraichissement graphique. | Type: vecteur numerique fini. Valeurs prises en charge: valeurs alpha numeriques dans [0,1]. | 
| **AmbientLightColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **BeingDeleted** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Box** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **BoxStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de style definis par cet objet: styles UI, styles de lumiere, styles de graphique ou styles de ligne. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement bouton souris. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **CLim** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **CLimMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **CameraPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **CameraPositionMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **CameraTarget** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **CameraTargetMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **CameraUpVector** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **CameraUpVectorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **CameraViewAngle** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **CameraViewAngleMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Children** | les operations de parentage mettent le vecteur a jour. | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants. | 
| **Clipping** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ClippingStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de style definis par cet objet: styles UI, styles de lumiere, styles de graphique ou styles de ligne. | 
| **Color** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **ColorOrder** | modifie les couleurs selectionnees automatiquement pour les series suivantes. | Type: matrice numerique finie. Valeurs prises en charge: matrice RGB m-par-3 avec valeurs dans [0,1]. | 
| **ColorOrderIndex** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **ColorScale** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **Colormap** | met a jour le rendu au prochain rafraichissement graphique. | Type: matrice numerique finie. Valeurs prises en charge: matrice RGB m-par-3 avec valeurs dans [0,1]. | 
| **ContextMenu** | attache le menu utilise par les actions de clic contextuel. | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute lors de la creation de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **CurrentPoint** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **DataAspectRatio** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **DataAspectRatioMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **DataLimits** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **DeleteFcn** | s'execute lors de la suppression de l'objet. | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback. | 
| **FontAngle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'italic'. | 
| **FontName** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'. | 
| **FontSize** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **FontSizeMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **FontSmoothing** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **FontUnits** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **FontWeight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'. | 
| **GridAlpha** | met a jour le rendu au prochain rafraichissement graphique. | Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans [0,1]; les tableaux doivent correspondre aux donnees rendues associees. | 
| **GridAlphaMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **GridColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **GridColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **GridLineStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **GridLineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **GridLineWidthMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | inclut ou exclut l'objet des tests de selection souris. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **InnerPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **InteractionOptions** | met a jour l'etat stocke de l'objet. | Type: interaction object, structure, cell array, or empty array. Valeurs prises en charge: [] ou definitions d'interaction pour axes et graphiques. | 
| **Interactions** | met a jour l'etat stocke de l'objet. | Type: interaction object, structure, cell array, or empty array. Valeurs prises en charge: [] ou definitions d'interaction pour axes et graphiques. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LabelFontSizeMultiplier** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **Layer** | controle si les grilles et graduations d'axes sont dessinees derriere ou devant les enfants traces. | Type: mot-cle texte. Valeurs prises en charge: 'bottom' ou 'top'. | 
| **Layout** | met a jour le placement demande au gestionnaire de layout parent. | Type: objet d'options de layout ou valeur vide. Valeurs prises en charge: informations de layout stockees par les gestionnaires parents, y compris le placement en tuile quand l'objet le prend en charge. | 
| **Legend** | lie le graphique a la legende qui le represente. | Type: objet legende graphique ou handle vide. Valeurs prises en charge: objet legende associe au graphique, ou handle graphique vide si aucune legende n'est attachee. | 
| **LineStyleCyclingMethod** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineStyleOrder** | modifie les styles de ligne selectionnes automatiquement pour les series suivantes. | Type: text scalar, string array, or cell array of text. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineStyleOrderIndex** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **LineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **MinorGridAlpha** | met a jour le rendu au prochain rafraichissement graphique. | Type: numeric scalar or numeric array. Valeurs prises en charge: valeurs dans [0,1]; les tableaux doivent correspondre aux donnees rendues associees. | 
| **MinorGridAlphaMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MinorGridColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **MinorGridColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MinorGridLineStyle** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: '-', '--', ':', '-.', 'none'. | 
| **MinorGridLineWidth** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique fini. Valeurs prises en charge: valeur superieure ou egale a 0. | 
| **MinorGridLineWidthMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **NextPlot** | choisit comment la prochaine commande graphique reutilise ou reinitialise les enfants. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'add', 'replace', 'replacechildren', 'replaceall', 'new'. | 
| **NextSeriesIndex** | met a jour l'etat stocke de l'objet. | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete. | 
| **OuterPosition** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Parent** | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet. | 
| **PickableParts** | choisit quelles parties visibles ou invisibles peuvent recevoir les clics. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **PlotBoxAspectRatio** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PlotBoxAspectRatioMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Position** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PositionConstraint** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **PositionMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **Projection** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'orthographic', 'perspective'. | 
| **Selected** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SortMethod** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'childorder', 'depth'. | 
| **Subtitle** | met a jour le sous-titre affiche ou l'objet sous-titre. | Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de sous-titre, vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **SubtitleFontWeight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'. | 
| **Tag** | met a jour l'etat stocke de l'objet. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet. | 
| **TextHeight** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **TickDir** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'in', 'out', 'both', 'none'. | 
| **TickDirMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **TickLabelInterpreter** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees. | 
| **TickLength** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **TightInset** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Title** | met a jour le titre affiche ou l'objet titre associe a l'objet graphique. | Type: objet texte graphique ou valeur texte, selon la classe d'objet. Valeurs prises en charge: objet texte de titre, vecteur ligne de caracteres, chaine scalaire ou texte vide. | 
| **TitleFontSizeMultiplier** | recalcule la geometrie, les limites ou la disposition. | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie. | 
| **TitleFontWeight** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'. | 
| **TitleHorizontalAlignment** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **Toolbar** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'none', 'figure', 'auto'. | 
| **Type** | valeur calculee par Nelson; les operations graphiques la mettent a jour. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. | 
| **Units** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'. | 
| **UserData** | met a jour l'etat stocke de l'objet. | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles. | 
| **View** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major]. | 
| **Visible** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XAxis** | expose l'etat de regle utilise pour graduations, limites, echelle et libelles. | Type: objet regle d'axe. Valeurs prises en charge: objet regle d'axe associe a la direction x. | 
| **XAxisLocation** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **XColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **XColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XDir** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'reverse'. | 
| **XGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **XLabel** | met a jour l'objet libelle de l'axe x et rafraichit la decoration de l'axe. | Type: objet texte graphique. Valeurs prises en charge: objet texte utilise comme libelle de l'axe x. | 
| **XLim** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **XLimMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XLimitMethod** | selectionne le calcul automatique des limites de l'axe x. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'tickaligned', 'tight', 'padded'. | 
| **XMinorGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **XMinorTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **XScale** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'linear', 'log'. | 
| **XTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **XTickLabel** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees. | 
| **XTickLabelFormat** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide pour des etiquettes automatiques, un format numerique sprintf tel que '%.2f' ou '%,d', un format de date ou de duree, ou un preset tel que 'usd', 'eur', 'gbp', 'jpy', 'degrees' ou 'percentage'. | 
| **XTickLabelMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XTickLabelRotation** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique. Valeurs prises en charge: un angle de rotation scalaire reel en degres; les valeurs positives font pivoter les etiquettes dans le sens antihoraire (defaut 0). | 
| **XTickLabelRotationMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XTickMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YAxis** | expose l'etat de regle utilise pour graduations, limites, echelle et libelles. | Type: objet regle d'axe. Valeurs prises en charge: objet regle d'axe associe a la direction y. | 
| **YAxisLocation** | recalcule la geometrie, les limites ou la disposition. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'north', 'south', 'east', 'west', 'northoutside', 'southoutside', 'eastoutside', 'westoutside', 'best', 'none', 'layout', 'manual'. | 
| **YColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **YColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YDir** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'reverse'. | 
| **YGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **YLabel** | met a jour l'objet libelle de l'axe y et rafraichit la decoration de l'axe. | Type: objet texte graphique. Valeurs prises en charge: objet texte utilise comme libelle de l'axe y. | 
| **YLim** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **YLimMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YLimitMethod** | selectionne le calcul automatique des limites de l'axe y. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'tickaligned', 'tight', 'padded'. | 
| **YMinorGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **YMinorTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **YScale** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'linear', 'log'. | 
| **YTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **YTickLabel** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees. | 
| **YTickLabelFormat** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide pour des etiquettes automatiques, un format numerique sprintf tel que '%.2f' ou '%,d', un format de date ou de duree, ou un preset tel que 'usd', 'eur', 'gbp', 'jpy', 'degrees' ou 'percentage'. | 
| **YTickLabelMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YTickLabelRotation** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique. Valeurs prises en charge: un angle de rotation scalaire reel en degres; les valeurs positives font pivoter les etiquettes dans le sens antihoraire (defaut 0). | 
| **YTickLabelRotationMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YTickMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZAxis** | expose l'etat de regle utilise pour graduations, limites, echelle et libelles. | Type: objet regle d'axe. Valeurs prises en charge: objet regle d'axe associe a la direction z. | 
| **ZColor** | met a jour le rendu au prochain rafraichissement graphique. | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. | 
| **ZColorMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZDir** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'reverse'. | 
| **ZGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **ZLabel** | met a jour l'objet libelle de l'axe z et rafraichit la decoration de l'axe. | Type: objet texte graphique. Valeurs prises en charge: objet texte utilise comme libelle de l'axe z. | 
| **ZLim** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: deux valeurs finies croissantes [min max]. | 
| **ZLimMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZLimitMethod** | selectionne le calcul automatique des limites de l'axe z. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'tickaligned', 'tight', 'padded'. | 
| **ZMinorGrid** | met a jour le rendu au prochain rafraichissement graphique. | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false. | 
| **ZMinorTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **ZScale** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'linear', 'log'. | 
| **ZTick** | recalcule la geometrie, les limites ou la disposition. | Type: vecteur numerique fini. Valeurs prises en charge: [] ou vecteur numerique fini, normalement croissant. | 
| **ZTickLabel** | met a jour le rendu au prochain rafraichissement graphique. | Type: text scalar, string array, or cell array of text. Valeurs prises en charge: texte vide ou etiquettes correspondant aux graduations, categories, variables, lignes ou valeurs affichees. | 
| **ZTickLabelFormat** | met a jour le rendu au prochain rafraichissement graphique. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide pour des etiquettes automatiques, un format numerique sprintf tel que '%.2f' ou '%,d', un format de date ou de duree, ou un preset tel que 'usd', 'eur', 'gbp', 'jpy', 'degrees' ou 'percentage'. | 
| **ZTickLabelMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZTickLabelRotation** | met a jour le rendu au prochain rafraichissement graphique. | Type: scalaire numerique. Valeurs prises en charge: un angle de rotation scalaire reel en degres; les valeurs positives font pivoter les etiquettes dans le sens antihoraire (defaut 0). | 
| **ZTickLabelRotationMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **ZTickMode** | 'auto' laisse Nelson recalculer la propriete associee; 'manual' conserve la valeur affectee. | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 



## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
h = axes('Parent', f);
names = properties(h);
close(f)
```


## 🔗 Voir aussi

[axes](../../../graphics/2_graphics_objects/1_object_management/axes.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| --   | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
