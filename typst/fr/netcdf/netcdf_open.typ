#import "nelson_help.typ": *

= netcdf.open <netcdf:netcdf_open>

Ouvre une source de donnees netCDF.

== Syntaxe

- #raw("ncid = netcdf.open(filename, mode)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ filename: Chemin du fichier netCDF a creer, ouvrir ou modifier.
/ mode: Mode numerique construit avec les constantes netCDF lorsque necessaire.

== Argument de sortie

/ ncid: Identifiant numerique du fichier ou groupe netCDF.

== Description

netcdf.open expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.open.

``````matlab
filename = [tempdir(), 'help_netcdf_open.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.close(ncid);
ncid = netcdf.open(filename, netcdf.getConstant('NC_NOWRITE'));
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_create>)[netcdf.create];, #nlink(<netcdf:netcdf_open>)[netcdf.open];, #nlink(<netcdf:netcdf_close>)[netcdf.close];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
