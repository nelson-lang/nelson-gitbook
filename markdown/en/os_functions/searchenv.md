# searchenv

Searches for a file using environment paths.

## 📝 Syntax

- c = searchenv(filename, env_name)

## 📥 Input argument

- env_name - a string: environment variable name.
- filename - a string: filename searched in environment variable.

## 📤 Output argument

- c - a cell of strings: full paths found in environment variable.

## 📄 Description

<b>searchenv</b> Searches for a file using environment paths.

## 💡 Example

```matlab
[modules, paths] = getmodules();
env_value = '';
for p = paths
 env_value = [env_value, pathsep, p];
end

setenv('MY_PATH_ENV', env_value);
c = searchenv('loader.m', 'MY_PATH_ENV')
```

## 🔗 See also

[getenv](../os_functions/getenv.md), [setenv](../os_functions/setenv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
