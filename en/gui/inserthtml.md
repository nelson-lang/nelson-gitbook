

# inserthtml

Insert html in GUI console.

## Syntax

- inserthtml(html_txt)

## Input argument

 - html_txt - a string: html text

## Description


  <p><b>inserthtml</b> inserts html code in GUI console.</p>


## Example

```Nelson
inserthtml(markdown(fileread([nelsonroot(),'/CHANGELOG.md'])))
```

## See also

[markdown](../help_tools/markdown.md), [fileread](../stream_manager/fileread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



