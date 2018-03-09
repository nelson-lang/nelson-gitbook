

# searchenv

Searches for a file using environment paths.

## Syntax

- c = searchenv(filename, env_name)

## Input argument

 - env_name - a string: environment variable name.
 - filename - a string: filename searched in environment variable.

## Output argument

 - c - a cell of strings: full paths found in environment variable.

## Description


  <p><b>searchenv</b> Searches for a file using environment paths.</p>


## Example

```Nelson
[modules, paths] = getmodules();
env_value = '';
for p = paths
 env_value = [env_value, pathsep, p];
end

setenv('MY_PATH_ENV', env_value);
c = searchenv('loader.nls', 'MY_PATH_ENV')
```

## See also

[getenv](getenv.md), [setenv](setenv.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



