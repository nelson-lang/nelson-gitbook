#import "../nelson_help.typ": *

= pid <nflow_blocks:continuous.pid>


#block-icon(image("pid.svg"))

Implemente un controleur PID scalaire avec limites de sortie.

== Syntaxe

- #raw("Block type: pid");

== Argument d'entrée

/ input ports: 1 port(s) d entree declare(s).

== Argument de sortie

/ output ports: 1 port(s) de sortie declare(s).

== Description

Implemente un controleur PID scalaire avec limites de sortie.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Blocs continus], 
  [Type], [#raw("pid");], 
  [Libelle], [PID], 
)
  #strong[Description];

 Implemente un controleur PID scalaire avec limites de sortie.

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
  [#raw("kp");], [1], 
  [#raw("ki");], [0], 
  [#raw("kd");], [0], 
  [#raw("min");], [-inf], 
  [#raw("max");], [inf], 
)
 #strong[Cles de l inspecteur];

 Ces cles serialisees sont exposees par l inspecteur du bloc.

 

- #raw("kp");
- #raw("ki");
- #raw("kd");
- #raw("min");
- #raw("max"); #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [pid], 
  [Famille], [Blocs continus], 
  [Taille graphique], [80 x 80], 
  [Phases], [INIT, OUTPUT, UPDATE], 
  [Traversee directe], [voir Algorithmes], 
  [Etat ou historique interne], [oui], 
  [Type de donnees signaux], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- INIT efface l integrale, l entree precedente et la sortie.
- OUTPUT emet la sortie controleur memorisee. UPDATE calcule les termes P, I et D depuis l entree et dt.
- Le resultat est borne entre min et max. #strong[Equation ou regle];

 #latex("y = \\operatorname{clamp}\\left(k_p u + k_i\\int u\\,dt + k_d\\frac{du}{dt},\\,min,\\,max\\right)"); #strong[Capacites et limites];

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/continuous/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/continuous/pid.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:continuous.integrator>)[integrator];, #nlink(<nflow_blocks:continuous.derivative>)[derivative];, #nlink(<nflow_blocks:math.gain>)[gain];, #nlink(<nflow_blocks:math.sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
