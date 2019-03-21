

# isnh5file

Checks if filename a valid .nh5 file

## Syntax

- tf = isnh5file(filename)

## Input argument

 - filename - a string: .nh5 filename.

## Output argument

 - tf - a logical: true if it is a valid .nh5 file.

## Description


  <p><b>isnh5file</b> checks if filename a valid .nh5 file.</p>


## Example

```matlab
A = ones(3, 4);
savemat([tempdir(), '/example_isnh5.mat'], 'A')
R = isnh5file([tempdir(), '/example_isnh5.mat'])
h5save([tempdir(), '/example_isnh5.nh5'], 'A')
R = isnh5file([tempdir(), '/example_isnh5.nh5'])
```

## See also

[ismatfile](../matio/ismatfile.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



