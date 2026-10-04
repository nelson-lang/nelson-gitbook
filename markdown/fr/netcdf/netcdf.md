# netcdf

Interface bas niveau du paquet NetCDF.

## 📝 Syntaxe

- netcdf.method(...)
- netcdf.getConstant(name)

## 📥 Argument d'entrée

- method - nom d'une operation NetCDF bas niveau statique.
- name - nom de constante accepte par getConstant.

## 📤 Argument de sortie

- varargout - sorties renvoyees par l'operation bas niveau selectionnee.

## 📄 Description

netcdf est une classe qui regroupe les operations NetCDF bas niveau sous forme de methodes statiques.

Utilisez les fonctions haut niveau ncinfo, ncread, ncwrite et fonctions associees lorsque cela convient a la tache.

## Fonction(s) utilisée(s)

    NetCDF C library

## 💡 Exemple

Interroger la version de la bibliotheque NetCDF liee.

```matlab
versionText = netcdf.inqLibVers()
```

## 🔗 Voir aussi

[ncinfo](../netcdf/ncinfo.md), [ncread](../netcdf/ncread.md), [ncwrite](../netcdf/ncwrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
