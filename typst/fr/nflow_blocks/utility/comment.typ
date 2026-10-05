#import "../nelson_help.typ": *

= comment <nflow_blocks:utility.comment>


#block-icon(image("comment.svg"))

Ajoute un texte d annotation non execute au diagramme.

== Syntaxe

- #raw("Block type: comment");

== Description

Ajoute un texte d annotation non execute au diagramme.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs utilitaires], 
  [Type], [#raw("comment");], 
  [Libelle], [Comment], 
)
  #strong[Description];

 Ajoute un texte d annotation non execute au diagramme.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 Ce bloc ne declare aucune sortie.

 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("commentText");], [], 
  [#raw("showBorder");], [true], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("commentText");
- #raw("showBorder"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [comment], 
  [Famille], [Blocs utilitaires], 
  [Taille graphique], [220 x 120], 
  [Phases], [none], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Aucun handler numerique natif et aucun port de signal.
- Utilise par l editeur et le rendu pour le texte de commentaire et l affichage de bordure. #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: registre de famille, chemin UI ou codegen; aucun fichier runtime natif dedie trouve.


== Voir aussi

#nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
