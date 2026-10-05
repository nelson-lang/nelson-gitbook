# netcdf.getAtt

Retourne un attribut netCDF.

## 📝 Syntaxe

- attvalue = netcdf.getAtt(ncid, varid, attname)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- attname - Nom de l'attribut netCDF.
- attvalue - Attribute value.

## 📤 Argument de sortie

- attvalue - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description


netcdf.getAtt expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.getAtt.

```matlab
filename = [tempdir(), 'help_netcdf_getAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
title = netcdf.getAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.putVar](../netcdf/netcdf_putVar.md), [netcdf.getConstant](../netcdf/netcdf_getConstant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
