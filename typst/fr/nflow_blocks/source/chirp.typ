#import "../nelson_help.typ": *

= chirp <nflow_blocks:source.chirp>


#block-icon(image("chirp.svg"))

Genere un chirp sinusoidal de f0 a f1.

== Syntaxe

- #raw("Block type: chirp");

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Genere un chirp sinusoidal de f0 a f1.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs sources], 
  [Type], [#raw("chirp");], 
  [Libelle], [Chirp], 
)
  #strong[Description];

 Genere un chirp sinusoidal de f0 a f1.

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
  [#raw("f0");], [1], 
  [#raw("f1");], [10], 
  [#raw("k");], [1], 
  [#raw("phase");], [0], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("f0");
- #raw("f1");
- #raw("k");
- #raw("phase"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [chirp], 
  [Famille], [Blocs sources], 
  [Taille graphique], [80 x 80], 
  [Phases], [OUTPUT], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [non observe dans le code documente], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- Bloc OUTPUT sans entree.
- Le runtime natif derive k depuis f0, f1 et max(t1, 0.001).
- Le parametre k du manifest est une metadonnee visuelle\/configuration; le handler natif calcule la vitesse de balayage. #strong[Equation ou regle];

 #latex("y = amp\\,\\sin\\left(2\\pi\\left(f_0 t + \\frac{1}{2} k t^2\\right)\\right)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/source/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/source/chirp.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:source.sine>)[sine];, #nlink(<nflow_blocks:source.noise>)[noise];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
