#import "nelson_help.typ": *

= netcdf.renameDim <netcdf:netcdf_renameDim>

Renomme une dimension netCDF.

== Syntaxe

- #raw("netcdf.renameDim(ncid, dimid, newname)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ dimid: Identifiant numerique d'une dimension netCDF.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Argument de sortie

/ none: Cette fonction ne retourne pas de valeur.

== Description

netcdf.renameDim expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.renameDim.

``````matlab
filename = [tempdir(), 'help_netcdf_renameDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.renameDim(ncid, dimid, 'samples');
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
