

# COM_xlsread

Read Microsoft Excel spreadsheet file using COM.

## Syntax

- numeric_data = COM_xlsread(filename)
- numeric_data = COM_xlsread(filename, sheet)
- numeric_data = COM_xlsread(filename, range)
- numeric_data = COM_xlsread(filename, sheet, range)
- numeric_data = COM_xlsread(filename, sheet, range)
- [numeric_data, txt_data, raw_data] = COM_xlsread(filename)
- [numeric_data, txt_data, raw_data] = COM_xlsread(filename, sheet)
- [numeric_data, txt_data, raw_data] = COM_xlsread(filename, range)
- [numeric_data, txt_data, raw_data] = COM_xlsread(filename, sheet, range)
- [numeric_data, txt_data, raw_data] = COM_xlsread(filename, sheet, range)

## Input argument

 - filename - a string: an existing filename.
 - sheet - an integer or a string: sheet id or sheet name
 - range - an string: an range xx:xx

## Output argument

 - numeric_data - a matrix or vector: string data converted to double.
 - txt_data - a cell of strings with only strings.
 - raw_data - a cell of strings: raw data without conversion.

## Description


  <description><b>COM_xlsread</b> read Microsoft Excel spreadsheet file using COM.</description>


## Example

```matlab
data = {'Time', 'Temp'; 12 98; 13 99; Inf 97};
s = COM_xlswrite([tempdir(), '/example_xlswrite_2.xlsx'], data, 'Temperatures');
[numeric_data, txt_data, raw_data] = COM_xlsread([tempdir(), '/example_xlswrite_2.xlsx'])
```

## See also

[COM_xlswrite](COM_xlswrite.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



