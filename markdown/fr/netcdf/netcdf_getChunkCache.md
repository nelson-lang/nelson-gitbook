# netcdf.getChunkCache

Retourne les reglages par defaut du cache de blocs netCDF.

## 📝 Syntaxe

- [size, nelems, preemption] = netcdf.getChunkCache()

## 📥 Argument d'entrée

- none - Cette fonction ne requiert aucun argument d'entree.

## 📤 Argument de sortie

- size - Cache size in bytes.
- nelems - Number of cache elements.
- preemption - Preemption policy value.

## 📄 Description

netcdf.getChunkCache expose une operation bas niveau de la bibliotheque netCDF.

Ces fonctions utilisent des identifiants numeriques et suivent les conventions netCDF, notamment pour les indices, les modes et les constantes.

## 💡 Exemple

Exemple copiable pour netcdf.getChunkCache.

```matlab
[cacheSize, nelems, preemption] = netcdf.getChunkCache()
```

## 🔗 Voir aussi

[netcdf.setChunkCache](../netcdf/netcdf.setChunkCache.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
