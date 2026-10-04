# ncreadatt

Lit un attribut depuis une source netCDF.

## 📝 Syntaxe

- attvalue = ncreadatt(filename, location, attname)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- location - Chemin de groupe, de variable ou d'attribut dans la source netCDF.
- attname - Nom de l'attribut netCDF.

## 📤 Argument de sortie

- attvalue - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

ncreadatt lit un attribut global ou associe a une variable netCDF.

Indiquez la source, l'emplacement et le nom de l'attribut a lire.

## 💡 Exemple

Exemple copiable pour ncreadatt.

```matlab
filename = [tempdir(), 'help_ncreadatt.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 2});
ncwriteatt(filename, 'temperature', 'units', 'degree');
units = ncreadatt(filename, 'temperature', 'units')
```

## 🔗 Voir aussi

[ncwriteatt](../netcdf/ncwriteatt.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
