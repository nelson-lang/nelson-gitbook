#import "nelson_help.typ": *

= netcdf.inqVlen <netcdf:netcdf_inqVlen>

Retourne les informations d'un type netCDF a longueur variable.

== Syntaxe

- #raw("[name, datumSize, baseType] = netcdf.inqVlen(ncid, xtype)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ xtype: Constante numerique de type netCDF.
/ typeName: Nom du type utilisateur netCDF.
/ baseType: Type de base d'un type utilisateur netCDF.

== Argument de sortie

/ \[name, datumSize, baseType\]: Valeur retournee par la syntaxe indiquee ci-dessus.

== Description

netcdf.inqVlen expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqVlen.

``````matlab
filename = [tempdir(), 'help_netcdf_inqVlen.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
typeid = netcdf.defVlen(ncid, 'sample_vlen', netcdf.getConstant('NC_DOUBLE'));
[name, datumSize, baseType] = netcdf.inqVlen(ncid, typeid);
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];, #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
