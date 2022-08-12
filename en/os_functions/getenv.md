# getenv

Get the value of an environment variable.

## Syntax

- s = getenv(env_name)

## Input argument

- env_name - a string: environment variable name.

## Output argument

- s - a string: the environment variable value.

## Description

  <p><b>getenv</b> returns the value of an environment variable if it exists.</p>
  <p>If the environment variable does not exist, it will return ''.</p>

## Example

```matlab
getenv('OS')
getenv('myenvvar')
```

## See also

[setenv](setenv.md), [searchenv](searchenv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
