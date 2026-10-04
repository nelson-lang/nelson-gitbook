# netcdf.inqUnlimDims

Retourne les dimensions illimitees visibles dans un groupe.

## 📝 Syntaxe

- dimids = netcdf.inqUnlimDims(ncid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- dimid - Identifiant numerique d'une dimension netCDF.
- dimname - Dimension name.
- dimlen - Dimension length or NC_UNLIMITED.

## 📤 Argument de sortie

- dimids - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqUnlimDims expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqUnlimDims.

```matlab
filename = [tempdir(), 'help_netcdf_inqUnlimDims.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'time', netcdf.getConstant('NC_UNLIMITED'));
unlim = netcdf.inqUnlimDims(ncid);
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
