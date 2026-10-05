#import "nelson_help.typ": *

= netcdf.defVarChunking <netcdf:netcdf_defVarChunking>

Definit le decoupage en blocs d'une variable netCDF.

== Syntaxe

- #raw("netcdf.defVarChunking(ncid, varid, storage, chunksizes)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ varid: Identifiant numerique d'une variable netCDF.
/ storage: Mode de stockage de la variable netCDF.
/ chunksizes: Tailles de blocs pour chaque dimension de la variable.
/ fillValue: Valeur de remplissage associee a une variable.

== Argument de sortie

/ none: Cette fonction ne retourne pas de valeur.

== Description

netcdf.defVarChunking expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.defVarChunking.

``````matlab
filename = [tempdir(), 'help_netcdf_defVarChunking.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 4);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarChunking(ncid, varid, netcdf.getConstant('NC_CHUNKED'), 2);
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];, #nlink(<netcdf:netcdf_endDef>)[netcdf.endDef];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
