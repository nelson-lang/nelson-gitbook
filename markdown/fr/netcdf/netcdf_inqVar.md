# netcdf.inqVar

Retourne les informations d'une variable netCDF.

## 📝 Syntaxe

- [varname, xtype, dimids, natts] = netcdf.inqVar(ncid, varid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- varname - Nom de la variable netCDF.
- xtype - Constante numerique de type netCDF.
- dimids - Identifiant de dimension ou vecteur d'identifiants.
- data - Tableau Nelson a lire ou a ecrire.

## 📤 Argument de sortie

- [varname, xtype, dimids, natts] - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqVar expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqVar.

```matlab
filename = [tempdir(), 'help_netcdf_inqVar.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
[name, xtype, dimids, natts] = netcdf.inqVar(ncid, varid);
netcdf.close(ncid);
```

## 🔗 Voir aussi

[netcdf.defDim](../netcdf/netcdf.defDim.md), [netcdf.putAtt](../netcdf/netcdf.putAtt.md), [netcdf.getConstant](../netcdf/netcdf.getConstant.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
