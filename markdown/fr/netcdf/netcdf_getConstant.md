# netcdf.getConstant

Retourne la valeur numerique d'une constante netCDF.

## 📝 Syntaxe

- value = netcdf.getConstant(name)

## 📥 Argument d'entrée

- arguments - Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

## 📤 Argument de sortie

- value - Valeur retournee par l'operation netCDF.

## 📄 Description

netcdf.getConstant expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.getConstant.

```matlab
mode = netcdf.getConstant('NC_CLOBBER')
```

## 🔗 Voir aussi

[netcdf.getConstantNames](../netcdf/netcdf.getConstantNames.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
