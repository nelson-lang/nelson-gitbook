#import "../nelson_help.typ": *

= rate <nflow_blocks:nonlinear.rate>


#block-icon(image("rate.svg"))

Limite les vitesses de montee et de descente du signal.

== Syntaxe

- #raw("Block type: rate");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Limite les vitesses de montee et de descente du signal.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs non lineaires], 
  [Type], [#raw("rate");], 
  [Libelle], [Rate Lim.], 
)
  #strong[Description];

 Limite les vitesses de montee et de descente du signal.

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [left], [x\=0, y\=40], 
)
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
  [#raw("rise");], [1], 
  [#raw("fall");], [1], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("rise");
- #raw("fall"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [rate], 
  [Famille], [Blocs non lineaires], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT met la sortie memorisee a 0.
- OUTPUT emet la valeur memorisee. UPDATE borne l entree entre previous - fall\*dt et previous + rise\*dt.
- rise et fall sont contraints a des valeurs positives ou nulles. #strong[Equation ou regle];

 #latex("y = \\operatorname{clamp}(u,\\,y_{prev} - fall\\,dt,\\,y_{prev} + rise\\,dt)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/rate.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:nonlinear.saturation>)[saturation];, #nlink(<nflow_blocks:nonlinear.quantizer>)[quantizer];, #nlink(<nflow_blocks:continuous.delay>)[delay];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
