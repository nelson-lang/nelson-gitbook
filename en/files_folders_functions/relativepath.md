

# relativepath

Returns the relative path from an actual path to the target path.

## Syntax

- r = relativepath(path_1, path_2)

## Input argument

 - path_1 - a string: file or directory.
 - path_2 - a string: file or directory.

## Output argument

 - r - a string: relative path.

## Description


  <p>Returns the relative path from an actual path to the target path.</p>


## Example

```matlab
relativepath(nelsonroot(), [nelsonroot(), '/COPYING.LGPLv2.1'])
relativepath(nelsonroot(), [nelsonroot(), '/etc/finish.nls'])
relativepath([nelsonroot(),'/bin'], [nelsonroot(), '/COPYING.LGPLv2.1'])
relativepath('.', '.')
relativepath('.', '..')
relativepath('..', '.')
```

## See also

[cd](cd.md), [dir](dir.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



