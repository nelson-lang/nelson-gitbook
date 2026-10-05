# setenv

Set or remove an environment variable.

## 📝 Syntax

- setenv(env\_name, env\_value)
- setenv(env\_name)

## 📥 Input argument

- env\_name - a string: environment variable name.
- env\_value - a string: environment variable value.

## 📄 Description


<b>setenv</b> sets the value of an environment variable. 

<b>setenv(env\_name)</b> removes the variable from the current process environment. 

<b>setenv(env\_name, '')</b> keeps the variable defined with an empty value.

## 💡 Example



```matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR')
getenv('MY_ENV_VAR')
```


## 🔗 See also

[getenv](../os_functions/getenv.md), [searchenv](../os_functions/searchenv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | environment variable removal added |

<!--
## 👤 Author

Allan CORNET
-->
