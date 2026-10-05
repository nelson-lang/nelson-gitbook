#import "nelson_help.typ": *

= ncwriteschema <netcdf:ncwriteschema>

Ajoute des definitions de schema dans un fichier netCDF.

== Syntaxe

- #raw("ncwriteschema(filename, schema)");

== Argument d'entrée

/ filename: Chemin du fichier netCDF a creer, ouvrir ou modifier.
/ schema: Structure decrivant dimensions, variables, groupes et attributs. Elle peut suivre la forme retournee par ncinfo lorsque c'est applicable.

== Argument de sortie

/ none: Cette fonction ne retourne pas de valeur.

== Description

ncwriteschema cree les definitions de schema decrites par une structure Nelson.

 Elle sert a reproduire une organisation de metadonnees avant d'ecrire les donnees des variables.


== Exemple

Exemple copiable pour ncwriteschema.

``````matlab
source = [tempdir(), 'help_ncwriteschema_source.nc'];
target = [tempdir(), 'help_ncwriteschema_target.nc'];
nccreate(source, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(source);
ncwriteschema(target, info);
copyInfo = ncinfo(target);
copyInfo.Variables(1).Name
``````


== Voir aussi

#nlink(<netcdf:ncinfo>)[ncinfo];, #nlink(<netcdf:nccreate>)[nccreate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
