# netcdf.defVarFill

Definit la valeur de remplissage d'une variable netCDF.

## 📝 Syntaxe

- netcdf.defVarFill(ncid, varid, noFillMode, fillValue)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- varid - Identifiant numerique d'une variable netCDF.
- storage - Mode de stockage de la variable netCDF.
- chunksizes - Tailles de blocs pour chaque dimension de la variable.
- fillValue - Valeur de remplissage associee a une variable.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


netcdf.defVarFill expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.defVarFill.

```matlab
filename = [tempdir(), 'help_netcdf_defVarFill.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFill(ncid, varid, 0, -999);
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.defVar](../netcdf/netcdf_defVar.md), [netcdf.endDef](../netcdf/netcdf_endDef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
