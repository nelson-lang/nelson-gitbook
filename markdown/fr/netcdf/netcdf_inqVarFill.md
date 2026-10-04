# netcdf.inqVarFill

Retourne la valeur de remplissage d'une variable netCDF.

## 📝 Syntaxe

- [noFillMode, fillValue] = netcdf.inqVarFill(ncid, varid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- storage - Mode de stockage de la variable netCDF.
- chunksizes - Tailles de blocs pour chaque dimension de la variable.
- fillValue - Valeur de remplissage associee a une variable.

## 📤 Argument de sortie

- [noFillMode, fillValue] - Valeur retournee par la syntaxe indiquee ci-dessus.

## 📄 Description

netcdf.inqVarFill expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.inqVarFill.

```matlab
filename = [tempdir(), 'help_netcdf_inqVarFill.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFill(ncid, varid, 0, -999);
[noFill, fillValue] = netcdf.inqVarFill(ncid, varid);
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
