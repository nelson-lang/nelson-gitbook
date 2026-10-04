# netcdf.defGrp

Cree un groupe dans un fichier netCDF.

## 📝 Syntaxe

- grpid = netcdf.defGrp(ncid, name)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- grpid - Group identifier.
- name - Nom utilise par l'operation netCDF.

## 📤 Argument de sortie

- grpid - Identifiant numerique du groupe netCDF.

## 📄 Description

netcdf.defGrp expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.defGrp.

```matlab
filename = [tempdir(), 'help_netcdf_defGrp.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
netcdf.close(ncid);
```

## 🔗 Voir aussi

[netcdf.create](../netcdf/netcdf.create.md), [netcdf.defDim](../netcdf/netcdf.defDim.md), [netcdf.defVar](../netcdf/netcdf.defVar.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
