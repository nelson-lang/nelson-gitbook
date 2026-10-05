# wordcloud properties

Proprietes de l'objet graphique wordcloud.

## 📄 Description


Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>wordcloud</b>. 

| Propriete | Action | Type et valeurs prises en charge | 
| --- | --- | --- | 
| **Annotation** | met a jour les metadonnees d'annotation utilisees par les outils interactifs. | Type: objet d'annotation graphique ou handle vide. Valeurs prises en charge: objet annotation associe ou handle graphique vide. | 
| **BeingDeleted** | Nelson calcule cette valeur pendant les operations graphiques. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **Box** | controle si le cadre du graphique est affiche. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'off', 'on'. | 
| **BusyAction** | controle si un callback interrompant est mis en file ou annule. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'queue', 'cancel'. | 
| **ButtonDownFcn** | s'execute quand l'objet recoit un evenement souris. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **Children** | les operations de parentage mettent a jour ce vecteur. | Type: vecteur de handles graphiques. Valeurs prises en charge: vecteur vide. | 
| **Color** | definit la couleur par defaut utilisee pour les mots rendus. | Type: valeur de couleur ou matrice de couleurs. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1], couleur hexadecimale ou matrice n-par-3. | 
| **ContextMenu** | associe le menu utilise par les actions de clic contextuel. | Type: handle graphique scalaire. Valeurs prises en charge: [] ou handle uicontextmenu. | 
| **CreateFcn** | s'execute quand l'objet est cree. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **DeleteFcn** | s'execute quand l'objet est supprime. | Type: valeur de callback. Valeurs prises en charge: [], function handle, vecteur de caracteres, string scalaire ou tableau de callback. | 
| **DisplayName** | met a jour le libelle utilise par les legendes et l'identification. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **FontName** | definit la famille de police utilisee pour afficher les mots. | Type: texte. Valeurs prises en charge: nom de police installee comme vecteur de caracteres ou string scalaire. | 
| **HandleVisibility** | controle si les fonctions de recherche de handles peuvent trouver l'objet. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'. | 
| **HighlightColor** | definit la couleur utilisee par les mots surlignes. | Type: valeur de couleur. Valeurs prises en charge: noms courts de couleur, triplet RGB dans [0,1] ou couleur hexadecimale. | 
| **HitTest** | inclut ou exclut l'objet du test de clic souris. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Interruptible** | controle si un callback en cours peut etre interrompu. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **InnerPosition** | stocke le rectangle interieur du graphique. | Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies [left bottom width height]. | 
| **Layout** | stocke les informations de placement en disposition tuilee. | Type: handle graphique scalaire. Valeurs prises en charge: [] ou handle d'options de disposition. | 
| **LayoutNum** | selectionne la variante deterministe de placement. | Type: scalaire numerique fini. Valeurs prises en charge: entiers positifs. | 
| **MaxDisplayWords** | definit le nombre maximal de mots affiches. | Type: scalaire numerique fini. Valeurs prises en charge: entiers non negatifs. | 
| **Parent** | definit le conteneur graphique parent utilise par l'objet. | Type: handle graphique scalaire. Valeurs prises en charge: handle figure. | 
| **PickableParts** | controle si les parties visibles ou toutes les parties peuvent etre selectionnees. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'visible', 'all', 'none'. | 
| **OuterPosition** | stocke le rectangle exterieur du graphique. | Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies [left bottom width height]. | 
| **Position** | stocke le rectangle de position du graphique. | Type: vecteur ligne numerique. Valeurs prises en charge: quatre valeurs finies [left bottom width height]. | 
| **PositionConstraint** | choisit le rectangle preserve pendant la disposition. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'outerposition', 'innerposition'. | 
| **Selected** | marque l'objet comme selectionne ou non. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **SelectionHighlight** | controle l'affichage des poignees de selection. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **Shape** | definit l'enveloppe de placement des mots. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'oval', 'rectangle'. | 
| **SizeData** | definit les poids numeriques utilises pour dimensionner les mots. | Type: vecteur numerique reel. Valeurs prises en charge: valeurs numeriques finies. | 
| **SizeVariable** | stocke la variable de table utilisee pour les tailles des mots. | Type: texte. Valeurs prises en charge: [] ou nom d'une variable de la table source. | 
| **SizePower** | definit l'exposant utilise pour convertir les poids en tailles de police. | Type: scalaire numerique fini. Valeurs prises en charge: valeurs scalaires positives. | 
| **SourceTable** | stocke la table utilisee pour creer le graphique. | Type: table ou valeur vide. Valeurs prises en charge: [] ou table fournie a wordcloud. | 
| **Tag** | stocke un texte utilisateur pour identifier l'objet. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **Title** | definit le texte du titre du graphique. | Type: texte. Valeurs prises en charge: vecteur de caracteres ou string scalaire. | 
| **TitleFontName** | definit la famille de police utilisee pour afficher le titre. | Type: texte. Valeurs prises en charge: nom de police installee comme vecteur de caracteres ou string scalaire. | 
| **Type** | identifie le type de l'objet graphique. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'wordcloud'. | 
| **Units** | definit les unites des proprietes de position. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'normalized', 'pixels', 'inches', 'centimeters', 'points', 'characters'. | 
| **UserData** | stocke des donnees utilisateur sur l'objet. | Type: valeur Nelson quelconque. Valeurs prises en charge: toute valeur. | 
| **Visible** | affiche ou masque l'objet. | Type: texte scalaire ou vecteur de caracteres. Valeurs prises en charge: 'on', 'off'. | 
| **WordData** | definit les mots affiches par le graphique. | Type: vecteur string ou vecteur cellule de lignes de caracteres. Valeurs prises en charge: textes non vides. | 
| **WordVariable** | stocke la variable de table utilisee pour les mots affiches. | Type: texte. Valeurs prises en charge: [] ou nom d'une variable de la table source. | 



## 💡 Exemple

Inspecter les proprietes de wordcloud.

```matlab
h = wordcloud({'alpha','beta'}, [5 3]);
props = properties(h)
```


## 🔗 Voir aussi

[wordcloud](../../../graphics/1_plots/4_data_distribution_plots/wordcloud.md), [properties](../../../handle/properties.md).