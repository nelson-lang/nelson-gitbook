#import "nelson_help.typ": *

= netcdf.inqVarID <netcdf:netcdf_inqVarID>

Retourne l'identifiant associe a un nom de variable.

== Syntaxe

- #raw("varid = netcdf.inqVarID(ncid, varname)");

== Argument d'entrée

/ ncid: Identifiant numerique d'un fichier ou groupe netCDF ouvert.
/ varid: Identifiant numerique d'une variable netCDF.
/ varname: Nom de la variable netCDF.
/ xtype: Constante numerique de type netCDF.
/ dimids: Identifiant de dimension ou vecteur d'identifiants.
/ data: Tableau Nelson a lire ou a ecrire.

== Argument de sortie

/ varid: Identifiant numerique de la variable netCDF.

== Description

netcdf.inqVarID expose une operation bas niveau de la bibliotheque netCDF.

 Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.


== Exemple

Exemple copiable pour netcdf.inqVarID.

``````matlab
filename = [tempdir(), 'help_netcdf_inqVarID.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
varid = netcdf.inqVarID(ncid, 'temperature');
netcdf.close(ncid);
``````


== Voir aussi

#nlink(<netcdf:netcdf_defDim>)[netcdf.defDim];, #nlink(<netcdf:netcdf_putAtt>)[netcdf.putAtt];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
