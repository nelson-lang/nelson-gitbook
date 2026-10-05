#import "nelson_help.typ": *

= netcdf.getConstantNames <netcdf:netcdf_getConstantNames>

Retourne la liste des constantes netCDF connues.

== Syntaxe

- #raw("names = netcdf.getConstantNames()");

== Argument d'entrée

/ none: Cette fonction ne requiert aucun argument d'entree.

== Argument de sortie

/ names: Liste de noms retournee par la bibliotheque netCDF.

== Description

netcdf.getConstantNames expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.getConstantNames.

``````matlab
names = netcdf.getConstantNames();
names(1)
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
