# netcdf.setChunkCache

Definit les reglages par defaut du cache de blocs netCDF.

## 📝 Syntaxe

- netcdf.setChunkCache(size, nelems, preemption)

## 📥 Argument d'entrée

- size - Taille numerique utilisee par l'operation netCDF.
- nelems - Nombre d'elements du cache netCDF.
- preemption - Valeur de priorite du cache netCDF.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description

netcdf.setChunkCache expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.setChunkCache.

```matlab
[cacheSize, nelems, preemption] = netcdf.getChunkCache();
netcdf.setChunkCache(cacheSize, nelems, preemption);
[cacheSize2, nelems2, preemption2] = netcdf.getChunkCache()
```

## 🔗 Voir aussi

[netcdf.getChunkCache](../netcdf/netcdf.getChunkCache.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
