# netcdf.defVlen

Definit un type tableau de longueur variable netCDF.

## 📝 Syntaxe

- xtype = netcdf.defVlen(ncid, typeName, baseType)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- xtype - Constante numerique de type netCDF.
- typeName - Nom du type utilisateur netCDF.
- baseType - Type de base d'un type utilisateur netCDF.

## 📤 Argument de sortie

- xtype - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description


netcdf.defVlen expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.defVlen.

```matlab
filename = [tempdir(), 'help_netcdf_defVlen.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
typeid = netcdf.defVlen(ncid, 'sample_vlen', netcdf.getConstant('NC_DOUBLE'));
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.getConstant](../netcdf/netcdf_getConstant.md), [netcdf.defVar](../netcdf/netcdf_defVar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
