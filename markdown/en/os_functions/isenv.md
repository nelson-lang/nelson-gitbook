# isenv

Determine if an environment variable exists.

## 📝 Syntax

- tf = isenv(env\_name)

## 📥 Input argument

- env\_name - string scalar, character vector, string array, cell array of character vectors: environment variable name.

## 📤 Output argument

- tf - logical: true if the environment variable is defined, false otherwise.

## 📄 Description


<b>isenv</b> returns <b>true</b> if the environment variable <b>env\_name</b> is defined in the current process environment, even when its value is empty. 

If <b>env\_name</b> is a nonscalar string array or cell array of character vectors, then <b>tf</b> has the same dimensions as <b>env\_name</b>.

## 💡 Example



```matlab
setenv('MY_ENV_VAR', 'funvalue')
isenv('MY_ENV_VAR')
isenv('A_VARIABLE_THAT_DOES_NOT_EXIST')
isenv(["MY_ENV_VAR", "A_VARIABLE_THAT_DOES_NOT_EXIST"])

```


## 🔗 See also

[getenv](../os_functions/getenv.md), [setenv](../os_functions/setenv.md), [unsetenv](../os_functions/unsetenv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
