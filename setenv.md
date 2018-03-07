



setenv


setenv

Set the value of an environment variable.

## Syntax

- getenv(env_name, env_value)

## Input argument

 - env_name - a string: environment variable name.
 - env_value - a string: environment variable value.

## Description


  <p><b>setenv</b> set the value of an environment variable.</p>


## Example

```Nelson
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
```

## See also

getenv.md getenv, searchenv.md searchenv.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



