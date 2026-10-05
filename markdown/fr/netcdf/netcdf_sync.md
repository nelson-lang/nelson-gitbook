# netcdf.sync

Synchronise un fichier netCDF sur le disque.

## 📝 Syntaxe

- netcdf.sync(ncid)

## 📥 Argument d'entrée

- ncid - Identifiant numerique d'un fichier ou groupe netCDF ouvert.
- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- mode - Mode numerique construit avec les constantes netCDF lorsque necessaire.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


netcdf.sync expose une operation bas niveau de la bibliotheque netCDF. 

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.sync.

```matlab
filename = [tempdir(), 'help_netcdf_sync.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.sync(ncid);
netcdf.close(ncid);
```


## 🔗 Voir aussi

[netcdf.create](../netcdf/netcdf_create.md), [netcdf.open](../netcdf/netcdf_open.md), [netcdf.close](../netcdf/netcdf_close.md), [netcdf.getConstant](../netcdf/netcdf_getConstant.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
