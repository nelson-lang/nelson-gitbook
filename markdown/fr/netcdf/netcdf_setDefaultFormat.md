# netcdf.setDefaultFormat

Change le format netCDF par defaut.

## 📝 Syntaxe

- oldFormat = netcdf.setDefaultFormat(format)

## 📥 Argument d'entrée

- arguments - Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

## 📤 Argument de sortie

- oldFormat - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.setDefaultFormat expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.setDefaultFormat.

```matlab
oldFormat = netcdf.setDefaultFormat(netcdf.getConstant('NC_FORMAT_NETCDF4'));
netcdf.setDefaultFormat(oldFormat);
```

## 🔗 Voir aussi

[netcdf.create](../netcdf/netcdf.create.md), [netcdf.getConstant](../netcdf/netcdf.getConstant.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
