#import "nelson_help.typ": *

= netcdf.inq <netcdf:netcdf_inq>

Retourne des informations generales sur un fichier netCDF.

== Syntaxe

- #raw("[numdims, numvars, numglobalatts, unlimdimid] = netcdf.inq(ncid)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ filename: Chemin du fichier netCDF a creer, ouvrir ou modifier.
/ mode: Mode numerique construit avec les constantes netCDF lorsque necessaire.

== Argument de sortie

/ \[numdims, numvars, numglobalatts, unlimdimid\]: Valeur retournee par la syntaxe indiquee ci-dessus.

== Description

netcdf.inq expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inq.

``````matlab
filename = [tempdir(), 'help_netcdf_inq.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
[ndims, nvars, natts, unlimdimid] = netcdf.inq(ncid);
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
