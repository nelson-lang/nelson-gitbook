# loadenv

Load environment variables defined in .env or regular text files.

## 📝 Syntax

- loadenv(filename)
- D = loadenv(filename)

## 📥 Input argument

- filename - string scalar, character vector: environment filename.

## 📤 Output argument

- s - dictionary: the environment variables and their values.

## 📄 Description

<b>loadenv(filename)</b> loads environment variables from a .env or plain text file by parsing one key-value pair per line and sets them as environment variables in the Nelson environment.

<b>D = loadenv(filename)</b> returns a dictionary containing the parsed key-value pairs. When an output argument is specified, loadenv does not modify the Nelson environment.

## 💡 Example

```matlab
env_file = [modulepath('os_functions', 'tests'), '/sample.env'];
D = loadenv(env_file)
getenv('Key1')
loadenv(env_file)
getenv('Key1')
```

## 🔗 See also

[setenv](../os_functions/setenv.md), [getenv](../os_functions/getenv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
