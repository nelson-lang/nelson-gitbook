#import "nelson_help.typ": *

= configureDictionary <dictionary:configureDictionary>

Génère un dictionnaire avec des types définis pour les clés et les valeurs.

== Syntaxe

- #raw("d = configureDictionary(keyType, valueType)");

== Argument d'entrée

/ keyType: Type de données de la clé : scalaire string ou vecteur de caractères.
/ valueType: Type de données de la valeur : scalaire string ou vecteur de caractères.

== Argument de sortie

/ d: scalaire : un objet dictionnaire.

== Description

#strong[d \= configureDictionary(keyType, valueType)]; initialise un dictionnaire vide qui impose des clés du type #strong[keyType]; et des valeurs du type #strong[valueType];.


== Exemple

``````matlab
d1 = configureDictionary("string", "single")
d2 = configureDictionary("cell", "struct")
``````


== Voir aussi

#nlink(<dictionary:dictionary>)[dictionary];, #nlink(<dictionary:isConfigured>)[isConfigured];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [version initiale],
)

// Auteur: Allan CORNET
