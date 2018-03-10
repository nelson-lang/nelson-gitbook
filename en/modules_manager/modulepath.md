

# modulepath

Returns path of a module.

## Syntax

- p = modulepath(module_short_name)
- p = modulepath(module_path, module_short_name, option)

## Input argument

 - module_path - a string: existing path.
 - module_short_name - a string: short module's name.
 - option - a string: 'etc', 'bin', 'root', 'builtin'.

## Output argument

 - p - a string: path or subpath of the module.

## Description


  <p><b>modulepath</b> is an helper's function to return module root path or a subdirectory.</p>


## Example

```matlab
modulepath('core')
modulepath(nelsonroot(),'core','etc')
modulepath(nelsonroot(),'core','bin')
modulepath(nelsonroot(),'core','root')
modulepath(nelsonroot(),'core','builtin')
```

## See also

[requiremodule](requiremodule.md), [getmodules](getmodules.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



