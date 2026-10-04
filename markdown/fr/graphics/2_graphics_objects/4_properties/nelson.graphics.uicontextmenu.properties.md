# uicontextmenu properties

Proprietes de l'objet graphique uicontextmenu.

## 📄 Description

Cette page documente les proprietes visibles retournees par <b>properties</b> pour un objet graphique <b>uicontextmenu</b>.

| Propriete                 | Action                                                                       | Type et valeurs prises en charge                                                                                                                                 |
| ------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **BeingDeleted**          | valeur calculee par Nelson; les operations graphiques la mettent a jour.     | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'off', 'on'.                                                                     |
| **BusyAction**            | controle si un callback interrompant est mis en file ou annule.              | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'queue', 'cancel'.                                                               |
| **ButtonDownFcn**         | s'execute quand l'objet recoit un evenement bouton souris.                   | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                              |
| **Children**              | les operations de parentage mettent le vecteur a jour.                       | Type: graphics object handle vector. Valeurs prises en charge: vecteur vide ou handles enfants.                                                                  |
| **Clipping**              | met a jour le rendu au prochain rafraichissement graphique.                  | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.                                                                     |
| **ContextMenu**           | attache le menu utilise par les actions de clic contextuel.                  | Type: graphics object handle scalar. Valeurs prises en charge: [] ou handle uicontextmenu.                                                                       |
| **ContextMenuOpeningFcn** | le systeme d'evenements graphiques l'invoque pour l'evenement associe.       | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                              |
| **CreateFcn**             | s'execute lors de la creation de l'objet.                                    | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                              |
| **DeleteFcn**             | s'execute lors de la suppression de l'objet.                                 | Type: callback value. Valeurs prises en charge: [], handle de fonction, vecteur de caracteres, chaine scalaire ou cellule callback.                              |
| **HandleVisibility**      | controle si les fonctions de recherche de handles peuvent trouver l'objet.   | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off', 'callback'.                                                         |
| **Interruptible**         | controle si un callback en cours peut etre interrompu.                       | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: 'on', 'off'.                                                                     |
| **Parent**                | change le parent et met a jour Children sur les anciens et nouveaux parents. | Type: graphics object handle scalar. Valeurs prises en charge: handle parent valide pour la classe de l'objet.                                                   |
| **Tag**                   | met a jour l'etat stocke de l'objet.                                         | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: texte vide ou identifiant d'objet.                                               |
| **Type**                  | valeur calculee par Nelson; les operations graphiques la mettent a jour.     | Type: chaine scalaire ou vecteur ligne de caracteres. Valeurs prises en charge: nom de type en lecture seule, par exemple 'figure', 'axes', 'line' ou 'scatter'. |
| **UserData**              | met a jour l'etat stocke de l'objet.                                         | Type: tableau Nelson. Valeurs prises en charge: toute valeur Nelson: [], tableaux numeriques, texte, cellules, structures ou handles.                            |

## 💡 Exemple

Creer l'objet graphique et lister ses proprietes.

```matlab
f = figure('Visible', 'off');
h = uicontextmenu(f);
names = properties(h);
close(f)
```

## 🔗 Voir aussi

[uicontextmenu](../../../graphics/2_graphics_objects/3_ui_controls/uicontextmenu.md), [properties](../../../handle/properties.md), [get](../../../handle/get.md), [set](../../../handle/set.md).

## 🕔 Historique

| Version | 📄 Description              |
| ------- | --------------------------- |
| --      | Page de proprietes ajoutee. |

<!--
## 👤 Auteur

Allan CORNET
-->
