# netcdf.copyAtt

Copie un attribut netCDF vers un autre emplacement.

## 📝 Syntaxe

- netcdf.copyAtt(ncidIn, varidIn, attname, ncidOut, varidOut)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- attname - Nom de l'attribut netCDF.
- attvalue - Attribute value.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


netcdf.copyAtt expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.copyAtt.

```matlab
filename = [tempdir(), 'help_netcdf_copyAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 2);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
netcdf.copyAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', ncid, varid);
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
