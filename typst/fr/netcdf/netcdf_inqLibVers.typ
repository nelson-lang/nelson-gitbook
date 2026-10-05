#import "nelson_help.typ": *

= netcdf.inqLibVers <netcdf:netcdf_inqLibVers>

Retourne les informations de version de la bibliotheque netCDF.

== Syntaxe

- #raw("version = netcdf.inqLibVers()");

== Argument d'entrée

/ none: Cette fonction ne requiert aucun argument d'entree.

== Argument de sortie

/ version: Chaine de version de la bibliotheque netCDF.

== Description

netcdf.inqLibVers expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqLibVers.

``````matlab
version = netcdf.inqLibVers()
``````


== Voir aussi

#nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
