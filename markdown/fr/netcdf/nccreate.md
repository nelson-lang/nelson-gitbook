# nccreate

Cree une variable dans un fichier netCDF.

## 📝 Syntaxe

- nccreate(filename, varname, 'Dimensions', dimensions)
- nccreate(filename, varname, 'Dimensions', dimensions, 'Datatype', datatype)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- varname - Nom de la variable netCDF.
- dimensions - Tableau de cellules contenant des paires nom de dimension et longueur, par exemple {'time', 3}.
- datatype - Nom optionnel du type Nelson, par exemple 'double', 'single', 'int32' ou 'char'.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


nccreate definit une variable et ses dimensions dans un fichier netCDF local. 

Si le fichier n'existe pas, il est cree avant la definition de la variable.

## 💡 Exemple

Exemple copiable pour nccreate.

```matlab
filename = [tempdir(), 'help_nccreate.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(filename);
info.Variables(1).Name
```


## 🔗 Voir aussi

[ncwrite](../netcdf/ncwrite.md), [ncread](../netcdf/ncread.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
