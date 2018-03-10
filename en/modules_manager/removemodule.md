

# removemodule

remove a module from Nelson.

## Syntax

- removemodule(module_short_name)

## Input argument

 - module_short_name - a string: short module's name.

## Description


  <p><b>removemodule</b> remove a module designed by his short name.</p>


## Example

See module skeleton for example
```matlab
ismodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
removemodule('module_skeleton')
ismodule('module_skeleton')
```

## See also

[ismodule](ismodule.md), [addmodule](removemodule.md), [getmodules](getmodules.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



