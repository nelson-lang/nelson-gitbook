

# COM_xlswrite

Write Microsoft Excel spreadsheet file using COM.

## Syntax

- COM_xlswrite(filename, v)
- COM_xlswrite(filename, v, sheet)
- COM_xlswrite(filename, v, range)
- COM_xlswrite(filename, v, sheet, range)
- status = COM_xlswrite(filename, v)
- status = COM_xlswrite(filename, v, sheet)
- status = COM_xlswrite(filename, v, range)
- status = COM_xlswrite(filename, v, sheet, range)
- [status, msg] = COM_xlswrite(filename, v)
- [status, msg] = COM_xlswrite(filename, v, sheet)
- [status, msg] = COM_xlswrite(filename, v, range)
- [status, msg] = COM_xlswrite(filename, v, sheet, range)

## Input argument

 - filename - a string: a full filename path.
 - v - a string, cell, matrix: values to save.
 - sheet - an integer or a string: sheet id or sheet name
 - range - an string: an range xx:xx

## Output argument

 - status - a logical: true if save.
 - msg - a string: '' if no error or an error message.

## Description


  <p><b>COM_xlswrite</b> Writes Microsoft Excel spreadsheet file using COM.</p>
  <p>Inf is converted by Excel as 65535.</p>


## Examples

```matlab
COM_xlswrite([tempdir(), '/example_xlswrite_1.xlsx'], rand(3, 3))
```
```matlab
data = {'Time', 'Temp'; 12 98; 13 99; Inf 97};
s = COM_xlswrite([tempdir(), '/example_xlswrite_2.xlsx'], data, 'Temperatures');
```

## See also

[COM_xlsread](COM_xlsread.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



