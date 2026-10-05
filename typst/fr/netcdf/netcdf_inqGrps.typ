#import "nelson_help.typ": *

= netcdf.inqGrps <netcdf:netcdf_inqGrps>

Retourne les identifiants des groupes enfants.

== Syntaxe

- #raw("grps = netcdf.inqGrps(ncid)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ grpid: Group identifier.
/ name: Nom utilise par l'operation netCDF.

== Argument de sortie

/ grps: Valeur retournee par la syntaxe indiquee ci-dessus.

== Description

netcdf.inqGrps expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqGrps.

``````matlab
filename = [tempdir(), 'help_netcdf_inqGrps.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
netcdf.defGrp(ncid, 'science');
groups = netcdf.inqGrps(ncid);
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
