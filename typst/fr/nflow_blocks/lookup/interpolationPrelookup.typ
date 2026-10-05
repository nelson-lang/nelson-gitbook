#import "../nelson_help.typ": *

= interpolationPrelookup <nflow_blocks:lookup.interpolationPrelookup>


#block-icon(image("interpolationPrelookup.svg"))

Interpole une Table statique a partir du couple \[k, f\] issu d un prelookup.

== Syntaxe

- #raw("Type de bloc : interpolationPrelookup");

== Argument d'entrée

/ ports d entree: 1 port(s) d entree declare(s).

== Argument de sortie

/ ports de sortie: 1 port(s) de sortie declare(s).

== Description

Interpole une Table statique a partir du couple \[k, f\] issu d un prelookup.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Bibliotheque], [Tables de correspondance], 
  [Type], [#raw("interpolationPrelookup");], 
  [Libelle], [Interpolation Using Prelookup], 
)
  #strong[Description];

 Interpole la #raw("Table"); statique a l'aide du couple indice\/fraction produit par un bloc #raw("prelookup");. Le port d'entree 0 est le vecteur a 2 elements #raw("[k, f]"); ; la sortie est #raw("tbl[k] + f * (tbl[k+1] - tbl[k])");, soit une interpolation lineaire a l'intervalle partage. k est borne a un indice de table valide. Partager un seul #raw("prelookup"); entre plusieurs de ces blocs evite de refaire la recherche d'intervalle par table.

 Execution native (l'entree a 2 elements sera generee en code ulterieurement).

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
  [#raw("Table");], [\[0 1 4 9 16\]], 
)
 #strong[Caracteristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [interpolationPrelookup], 
  [Famille], [Tables de correspondance], 
  [Taille rendue], [90 x 80], 
  [Phases], [ALGEBRAIC], 
  [Etat interne ou historique], [non], 
  [Type de donnees du signal], [valeurs numeriques double], 
)
 #strong[Algorithmes];

 

- ALGEBRAIC : out \= tbl\[k\] + f \* (tbl\[k+1\] - tbl\[k\]). #strong[Equation ou regle];

 #latex("y = t_k + f\\,(t_{k+1} - t_k)"); #strong[Capacites etendues];

 #strong[Sources d implementation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/interpolationPrelookup.cpp", title: "Runtime")


== Exemple

Voir l'exemple prelookup, qui cable prelookup vers ce bloc.

``````matlab
% See the prelookup example for a complete Prelookup -> Interpolation wiring.
``````


== Voir aussi

#nlink(<nflow_blocks:lookup.prelookup>)[prelookup];, #nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
