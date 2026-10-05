# netcdf.putVar

Ecrit des donnees dans une variable netCDF.

## 📝 Syntaxe

- netcdf.putVar(ncid, varid, data)
- netcdf.putVar(ncid, varid, start, count, stride, data)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- varname - Nom de la variable netCDF.
- xtype - Constante numerique de type netCDF.
- dimids - Identifiant de dimension ou vecteur d'identifiants.
- data - Tableau Nelson a lire ou a ecrire.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


netcdf.putVar expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.putVar.

```matlab
filename = [tempdir(), 'help_netcdf_putVar.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.endDef(ncid);
netcdf.putVar(ncid, varid, [1 2 3]);
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.defDim](../netcdf/netcdf_defDim.md), [netcdf.putAtt](../netcdf/netcdf_putAtt.md), [netcdf.getConstant](../netcdf/netcdf_getConstant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
