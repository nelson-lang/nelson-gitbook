# ismatfile

Checks if filename a valid .mat file

## Syntax

- [tf, ver, header] = ismatfile(filename)

## Input argument

- filename - a string: .mat filename.

## Output argument

- tf - a logical: true if it is a valid .mat file.
- ver - a string array: version of .mat file ("-v7.3", "-v7" or "-v6").
- header - a string array: header of .mat file (date).

## Description

<p>
            <b>ismatfile</b> checks if filename a valid .mat file.</p>

## Bibliography

Thanks to MATIO library (http://sourceforge.net/projects/matio/).

## Example

```matlab
A = ones(3, 4);
savemat([tempdir(), 'example_loadmat-v7.3.mat'], 'A', '-v7.3')
savemat([tempdir(), 'example_loadmat-v7.mat'], 'A', '-v7')
savemat([tempdir(), 'example_loadmat-v6.mat'], 'A', '-v6')
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v7.3.mat'])
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v7.mat'])
[tf, ver] = ismatfile([tempdir(), 'example_loadmat-v6.mat'])
[tf, ver, header] = ismatfile([tempdir(), 'example_not_existing.mat'])

```

## See also

[isnh5file](../hdf5/isnh5file.md), [loadmat](../matio/loadmat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
