

# getmodules

Returns list of modules loaded in Nelson.

## Syntax

- modules_name = getmodules()
- [modules_name, modules_root_path] = getmodules()

## Output argument

 - modules_name - a cell of strings: modules names.
 - modules_root_path - a cell of strings: path of modules.

## Description


  <p><b>getmodules</b> returns list of modules loaded in Nelson.</p>


## Example

```Nelson
[modules_name, modules_root_path] = getmodules()
```

## See also

[requiremodule](requiremodule.md), [ismodule](ismodule.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



