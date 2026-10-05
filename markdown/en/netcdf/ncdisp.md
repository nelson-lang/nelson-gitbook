# ncdisp

Display a readable summary of a netCDF data source.

## 📝 Syntax

- ncdisp(filename)
- ncdisp(filename, location)
- ncdisp(filename, location, mode)

## 📥 Input argument

- filename - Path of the netCDF data source.
- location - Optional group or variable location to display.
- mode - Optional display mode.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description


ncdisp prints a human-readable summary of the netCDF source in the command window. 

Use ncinfo when the metadata must be consumed by code.

## 💡 Example

Copy-paste example for ncdisp.

```matlab
filename = [tempdir(), 'help_ncdisp.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
ncwrite(filename, 'temperature', [1 2 3]);
ncdisp(filename)
```


## 🔗 See also

[ncinfo](../netcdf/ncinfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
