#import "../nelson_help.typ": *

= combinatorialLogic <nflow_blocks:logic.combinatorialLogic>


#block-icon(image("combinatorialLogic.svg"))

Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees.

== Syntaxe

- #raw("Type de bloc : combinatorialLogic");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Recherche par table de verite : un vecteur d entree de N bits indexe une TruthTable de 2^N entrees.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Logique \/ Operations sur les bits], 
  [Type], [#raw("combinatorialLogic");], 
  [Libelle], [Combinatorial Logic], 
)
  #strong[Description];

 L'unique entree est un vecteur de N elements booleens qui forme un index binaire (l'element 0 est le bit de poids fort) ; la sortie est #raw("TruthTable[index]");, ou #raw("TruthTable"); est une colonne de 2^N valeurs. Les entrees non nulles comptent pour 1. Le bloc est enregistre "vector-aware" (il accepte une entree vectorielle et produit une sortie scalaire).

 Execution native seulement : la lecture de ligne a entree vectorielle n'est pas encore generee en code. Un index hors plage ou une table vide donne 0.

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
  [Port\_1], [Signal numerique produit par le bloc.], [droite], [x\=90, y\=40], 
)
 #strong[Parametres];

 

#table(
  columns: 2,
  table.header([Parametre], [Valeur par defaut], ),
  [#raw("TruthTable");], [\[0 1 1 0\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [combinatorialLogic], 
  [Famille], [Logique \/ Operations sur les bits], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : index \= somme sur les bits (u\[i\] !\= 0) \* 2^(N-1-i) ; out \= TruthTable\[index\]. #strong[Equation ou regle];

 #latex("y = \\text{TruthTable}\\big[\\textstyle\\sum_i u_i\\,2^{N-1-i}\\big]"); #strong[Capacites etendues];

 Execution native seulement (ce bloc n'est pas genere en code).

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/logic/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/logic/combinatorialLogic.cpp", title: "Runtime")


== Exemple

Une table de verite XOR a 2 entrees \[0 1 1 0\] appliquee au vecteur \[1 0\] donne 1.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',[1 0])), struct('id','cl','type','combinatorialLogic','inputs',1,'outputs',1,'params',struct('TruthTable',[0 1 1 0])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','cl','fromIndex',0,'toIndex',0), struct('from','cl','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:logic.bitwiseOperator>)[bitwiseOperator];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
