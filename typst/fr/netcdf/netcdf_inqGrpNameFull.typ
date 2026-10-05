#import "nelson_help.typ": *

= netcdf.inqGrpNameFull <netcdf:netcdf_inqGrpNameFull>

Retourne le chemin complet d'un groupe netCDF.

== Syntaxe

- #raw("path = netcdf.inqGrpNameFull(grpid)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ grpid: Group identifier.
/ name: Nom utilise par l'operation netCDF.

== Argument de sortie

/ path: Valeur retournee par la syntaxe indiquee ci-dessus.

== Description

netcdf.inqGrpNameFull expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqGrpNameFull.

``````matlab
filename = [tempdir(), 'help_netcdf_inqGrpNameFull.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
fullname = netcdf.inqGrpNameFull(gid);
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_create>)[netcdf.create];, #nlink(<netcdf:netcdf_defDim>)[netcdf.defDim];, #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
