#import "../nelson_help.typ": *

= coulombViscousFriction <nflow_blocks:nonlinear.coulombViscousFriction>


#block-icon(image("coulombViscousFriction.svg"))

Friction statique : terme visqueux Gain\*u plus terme de Coulomb signe Offset\*sign(u).

== Syntaxe

- #raw("Type de bloc : coulombViscousFriction");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Friction statique : terme visqueux Gain\*u plus terme de Coulomb signe Offset\*sign(u).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Non lineaire], 
  [Type], [#raw("coulombViscousFriction");], 
  [Libelle], [Coulomb & Viscous Friction], 
)
  #strong[Description];

 Modelise une caracteristique de friction statique combinant un terme visqueux proportionnel a l'entree (#raw("Gain");) et un terme de Coulomb de magnitude fixe (#raw("Offset");) opposant le sens du mouvement : #raw("y = Gain*u + Offset*sign(u)");. Comme #raw("sign(0) = 0");, la sortie vaut exactement 0 au repos. Deux segments paralleles avec un saut de 2\*Offset a l'origine. Scalaire ou vecteur (element par element).

 #strong[Ports];

 #strong[Entree(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique lu par le bloc.], [gauche], [x\=0, y\=40], 
)
 #strong[Sortie(s)];

 

#table(
  columns: 4,
  table.header([Port], [Role], [Cote], [Position], ),
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=80, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("Gain");], [1], 
  [#raw("Offset");], [1], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [coulombViscousFriction], 
  [Famille], [Non lineaire], 
  [Taille rendue], [80 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : y \= Gain\*u + Offset\*sign(u), element par element sur la largeur d'entree. #strong[Equation ou regle];

 #latex("y = \\text{Gain}\\cdot u + \\text{Offset}\\cdot \\operatorname{sign}(u)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/nonlinear/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/nonlinear/coulombViscousFriction.cpp", title: "Runtime")


== Exemple

Gain \= 2, Offset \= 3 : entree 2 -\> 7, entree -2 -\> -7, entree 0 -\> 0.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2)), struct('id','f','type','coulombViscousFriction','inputs',1,'outputs',1,'params',struct('Gain',2,'Offset',3)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','f','fromIndex',0,'toIndex',0), struct('from','f','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:nonlinear.deadZone>)[deadZone];, #nlink(<nflow_blocks:nonlinear.saturation>)[saturation];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
