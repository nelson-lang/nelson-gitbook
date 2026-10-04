# netcdf.getChunkCache

Return default chunk cache settings for the netCDF library.

## 📝 Syntax

- [size, nelems, preemption] = netcdf.getChunkCache()

## 📥 Input argument

- none - This function does not require input arguments.

## 📤 Output argument

- size - Cache size in bytes.
- nelems - Number of cache elements.
- preemption - Preemption policy value.

## 📄 Description

netcdf.getChunkCache reads the process default chunk cache settings used by the netCDF C library.

These settings affect chunked netCDF-4 variable access.

## 💡 Example

Copy-paste example for netcdf.getChunkCache.

```matlab
[cacheSize, nelems, preemption] = netcdf.getChunkCache()
```

## 🔗 See also

[netcdf.setChunkCache](../netcdf/netcdf.setChunkCache.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
