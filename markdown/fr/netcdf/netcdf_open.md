# netcdf.open

Ouvre une source de donnees netCDF.

## 📝 Syntaxe

- ncid = netcdf.open(filename, mode)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- mode - Mode numerique construit avec les constantes netCDF lorsque necessaire.

## 📤 Argument de sortie

- ncid - Identifiant numerique du fichier ou groupe netCDF.

## 📄 Description

netcdf.open expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.open.

```matlab
filename = [tempdir(), 'help_netcdf_open.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.close(ncid);
ncid = netcdf.open(filename, netcdf.getConstant('NC_NOWRITE'));
netcdf.close(ncid);
```

## 🔗 Voir aussi

[netcdf.create](../netcdf/netcdf.create.md), [netcdf.open](../netcdf/netcdf.open.md), [netcdf.close](../netcdf/netcdf.close.md), [netcdf.getConstant](../netcdf/netcdf.getConstant.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
