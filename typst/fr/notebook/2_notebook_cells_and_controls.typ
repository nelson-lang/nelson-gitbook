#import "nelson_help.typ": *

= Cellules et contrôles d'un Notebook <notebook:2_notebook_cells_and_controls>

Les types de blocs d'un Notebook et les contrôles interactifs.

== Description

Un Notebook est une suite de #strong[blocs];. Certains blocs sont du texte, un bloc exécute du code, et d'autres sont des contrôles interactifs qui pilotent une variable. Vous insérez chacun d'eux en tapant #strong[\/]; dans le document, ou depuis le menu #strong[Insert]; de la barre d'outils.

 
#align(center)[#image("notebook_blocks.svg")]


 #strong[Blocs de texte];

 Un #strong[titre]; et un #strong[paragraphe]; contiennent du texte mis en forme : des titres, des mots en gras ou en italique, et des listes. Ils portent l'explication autour du code et ne s'exécutent jamais.

 #strong[Équations];

 Un bloc #strong[équation]; contient une formule LaTeX et l'affiche en ligne, à côté de votre texte. Par exemple #raw("f(x) = \\sin(x)\\,e^{-\\lambda x}"); est composé comme une expression mathématique. Les équations servent uniquement à l'affichage ; elles ne sont pas évaluées.

 #strong[Cellules de code];

 Une #strong[cellule de code]; contient du code Nelson. Sa marge de gauche a trois boutons d'exécution : exécuter cette cellule, exécuter jusqu'à cette cellule, et exécuter la section (une cellule de code avec le texte et les contrôles au-dessus, jusqu'au titre précédent). La barre d'outils ajoute #strong[Run all]; pour tout le document.

 Quand vous modifiez une cellule, les cellules dont le résultat peut être périmé sont marquées. #strong[Exécuter les périmées]; ré-exécute seulement celles-ci et les cellules qui en dépendent, au lieu de tout le document. #strong[Effacer]; supprime toutes les sorties enregistrées.

 #strong[Tâche interactive];

 Une #strong[tâche interactive]; est une cellule à cliquer : vous choisissez une opération et ses entrées, et la cellule écrit le code Nelson à votre place et l'exécute. C'est une manière rapide de construire une étape sans écrire le code à la main.

 #strong[Contrôles interactifs];

 Un contrôle est lié à une variable de l'espace de travail. Quand vous déplacez ou modifiez le contrôle, il fixe cette variable et ré-exécute les cellules qui l'utilisent, si bien qu'une figure se met à jour pendant que vous ajustez une valeur. Les contrôles disponibles sont :

 

- #strong[Curseur]; et #strong[curseur d’intervalle]; - un nombre, ou un couple bas et haut, pris dans une plage continue.
- #strong[Champ numérique]; - un nombre unique saisi ou incrémenté.
- #strong[Liste déroulante]; - une valeur choisie dans une liste.
- #strong[Case à cocher]; et #strong[bouton d'état]; - un logique vrai ou faux.
- #strong[Champ texte]; - un court texte ou nombre.
- #strong[Sélecteur de couleur]; - une couleur, sous forme de triplet RVB.
- #strong[Sélecteur de date]; - une date, sous forme de texte.
- #strong[Sélecteur de fichier]; - un chemin de fichier.
- #strong[Sélecteur de variable]; - une variable existante du workspace, transmise sous un nouveau nom.
- #strong[Bouton]; - exécute les cellules à la demande, sans lier de variable. Par exemple, un curseur nommé #strong[Frequency]; lié à la variable #raw("frequency"); fixe cette variable à chaque déplacement, et une cellule qui trace #raw("sin(frequency * x)"); se redessine aussitôt.

 #strong[Une vue partageable];

 #strong[Masquer le code]; replie les cellules de code et garde le texte, les contrôles et la sortie, ce qui transforme le document en un court rapport utilisable sans voir le code. #strong[Plan]; liste les titres pour parcourir un long document.


== Voir aussi

#nlink(<notebook:1_notebook_first_steps>)[Votre premier Notebook Nelson];, #nlink(<notebook:3_notebook_run_and_share>)[Exécuter et partager un Notebook];, #nlink(<notebook:nlx>)[nlx];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
