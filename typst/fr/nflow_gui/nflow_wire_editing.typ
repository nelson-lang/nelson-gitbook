#import "nelson_help.typ": *

= nflow\_wire\_editing <nflow_gui:nflow_wire_editing>

Routage et édition des fils dans l'éditeur nflow.

== Syntaxe

- #raw("Page concept : routage des fils, waypoints épinglés, coudes arrondis");

== Description

#strong[Créer une connexion];

 Faites glisser depuis un port de sortie vers un port d'entrée. Un fil fantôme suit le pointeur, les cibles compatibles sont mises en évidence et la cible active est accentuée sans déplacer le diagramme. Une cible incompatible est refusée immédiatement avec une explication concise dans Diagnostics.

 L'éditeur nflow route automatiquement les fils de connexion avec un routeur orthogonal (segments horizontaux\/verticaux) qui évite les blocs, écarte les fils superposés, dessine des arcs de saut aux croisements et garde des routes stables au fil des éditions (un fil re-routé conserve sa forme sauf si une route nettement meilleure existe).

 #strong[Comportement pendant le déplacement des blocs];

 Pendant le déplacement d'un bloc, ses fils sont déformés localement : seuls les segments attachés aux ports déplacés s'étirent, le reste de chaque route reste figé. Dès que le pointeur marque une pause (environ 50 ms), le routeur calcule de vraies routes en arrière-plan et ne les applique que si elles sont nettement meilleures, et les fils ne clignotent ni ne sautent. Les routes définitives sont calculées au relâchement.

 #strong[Éditer un segment de fil];

 Survolez un segment intérieur d'un fil : le curseur devient une flèche de redimensionnement. Faites glisser le segment perpendiculairement à lui-même pour le placer où vous voulez ; ses segments voisins s'étirent pour suivre. Au relâchement, les extrémités du segment déplacé deviennent des #strong[waypoints épinglés]; : le fil conserve exactement cette forme lors des re-routages automatiques, et les autres fils le contournent.

 Les fils épinglés sont dessinés avec un trait légèrement plus soutenu et de petites ancres sur les waypoints épinglés. Quand un des blocs du fil est déplacé, seules les parties libres entre les ports et les ancres sont re-routées ; le milieu épinglé est préservé tel quel.

 Pour rendre un fil épinglé au routeur automatique, double-cliquez dessus, ou faites un clic droit et choisissez #strong[Auto-route Wire];.

 Les waypoints épinglés sont enregistrés dans le fichier #strong[.nflow]; (chaque point épinglé est stocké comme #raw("[x, y, 1]"); dans le tableau #raw("points"); de la connexion) et restaurés au chargement ; annuler\/rétablir couvre les éditions de segments.

 #strong[Apparence];

 Les coudes des fils sont dessinés avec de petits arrondis par défaut. Mettez la préférence d'interface #raw("nflow.wireRoundedCorners"); à #raw("0"); pour des angles vifs.

 Les croisements entre fils sont dessinés comme de petits arcs de saut ; un seul des deux fils croisés dessine l'arc, choisi de façon déterministe.


== Voir aussi

#nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:open_system>)[open\_system];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
