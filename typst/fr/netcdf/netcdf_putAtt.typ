#import "nelson_help.typ": *

= netcdf.putAtt <netcdf:netcdf_putAtt>

Ecrit un attribut netCDF.

== Syntaxe

- #raw("netcdf.putAtt(ncid, varid, attname, attvalue)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ varid: Identifiant numerique d'une variable netCDF.
/ attname: Nom de l'attribut netCDF.
/ attvalue: Attribute value.

== Argument de sortie

/ none: Cette fonction ne retourne pas de valeur.

== Description

netcdf.putAtt expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.putAtt.

``````matlab
filename = [tempdir(), 'help_netcdf_putAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_putVar>)[netcdf.putVar];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
