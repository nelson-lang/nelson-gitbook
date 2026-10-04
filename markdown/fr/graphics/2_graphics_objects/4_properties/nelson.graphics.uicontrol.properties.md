# uicontrol properties

Proprietes de l'objet graphique uicontrol.

## 📄 Description

Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>uicontrol</b>.

| Propriete               | Action                                                                       | Type et valeurs prises en charge                                                                                                                                                                                                           |
| ----------------------- | ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **BackgroundColor**     | met a jour le rendu au prochain rafraichissement graphique.                  | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. |
| **BeingDeleted**        | valeur calculee par Nelson; les operations graphiques la mettent a jour.     | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.                                                                                                                                               |
| **BusyAction**          | controle si un callback interrompant est mis en file ou annule.              | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.                                                                                                                                         |
| **ButtonDownFcn**       | s'execute quand l'objet recoit un evenement bouton souris.                   | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **CData**               | remplace les donnees et recalcule les limites automatiques qui en dependent. | Type: numeric, logical, categorical, string, vector, matrix, or table-derived data. Valeurs prises en charge: [] ou donnees de dimensions compatibles avec l'objet rendu.                                                                  |
| **Callback**            | le systeme d'evenements graphiques l'invoque pour l'evenement associe.       | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **Children**            | les operations de parentage mettent le vecteur a jour.                       | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.                                                                                                                                            |
| **ContextMenu**         | attache le menu utilise par les actions de clic contextuel.                  | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu.                                                                                                                                                 |
| **CreateFcn**           | s'execute lors de la creation de l'objet.                                    | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **DeleteFcn**           | s'execute lors de la suppression de l'objet.                                 | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **Enable**              | met a jour le rendu au prochain rafraichissement graphique.                  | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false.                                                                                                                                                                  |
| **Extent**              | recalcule la geometrie, les limites ou la disposition.                       | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major].                                                          |
| **FontAngle**           | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'italic'.                                                                                                                                        |
| **FontName**            | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de police systeme ou 'FixedWidth'.                                                                                                                     |
| **FontSize**            | recalcule la geometrie, les limites ou la disposition.                       | Type: scalaire numerique fini. Valeurs prises en charge: valeur scalaire finie.                                                                                                                                                            |
| **FontUnits**           | recalcule la geometrie, les limites ou la disposition.                       | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.                                                                           |
| **FontWeight**          | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'normal', 'bold'.                                                                                                                                          |
| **ForegroundColor**     | met a jour le rendu au prochain rafraichissement graphique.                  | Type: color value. Valeurs prises en charge: 'red'/'r', 'green'/'g', 'blue'/'b', 'cyan'/'c', 'magenta'/'m', 'yellow'/'y', 'black'/'k', 'white'/'w', triplet RGB [r g b] avec valeurs dans [0,1], ou couleur hexadecimale '#RRGGBB'/'#RGB'. |
| **HandleVisibility**    | controle si les fonctions de recherche de handles peuvent trouver l'objet.   | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.                                                                                                                                   |
| **HorizontalAlignment** | met a jour le rendu au prochain rafraichissement graphique.                  | Type: on/off value. Valeurs prises en charge: 'on', 'off', true ou false.                                                                                                                                                                  |
| **InnerPosition**       | recalcule la geometrie, les limites ou la disposition.                       | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major].                                                          |
| **Interruptible**       | controle si un callback en cours peut etre interrompu.                       | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.                                                                                                                                               |
| **KeyPressFcn**         | le systeme d'evenements graphiques l'invoque pour l'evenement associe.       | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **KeyReleaseFcn**       | le systeme d'evenements graphiques l'invoque pour l'evenement associe.       | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                                                                                                        |
| **ListboxTop**          | met a jour l'etat stocke de l'objet.                                         | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.                                                                                                  |
| **Max**                 | met a jour l'etat stocke de l'objet.                                         | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.                                                                                                  |
| **Min**                 | met a jour l'etat stocke de l'objet.                                         | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.                                                                                                  |
| **OuterPosition**       | recalcule la geometrie, les limites ou la disposition.                       | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major].                                                          |
| **Parent**              | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.                                                                                                                             |
| **Position**            | recalcule la geometrie, les limites ou la disposition.                       | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major].                                                          |
| **SliderStep**          | recalcule la geometrie, les limites ou la disposition.                       | Type: vecteur numerique fini. Valeurs prises en charge: vecteur fini de taille documentee, par exemple [left bottom width height], [x y z], [azimuth elevation] ou [minor major].                                                          |
| **String**              | met a jour le contenu texte affiche.                                         | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire, tableau de chaines ou tableau de cellules de vecteurs ligne de caracteres.                                                                     |
| **Style**               | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: noms de style definis par cet objet: styles UI, styles de lumiere, styles de graphique ou styles de ligne.                                                 |
| **Tag**                 | met a jour l'etat stocke de l'objet.                                         | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.                                                                                                                         |
| **Tooltip**             | met a jour le texte d'aide affiche par les elements d'interface interactifs. | Type: valeur texte. Valeurs prises en charge: vecteur ligne de caracteres, chaine scalaire, tableau de chaines, tableau de cellules de vecteurs ligne de caracteres ou texte vide.                                                         |
| **Type**                | valeur calculee par Nelson; les operations graphiques la mettent a jour.     | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'.                                                                           |
| **Units**               | recalcule la geometrie, les limites ou la disposition.                       | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'pixels', 'normalized', 'inches', 'centimeters', 'points', 'characters', 'data'.                                                                           |
| **UserData**            | met a jour l'etat stocke de l'objet.                                         | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles.                                                                                                      |
| **Value**               | met a jour l'etat stocke de l'objet.                                         | Type: integer scalar or numeric vector. Valeurs prises en charge: entier fini, valeur numerique finie ou vecteur requis par la propriete.                                                                                                  |
| **Visible**             | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.                                                                                                                                               |

## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
h = uicontrol('Parent', f, 'Style', 'pushbutton', 'String', 'OK');
names = properties(h);
close(f)
```

## 🔗 Voir aussi

[uicontrol](../../../graphics/2_graphics_objects/3_ui_controls/uicontrol.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description              |
| ------- | --------------------------- |
| --      | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
