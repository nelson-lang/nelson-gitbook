# netcdf.inqGrpNameFull

Retourne le chemin complet d'un groupe netCDF.

## 📝 Syntaxe

- path = netcdf.inqGrpNameFull(grpid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- grpid - Group identifier.
- name - Nom utilise par l'operation netCDF.

## 📤 Argument de sortie

- path - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description


netcdf.inqGrpNameFull expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqGrpNameFull.

```matlab
filename = [tempdir(), 'help_netcdf_inqGrpNameFull.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
fullname = netcdf.inqGrpNameFull(gid);
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
