

# isfile

Returns true is the input argument is a file.

## Syntax

- r = isfile(name)

## Input argument

 - name - a string: filename to check.

## Output argument

 - r - a logical: true if it is a file.

## Description


  <p><b>isfile(name)</b> returns <b>true</b> if <b>name</b> is a file.</p>


## Example

```matlab
isfile(nelsonroot())
isfile([nelsonroot(), '/etc/finish.nls'])
```

## See also

[mkdir](mkdir.md), [isfolder](isfolder.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



