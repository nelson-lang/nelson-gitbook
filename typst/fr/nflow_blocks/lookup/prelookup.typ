#import "../nelson_help.typ": *

= prelookup <nflow_blocks:lookup.prelookup>


#block-icon(image("prelookup.svg"))

Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

== Syntaxe

- #raw("Type de bloc : prelookup");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Calcule l indice d intervalle k et la fraction f pour une recherche de breakpoints partagee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Tables de correspondance], 
  [Type], [#raw("prelookup");], 
  [Libelle], [Prelookup], 
)
  #strong[Description];

 Pour une entree scalaire #raw("u"); et le vecteur strictement croissant #raw("BreakpointsForDimension1");, calcule l'indice d'intervalle k tel que bp\[k\] \<\= u \< bp\[k+1\] et la fraction f \= (u - bp\[k\]) \/ (bp\[k+1\] - bp\[k\]). La sortie est le vecteur a 2 elements #raw("[k, f]");, qu'un ou plusieurs blocs #raw("interpolationPrelookup"); reutilisent pour interpoler plusieurs tables sans refaire la recherche d'intervalle.

 Les entrees hors plage sont bornees : sous le premier breakpoint donne \[0, 0\] ; au niveau ou au-dessus du dernier donne \[N-2, 1\]. La generation de code C et Rust est supportee (la passe d'expansion vectorielle abaisse le bloc en aides scalaires).

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
  [#raw("BreakpointsForDimension1");], [\[0 1 2 3 4\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [prelookup], 
  [Famille], [Tables de correspondance], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : localise k, calcule f, sort \[k, f\]. #strong[Equation ou regle];

 #latex("k : b_k \\le u < b_{k+1},\\quad f = \\frac{u - b_k}{b_{k+1} - b_k}"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/prelookup.cpp", title: "Runtime")


== Exemple

Prelookup u \= 2.5 sur \[0 1 2 3 4\], puis interpoler la table \[0 1 4 9 16\] -\> 6.5.

``````matlab
d.blocks={ struct('id','c','type','constant','inputs',0,'outputs',1,'params',struct('Value',2.5)), struct('id','pl','type','prelookup','inputs',1,'outputs',1,'params',struct('BreakpointsForDimension1',[0 1 2 3 4])), struct('id','ip','type','interpolationPrelookup','inputs',1,'outputs',1,'params',struct('Table',[0 1 4 9 16])), struct('id','w','type','toWorkspace','inputs',1,'outputs',0,'params',struct('VariableName','y','SaveFormat','Array')) };
d.connections={ struct('from','c','to','pl','fromIndex',0,'toIndex',0), struct('from','pl','to','ip','fromIndex',0,'toIndex',0), struct('from','ip','to','w','fromIndex',0,'toIndex',0) };
d.sampleTime=0.1; d.duration=0.2; d.solver='discrete'; d.variables=struct();
r=jsondecode(__nflow_simulate__(jsonencode(d)));
``````


== Voir aussi

#nlink(<nflow_blocks:lookup.interpolationPrelookup>)[interpolationPrelookup];, #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
