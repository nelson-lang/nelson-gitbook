# netcdf.inqGrpParent

Retourne l'identifiant du groupe parent.

## 📝 Syntaxe

- parentid = netcdf.inqGrpParent(grpid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- grpid - Group identifier.
- name - Nom utilise par l'operation netCDF.

## 📤 Argument de sortie

- parentid - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description


netcdf.inqGrpParent expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqGrpParent.

```matlab
filename = [tempdir(), 'help_netcdf_inqGrpParent.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
parent = netcdf.inqGrpParent(gid);
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.create](../netcdf/netcdf_create.md), [netcdf.defDim](../netcdf/netcdf_defDim.md), [netcdf.defVar](../netcdf/netcdf_defVar.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
