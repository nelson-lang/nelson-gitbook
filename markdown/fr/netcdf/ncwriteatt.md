# ncwriteatt

Ecrit un attribut dans une source netCDF.

## 📝 Syntaxe

- ncwriteatt(filename, location, attname, attvalue)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- location - Chemin de groupe, de variable ou d'attribut dans la source netCDF.
- attname - Nom de l'attribut netCDF.
- attvalue - Attribute value. Character and numeric arrays are supported.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description

ncwriteatt ecrit ou remplace un attribut dans une source netCDF.

L'attribut peut etre global ou associe a une variable selon l'emplacement indique.

## 💡 Exemple

Exemple copiable pour ncwriteatt.

```matlab
filename = [tempdir(), 'help_ncwriteatt.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 2});
ncwriteatt(filename, '/', 'title', 'sample file');
title = ncreadatt(filename, '/', 'title')
```

## 🔗 Voir aussi

[ncreadatt](../netcdf/ncreadatt.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
