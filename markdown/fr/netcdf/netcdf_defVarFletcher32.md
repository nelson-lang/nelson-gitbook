# netcdf.defVarFletcher32

Definit le controle Fletcher32 d'une variable netCDF.

## 📝 Syntaxe

- netcdf.defVarFletcher32(ncid, varid, fletcher32Flag)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- storage - Mode de stockage de la variable netCDF.
- chunksizes - Tailles de blocs pour chaque dimension de la variable.
- fillValue - Valeur de remplissage associee a une variable.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description

netcdf.defVarFletcher32 expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.defVarFletcher32.

```matlab
filename = [tempdir(), 'help_netcdf_defVarFletcher32.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFletcher32(ncid, varid, 1);
netcdf.close(ncid);
```

## 🔗 Voir aussi

[netcdf.defVar](../netcdf/netcdf.defVar.md), [netcdf.endDef](../netcdf/netcdf.endDef.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
