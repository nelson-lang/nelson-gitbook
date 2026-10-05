#import "../nelson_help.typ": *

= impulse <nflow_blocks:source.impulse>


#block-icon(image("impulse.svg"))

Produit une impulsion a un instant configure.

== Syntaxe

- #raw("Block type: impulse");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Produit une impulsion a un instant configure.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("impulse");], 
  [Libelle], [Impulse], 
)
  #strong[Description];

 Produit une impulsion a un instant configure.

 #strong[Ports];

 #strong[Entree(s)];

 Ce bloc ne declare aucune entree.

 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [right], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("time");], [0], 
  [#raw("amp");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("time");
- #raw("amp"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [impulse], 
  [Famille], [Blocs sources], 
  [Taille graphique], [80 x 80], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT sans entree.
- La sortie vaut amp lorsque abs(t - time) \<\= dt \/ 2, sinon 0. #strong[Equation ou regle];

 #latex("y = \\begin{cases} amp, & t \\approx time \\\\ 0, & \\mathrm{otherwise} \\end{cases}"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/impulse.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:source.step>)[step];, #nlink(<nflow_blocks:source.constant>)[constant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
