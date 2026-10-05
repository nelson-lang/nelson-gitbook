# nflow\_wire\_editing

Routage et édition des fils dans l'éditeur nflow.

## 📝 Syntaxe

- Page concept : routage des fils, waypoints épinglés, coudes arrondis

## 📄 Description


<b>Créer une connexion</b> 

Faites glisser depuis un port de sortie vers un port d'entrée. Un fil fantôme suit le pointeur, les cibles compatibles sont mises en évidence et la cible active est accentuée sans déplacer le diagramme. Une cible incompatible est refusée immédiatement avec une explication concise dans Diagnostics. 

L'éditeur nflow route automatiquement les fils de connexion avec un routeur orthogonal (segments horizontaux/verticaux) qui évite les blocs, écarte les fils superposés, dessine des arcs de saut aux croisements et garde des routes stables au fil des éditions (un fil re-routé conserve sa forme sauf si une route nettement meilleure existe). 

<b>Comportement pendant le déplacement des blocs</b> 

Pendant le déplacement d'un bloc, ses fils sont déformés localement : seuls les segments attachés aux ports déplacés s'étirent, le reste de chaque route reste figé. Dès que le pointeur marque une pause (environ 50 ms), le routeur calcule de vraies routes en arrière-plan et ne les applique que si elles sont nettement meilleures, et les fils ne clignotent ni ne sautent. Les routes définitives sont calculées au relâchement. 

<b>Éditer un segment de fil</b> 

Survolez un segment intérieur d'un fil : le curseur devient une flèche de redimensionnement. Faites glisser le segment perpendiculairement à lui-même pour le placer où vous voulez ; ses segments voisins s'étirent pour suivre. Au relâchement, les extrémités du segment déplacé deviennent des <b>waypoints épinglés</b> : le fil conserve exactement cette forme lors des re-routages automatiques, et les autres fils le contournent. 

Les fils épinglés sont dessinés avec un trait légèrement plus soutenu et de petites ancres sur les waypoints épinglés. Quand un des blocs du fil est déplacé, seules les parties libres entre les ports et les ancres sont re-routées ; le milieu épinglé est préservé tel quel. 

Pour rendre un fil épinglé au routeur automatique, double-cliquez dessus, ou faites un clic droit et choisissez <b>Auto-route Wire</b>. 

Les waypoints épinglés sont enregistrés dans le fichier <b>.nflow</b> (chaque point épinglé est stocké comme <code>[x, y, 1]</code> dans le tableau <code>points</code> de la connexion) et restaurés au chargement ; annuler/rétablir couvre les éditions de segments. 

<b>Apparence</b> 

Les coudes des fils sont dessinés avec de petits arrondis par défaut. Mettez la préférence d'interface <code>nflow.wireRoundedCorners</code> à <code>0</code> pour des angles vifs. 

Les croisements entre fils sont dessinés comme de petits arcs de saut ; un seul des deux fils croisés dessine l'arc, choisi de façon déterministe.


## 🔗 Voir aussi

[nflow_workspace](../nflow_gui/nflow_workspace.md), [open_system](../nflow_gui/open_system.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
