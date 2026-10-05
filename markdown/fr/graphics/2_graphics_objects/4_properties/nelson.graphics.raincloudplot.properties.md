# raincloudplot properties

Proprietes de l'objet graphique raincloudplot.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>raincloudplot</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par les outils interactifs. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet annotation associe ou handle graphique vide. | 
| **BeingDeleted** | Nelson calcule cette valeur pendant les operations graphiques. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement souris. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **Children** | les operations de parentage mettent a jour ce vecteur. | Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide. | 
| **Clipping** | met a jour le rognage au prochain rafraichissement graphique. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **ContextMenu** | associe le menu utilise par les actions de clic contextuel. | Type: handle graphique scalaire. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute quand l'objet est cree. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **DataTipTemplate** | met a jour le contenu utilise par les data tips interactifs. | Type: objet data tip template ou handle vide. Valeurs prises en charge: objet data tip template de l'objet graphique ou handle graphique vide. | 
| **DeleteFcn** | s'execute quand l'objet est supprime. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **DensityWidth** | definit la largeur maximale du nuage de pluie en unites des donnees de groupement. | Type: scalaire numerique fini. Valeurs prises en charge: scalaire fini positif. | 
| **DisplayName** | met a jour le libelle utilise par les legendes et l'identification. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **EdgeColor** | definit la couleur du contour du nuage; suit FaceColor tant que EdgeColorMode vaut 'auto'. | Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1], couleur hexadecimale ou 'none'. | 
| **EdgeColorMode** | 'auto' fait suivre FaceColor a EdgeColor; 'manual' conserve la valeur affectee. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **FaceAlpha** | definit la transparence du nuage et du remplissage des marqueurs. | Type: scalaire numerique. Valeurs prises en charge: valeurs dans [0,1]. | 
| **FaceColor** | definit la couleur de remplissage du nuage; la valeur par defaut vient de ColorOrder des axes et de SeriesIndex. | Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1], couleur hexadecimale ou 'none'. | 
| **FaceColorMode** | 'auto' prend FaceColor dans ColorOrder des axes; 'manual' conserve la valeur affectee. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HitTest** | inclut ou exclut l'objet du test de clic souris. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **LineWidth** | definit la largeur du contour du nuage et du contour des marqueurs en points. | Type: scalaire numerique fini. Valeurs prises en charge: scalaire fini positif. | 
| **Marker** | definit le symbole des marqueurs de la pluie. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'o', '+', '\*', '.', 'x', 'square', 'diamond', '^', 'v', '>', '<', 'pentagram', 'hexagram', 'none'. | 
| **MarkerEdgeColor** | definit la couleur du contour des marqueurs; suit EdgeColor tant que MarkerEdgeColorMode vaut 'auto'. | Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1], couleur hexadecimale ou 'none'. | 
| **MarkerEdgeColorMode** | 'auto' fait suivre EdgeColor a MarkerEdgeColor; 'manual' conserve la valeur affectee. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MarkerFaceColor** | definit la couleur de remplissage des marqueurs; suit FaceColor tant que MarkerFaceColorMode vaut 'auto'. | Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1], couleur hexadecimale ou 'none'. | 
| **MarkerFaceColorMode** | 'auto' fait suivre FaceColor a MarkerFaceColor; 'manual' conserve la valeur affectee. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **MarkerSize** | definit la surface des marqueurs en points au carre. | Type: scalaire numerique fini. Valeurs prises en charge: scalaire fini positif. | 
| **Orientation** | choisit l'alignement du graphique: avec 'horizontal' les valeurs sont le long de l'axe x. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'horizontal', 'vertical'. | 
| **Parent** | definit les axes qui possedent l'objet. | Type: handle graphique scalaire. Valeurs prises en charge: handle axes ou hggroup. | 
| **PickableParts** | controle si les parties visibles ou toutes les parties peuvent etre selectionnees. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **Selected** | marque l'objet comme selectionne ou non. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | controle l'affichage des poignees de selection. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SeriesIndex** | choisit la ligne de ColorOrder des axes utilisee par les couleurs automatiques. | Type: scalaire numerique positif. Valeurs prises en charge: entier positif. | 
| **SourceTable** | stocke la table utilisee pour creer le graphique. | Type: table ou valeur vide. Valeurs prises en charge: [] ou table fournie a raincloudplot. | 
| **Tag** | stocke un texte utilisateur pour identifier l'objet. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **Type** | identifie le type de l'objet graphique. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'raincloudplot'. | 
| **UserData** | stocke des donnees utilisateur sur l'objet. | Type: valeur Nelson quelconque. Valeurs prises en charge: toute valeur. | 
| **Visible** | affiche ou masque l'objet. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **XData** | definit les donnees de groupement utilisees pour placer les nuages de pluie. | Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies; les valeurs non finies sont ignorees pour le dessin. | 
| **XDataMode** | 'auto' quand les positions viennent d'une table ou des valeurs par defaut; 'manual' quand XData est affecte. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **XVariable** | stocke le nom de variable de table utilise pour les donnees x. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **YData** | definit les donnees de l'echantillon. | Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies; les valeurs non finies sont ignorees pour le dessin. | 
| **YDataMode** | 'auto' quand l'echantillon vient d'une table; 'manual' quand YData est affecte. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'auto', 'manual'. | 
| **YVariable** | stocke le nom de variable de table utilise pour l'echantillon. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 



## 💡 Exemple

Inspecter les proprietes de raincloudplot.

```matlab
r = raincloudplot(randn(50, 1));
props = properties(r)
```


## 🔗 Voir aussi

[raincloudplot](../../../graphics/1_plots/4_data_distribution_plots/raincloudplot.md), [properties](../../../handle/properties.md).