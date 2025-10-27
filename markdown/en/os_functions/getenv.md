# getenv

Get the value of an environment variable.

## 📝 Syntax

- s = getenv(env_name)

## 📥 Input argument

- env_name - string scalar, character vector, string array, cell array of character vectors: environment variable name.

## 📤 Output argument

- s - string scalar, character vector, string array, cell array of character vectors: the environment variable value.

## 📄 Description

<b>getenv</b> returns the value of an environment variable if it exists.

If the environment variable does not exist, it will return ''.

If <b>env_name</b> is a nonscalar cell array of character vectors or string array, then val has the same dimensions and type as <b>env_name</b>.

If <b>env_name</b> is a string scalar, then <b>s</b> is a character vector.

## 💡 Example

```matlab
getenv('OS')
getenv('myenvvar')
getenv(["PATH"; "OS"])
getenv({'PATH'; 'OS'})

```

## 🔗 See also

[setenv](../os_functions/setenv.md), [searchenv](../os_functions/searchenv.md).

## 🕔 History

| Version | 📄 Description                                        |
| ------- | ----------------------------------------------------- |
| 1.0.0   | initial version                                       |
| 1.4.0   | Retrieve the values of several environment variables. |

## 👤 Author

Allan CORNET
