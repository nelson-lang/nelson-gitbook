#import "nelson_help.typ": *

= netcdf.inqUnlimDims <netcdf:netcdf_inqUnlimDims>

Retourne les dimensions illimitees visibles dans un groupe.

== Syntaxe

- #raw("dimids = netcdf.inqUnlimDims(ncid)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ dimid: Identifiant numerique d'une dimension netCDF.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Argument de sortie

/ dimids: Valeur retournee par la syntaxe indiquee ci-dessus.

== Description

netcdf.inqUnlimDims expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqUnlimDims.

``````matlab
filename = [tempdir(), 'help_netcdf_inqUnlimDims.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'time', netcdf.getConstant('NC_UNLIMITED'));
unlim = netcdf.inqUnlimDims(ncid);
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
