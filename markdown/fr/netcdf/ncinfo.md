# ncinfo

Retourne les informations d'une source de donnees netCDF.

## 📝 Syntaxe

- info = ncinfo(filename)

## 📥 Argument d'entrée

- arguments - Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

## 📤 Argument de sortie

- info - Structure Nelson contenant les informations de la source netCDF.

## 📄 Description


ncinfo retourne une structure Nelson decrivant une source netCDF. 

La structure contient les groupes, dimensions, variables, attributs et options de stockage disponibles.

## 💡 Exemple

Exemple copiable pour ncinfo.

```matlab
filename = [tempdir(), 'help_ncinfo.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(filename);
info.Variables(1).Name
```


## 🔗 Voir aussi

[ncdisp](../netcdf/ncdisp.md), [ncwriteschema](../netcdf/ncwriteschema.md), [ncread](../netcdf/ncread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
