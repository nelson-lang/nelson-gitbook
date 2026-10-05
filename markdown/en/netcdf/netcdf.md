# netcdf

Low-level NetCDF package interface.

## 📝 Syntax

- netcdf.method(...)
- netcdf.getConstant(name)

## 📥 Input argument

- method - name of a static low-level NetCDF operation.
- name - constant name accepted by getConstant.

## 📤 Output argument

- varargout - outputs returned by the selected low-level operation.

## 📄 Description


netcdf is a class that groups low-level NetCDF operations as static methods. 

Use the high-level ncinfo, ncread, ncwrite, and related functions when they fit the task.

## Used function(s)


    NetCDF C library
  

## 💡 Example

Query the linked NetCDF library version.

```matlab
versionText = netcdf.inqLibVers()
```


## 🔗 See also

[ncinfo](../netcdf/ncinfo.md), [ncread](../netcdf/ncread.md), [ncwrite](../netcdf/ncwrite.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
