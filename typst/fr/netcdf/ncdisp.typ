#import "nelson_help.typ": *

= ncdisp <netcdf:ncdisp>

Affiche le contenu d'une source de donnees netCDF.

== Syntaxe

- #raw("ncdisp(filename)");
- #raw("ncdisp(filename, location)");
- #raw("ncdisp(filename, location, mode)");

== Argument d'entrée

/ filename: Chemin du fichier netCDF a creer, ouvrir ou modifier.
/ location: Chemin de groupe, de variable ou d'attribut dans la source netCDF.
/ mode: Mode numerique construit avec les constantes netCDF lorsque necessaire.

== Argument de sortie

/ none: Cette fonction ne retourne pas de valeur.

== Description

ncdisp affiche une vue lisible du contenu d'une source netCDF.

 Utilisez cette fonction pour explorer rapidement groupes, dimensions, variables et attributs.


== Exemple

Exemple copiable pour ncdisp.

``````matlab
filename = [tempdir(), 'help_ncdisp.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
ncwrite(filename, 'temperature', [1 2 3]);
ncdisp(filename)
``````


== Voir aussi

#nlink(<netcdf:ncinfo>)[ncinfo];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
