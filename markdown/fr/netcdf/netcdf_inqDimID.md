# netcdf.inqDimID

Retourne l'identifiant d'une dimension netCDF.

## 📝 Syntaxe

- dimid = netcdf.inqDimID(ncid, dimname)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- dimid - Identifiant numerique d'une dimension netCDF.
- dimname - Dimension name.
- dimlen - Dimension length or NC\_UNLIMITED.

## 📤 Argument de sortie

- dimid - Identifiant numerique de la dimension netCDF.

## 📄 Description


netcdf.inqDimID expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqDimID.

```matlab
filename = [tempdir(), 'help_netcdf_inqDimID.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
dimid = netcdf.inqDimID(ncid, 'x');
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.defVar](../netcdf/netcdf_defVar.md), [netcdf.inq](../netcdf/netcdf_inq.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
