



ismodule


ismodule

Checks if a module is loaded.

## Syntax

- state = ismodule(module_short_name)

## Input argument

 - module_short_name - a string: short module's name to test.

## Output argument

 - state - a logical.

## Description


  <p><b>ismodule</b> returns <b>true</b> if module is loaded otherwise <b>false</b>.</p>


## Example

```Nelson
ismodule('core')
ismodule('mymodule')
```

## See also

requiremodule.md requiremodule, getmodules.md getmodules.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



