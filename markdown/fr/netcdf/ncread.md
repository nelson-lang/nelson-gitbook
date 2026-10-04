# ncread

Lit les donnees d'une variable netCDF.

## 📝 Syntaxe

- data = ncread(filename, varname)
- data = ncread(filename, varname, start, count)
- data = ncread(filename, varname, start, count, stride)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- varname - Nom de la variable netCDF.
- start - Position de depart. Les fonctions haut niveau utilisent une indexation Nelson a base un; les fonctions bas niveau suivent les conventions netCDF.
- count - Nombre d'elements a lire ou a ecrire dans chaque dimension.
- stride - Pas de lecture ou d'ecriture dans chaque dimension.

## 📤 Argument de sortie

- data - Donnees lues depuis la variable ou l'attribut netCDF.

## 📄 Description

ncread lit les donnees d'une variable depuis une source netCDF.

Les arguments optionnels start, count et stride permettent de lire un sous-ensemble des donnees.

## 💡 Exemple

Exemple copiable pour ncread.

```matlab
filename = [tempdir(), 'help_ncread.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 4});
ncwrite(filename, 'temperature', [10 20 30 40]);
data = ncread(filename, 'temperature', 2, 2)
```

## 🔗 Voir aussi

[nccreate](../netcdf/nccreate.md), [ncwrite](../netcdf/ncwrite.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
