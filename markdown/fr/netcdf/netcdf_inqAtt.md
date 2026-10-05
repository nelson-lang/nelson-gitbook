# netcdf.inqAtt

Retourne les informations d'un attribut netCDF.

## 📝 Syntaxe

- [xtype, len] = netcdf.inqAtt(ncid, varid, attname)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- attname - Nom de l'attribut netCDF.
- attvalue - Attribute value.

## 📤 Argument de sortie

- [xtype, len] - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description


netcdf.inqAtt expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqAtt.

```matlab
filename = [tempdir(), 'help_netcdf_inqAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
[xtype, len] = netcdf.inqAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
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
