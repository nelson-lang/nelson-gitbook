

# buildhelpmd

Build help of Nelson's modules for GitBook.

## Syntax

- buildhelpmd(dirdest)
- buildhelpmd(dirdest, module_name)

## Input argument

 - dirdest - a string: a path destination.
 - module_name - a string: module name (module must be loaded).

## Description


  <p><b>buildhelpmd</b> generates help files for GitBook (markdown).</p>


## Example

```matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
```

## See also

[buildhelp](buildhelp.md), [doc](../help_browser/doc.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



