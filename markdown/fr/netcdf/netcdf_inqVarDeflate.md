# netcdf.inqVarDeflate

Retourne les reglages de compression d'une variable netCDF.

## 📝 Syntaxe

- [shuffle, deflate, deflateLevel] = netcdf.inqVarDeflate(ncid, varid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- storage - Mode de stockage de la variable netCDF.
- chunksizes - Tailles de blocs pour chaque dimension de la variable.
- fillValue - Valeur de remplissage associee a une variable.

## 📤 Argument de sortie

- [shuffle, deflate, deflateLevel] - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqVarDeflate expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqVarDeflate.

```matlab
filename = [tempdir(), 'help_netcdf_inqVarDeflate.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 4);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarDeflate(ncid, varid, 1, 1, 1);
[shuffle, deflate, level] = netcdf.inqVarDeflate(ncid, varid);
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
