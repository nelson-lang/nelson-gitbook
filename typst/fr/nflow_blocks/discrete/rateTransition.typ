#import "../nelson_help.typ": *

= rateTransition <nflow_blocks:discrete.rateTransition>

Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).

== Syntaxe

- #raw("Type de bloc : rateTransition");

== Argument d'entrée

/ ports d'entrée: 1 entrée : le signal rapide à rééchantillonner.

== Argument de sortie

/ ports de sortie: 1 sortie : l'entrée tenue au pas d'échantillonnage propre du bloc.

== Description

Rééchantillonne un signal à son propre pas d'échantillonnage (bloqueur d'ordre zéro).

 Le bloc échantillonne son entrée aux multiples de #raw("OutPortSampleTime"); et tient cette valeur entre les tops, ce qui lui permet de tourner plus lentement que le pas de base du diagramme. C'est la primitive multi-rate minimale : une valeur #raw("<="); au pas de base (ou le défaut #raw("-1");, hérité) échantillonne à chaque pas, se ramenant à un simple retard unitaire ; une valeur plus grande #raw("Ts"); tient la sortie pendant #raw("Ts / pas-de-base"); pas. La valeur échantillonnée apparaît un pas de base après le top (bloqueur d'ordre zéro avec intégrité des données).

 #strong[Paramètres];

 

#table(
  columns: 2,
  table.header([Paramètre], [Valeur par défaut], ),
  [#raw("OutPortSampleTime");], [-1], 
  [#raw("InitialCondition");], [0], 
)
 #strong[Caractéristiques du bloc];

 

#table(
  columns: 2,
  [Type de bloc], [rateTransition], 
  [Famille], [Blocs discrets], 
  [Phases], [INIT, OUTPUT, UPDATE], 
)
 #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/discrete/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/discrete/rateTransition.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:discrete.unitDelay>)[unitDelay];, #nlink(<nflow_blocks:discrete.zoh>)[zoh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
