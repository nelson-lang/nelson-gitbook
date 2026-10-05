#import "../nelson_help.typ": *

= intervalTest <nflow_blocks:logic.intervalTest>


#block-icon(image("intervalTest.svg"))

Sort 1 quand l entree est dans \[LowerLimit, UpperLimit\], sinon 0.

== Syntaxe

- #raw("Type de bloc : intervalTest");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Sort 1 quand l entree est dans \[LowerLimit, UpperLimit\], sinon 0.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("intervalTest");], 
  [Libelle], [Interval Test], 
)
  #strong[Description];

 Teste si l'entree #raw("u"); se trouve dans un intervalle statique. Les bornes #raw("LowerLimit"); et #raw("UpperLimit"); sont des parametres ; #raw("IntervalClosedLeft"); et #raw("IntervalClosedRight"); choisissent si chaque borne est incluse (#raw(">=");\/#raw("<=");) ou exclue (#raw(">");\/#raw("<");). Le test est applique element par element sur une entree vectorielle.

 Retour algebrique pur (sans etat) : la sortie ne depend que de l'entree courante.

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
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=100, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("LowerLimit");], [0], 
  [#raw("UpperLimit");], [1], 
  [#raw("IntervalClosedLeft");], [1], 
  [#raw("IntervalClosedRight");], [1], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [intervalTest], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [100 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= (u \>\= LowerLimit) && (u \<\= UpperLimit) ? 1 : 0, avec comparaisons strictes si la borne est ouverte. #strong[Equation ou regle];

 #latex("y = \\begin{cases} 1 & \\text{lo} \\le u \\le \\text{up} \\\\ 0 & \\text{otherwise} \\end{cases}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/intervalTest.cpp", title: "Runtime")


== Exemple

Tester une constante contre \[0, 1\] et afficher le resultat.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',0.5)), struct('id','it','type','intervalTest','inputs',1,'outputs',1,'params',struct('LowerLimit',0,'UpperLimit',1)), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','it','fromIndex',0,'toIndex',0), struct('from','it','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.intervalTestDynamic>)[intervalTestDynamic];, #nlink(<nflow_blocks:logic.compareToConstant>)[compareToConstant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
