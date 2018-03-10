

# varunlock

Unlocks a variable.

## Syntax

- varunlock(scope, variable_name)

## Input argument

 - scope - a string: 'global', 'base', 'caller', 'local'.
 - variable_name - a string: variable name.

## Description


  <p><b>varunlock</b> unlocks a variable.</p>


## Example

```matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4
varlock('local', 'ans')
varislock('local', 'ans')
```

## See also

[varislock](varislock.md), [varlock](varlock.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



