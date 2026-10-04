# netcdf.inqDim

Retourne le nom et la longueur d'une dimension netCDF.

## 📝 Syntaxe

- [dimname, dimlen] = netcdf.inqDim(ncid, dimid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- dimid - Identifiant numerique d'une dimension netCDF.
- dimname - Dimension name.
- dimlen - Dimension length or NC_UNLIMITED.

## 📤 Argument de sortie

- [dimname, dimlen] - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqDim expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqDim.

```matlab
filename = [tempdir(), 'help_netcdf_inqDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
[name, len] = netcdf.inqDim(ncid, dimid);
netcdf.close(ncid);
```

## 🔗 Voir aussi

[netcdf.defVar](../netcdf/netcdf.defVar.md), [netcdf.inq](../netcdf/netcdf.inq.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
