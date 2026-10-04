# netcdf.inqVarFletcher32

Retourne le controle Fletcher32 d'une variable netCDF.

## 📝 Syntaxe

- fletcher32Flag = netcdf.inqVarFletcher32(ncid, varid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- storage - Mode de stockage de la variable netCDF.
- chunksizes - Tailles de blocs pour chaque dimension de la variable.
- fillValue - Valeur de remplissage associee a une variable.

## 📤 Argument de sortie

- fletcher32Flag - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqVarFletcher32 expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqVarFletcher32.

```matlab
filename = [tempdir(), 'help_netcdf_inqVarFletcher32.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFletcher32(ncid, varid, 1);
checksum = netcdf.inqVarFletcher32(ncid, varid);
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
