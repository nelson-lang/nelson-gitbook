#import "nelson_help.typ": *

= netcdf.defDim <netcdf:netcdf_defDim>

Cree une dimension netCDF.

== Syntaxe

- #raw("dimid = netcdf.defDim(ncid, dimname, dimlen)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ dimid: Identifiant numerique d'une dimension netCDF.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Argument de sortie

/ dimid: Identifiant numerique de la dimension netCDF.

== Description

netcdf.defDim expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.defDim.

``````matlab
filename = [tempdir(), 'help_netcdf_defDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];, #nlink(<netcdf:netcdf_inq>)[netcdf.inq];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
