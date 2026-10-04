# netcdf.setChunkCache

Set default chunk cache settings for the netCDF library.

## 📝 Syntax

- netcdf.setChunkCache(size, nelems, preemption)

## 📥 Input argument

- size - Cache size in bytes.
- nelems - Number of cache elements.
- preemption - Preemption policy value between 0 and 1.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

netcdf.setChunkCache changes the default chunk cache settings for later operations.

Existing open variables may keep their current cache settings.

## 💡 Example

Copy-paste example for netcdf.setChunkCache.

```matlab
[cacheSize, nelems, preemption] = netcdf.getChunkCache();
netcdf.setChunkCache(cacheSize, nelems, preemption);
[cacheSize2, nelems2, preemption2] = netcdf.getChunkCache()
```

## 🔗 See also

[netcdf.getChunkCache](../netcdf/netcdf.getChunkCache.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
