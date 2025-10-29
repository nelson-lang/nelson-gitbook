# figure

Crée une fenêtre figure.

## 📝 Syntaxe

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## 📥 Argument d'entrée

- ID - Un entier scalaire : recherche ou crée avec cet ID.
- H - Un objet graphique scalaire sur une figure existante.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- f - Un objet graphique : handle de figure.

## 📄 Description

<b>figure</b> crée une figure.

Un clic sur une figure la définit automatiquement comme figure courante.

<b>Propriétés</b> :
| Propriété | Description |
| --- | --- |
| **AlphaMap** | Carte de transparence pour le contenu des axes. |
| **Children** | Enfants de la figure : tableau vide (par défaut) ou tableau 1-D d'objets. |
| **Color** | Couleur de fond [R, G, B] ou chaîne (exemple : 'blue') ou code couleur hexadécimal ('#FFAA00'). |
| **Colormap** | Palette de couleurs pour le contenu des axes de la figure : matrice m×3 de triplets RGB, parula (par défaut). |
| **CurrentAxes** | Axes cibles dans la figure courante : objet Axes. |
| **DevicePixelRatio** | Rapport entre les pixels physiques et les pixels indépendants du périphérique pour la figure. Valeurs courantes : 1.0 sur les écrans classiques et 2.0 sur les écrans Apple "retina". |
| **Name** | Nom ('' par défaut). |
| **GraphicsSmoothing** | Adoucissement graphique (par défaut 'on'). |
| **MenuBar** | Affichage de la barre de menu de la figure : 'none' ou 'figure' (par défaut). |
| **NextPlot** | Directive sur la façon d'ajouter le prochain tracé : 'new', 'replace', 'replacechildren' ou 'add' (par défaut). |
| **Number** | Numéro de la figure. |
| **NumberTitle** | Utiliser le numéro dans le titre : 'off' ou 'on' (par défaut). |
| **Parent** | Parent de la figure : objet graphique racine. |
| **Position** | Emplacement et taille de la zone dessinable : [gauche, bas, largeur, hauteur]. 'largeur' et 'hauteur' définissent la taille de la fenêtre. 'gauche' et 'bas' définissent la position du premier pixel adressable dans le coin inférieur gauche de la fenêtre. |
| **Resize** | Redimensionner la figure : 'on' ou 'off' (par défaut). |
| **Tag** | Identifiant de l'objet : chaîne, vecteur de caractères, '' (par défaut). |
| **ToolBar** | Affichage de la barre d'outils de la figure : 'none', 'auto' (par défaut), 'figure'. |
| **Type** | Type 'figure'. |
| **UserData** | Données utilisateur : tableau ou [] (par défaut). |
| **Visible** | État de visibilité : 'off' ou 'on' (par défaut). |
| **DrawLater** | Permet de retarder une grande succession de commandes graphiques (impliquant plusieurs tracés ou retracés) : 'on' ou 'off' (par défaut). |
| **CloseRequestFcn** | Callback de demande de fermeture : handle de fonction, tableau de cellules, vecteur de caractères avec 'closereq' (par défaut). |
| **CreateFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la création de l'objet. Définir cette propriété sur un composant existant n'a aucun effet. |
| **DeleteFcn** | Callback (fonction, chaîne ou cellule) appelée lors de la suppression de l'objet. |
| **KeyPressFcn** | Callback (fonction, chaîne ou cellule) appelée lorsqu'une touche est enfoncée alors que la figure a le focus. |
| **KeyReleaseFcn** | Callback (fonction, chaîne ou cellule) appelée lorsqu'une touche est relâchée alors que la figure a le focus. |
| **ButtonDownFcn** | Callback (fonction, chaîne ou cellule) appelée lorsqu'un bouton de souris est enfoncé alors que la figure a le focus. |
| **BeingDeleted** | Indique que l'objet est en cours de suppression. |
| **WindowState** | Indique l'état de la fenêtre : 'normal', 'minimized', 'maximized', 'fullscreen'. |

## 💡 Exemple

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')

```

## 🔗 Voir aussi

[gcf](../graphics/gcf.md), [close](../graphics/close.md).

## 🕔 Historique

| Version | 📄 Description                                                                                        |
| ------- | ----------------------------------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                                                      |
| 1.2.0   | Un clic sur une figure la définit automatiquement comme figure courante.                              |
| 1.7.0   | Ajout des callbacks CreateFcn, DeleteFcn, CloseRequestFcn, KeyPressFcn, KeyReleaseFcn, ButtonDownFcn. |
| --      | Ajout de la propriété BeingDeleted.                                                                   |
| 1.8.0   | Ajout de la propriété Resize.                                                                         |
| 1.13.0  | Ajout de la propriété DevicePixelRatio.                                                               |
| 1.14.0  | Ajout de la propriété WindowState.                                                                    |

<!--
## 👤 Auteur

Allan CORNET
-->
