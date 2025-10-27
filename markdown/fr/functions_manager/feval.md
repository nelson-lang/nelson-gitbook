# feval

Évalue une fonction.

## 📝 Syntaxe

- feval(function_name; x1, ..., xn)
- feval(function_handle; x1, ..., xn)
- [r1, ..., rn] = feval(function_name, x1, ..., xn)
- [r1, ..., rn] = feval(function_handle, x1, ..., xn)

## 📥 Argument d'entrée

- function_name - une chaîne : nom de fonction.
- function_handle - un handle de fonction.
- x1, ..., xn - arguments d'entrée de la fonction.

## 📤 Argument de sortie

- r1, ..., rn - arguments de sortie retournés par la fonction

## 📄 Description

<b>feval</b> appelle la fonction de base ou la fonction intégrée décrite par son nom ou handle de fonction et arguments d'entrée.

## 💡 Exemple

```matlab
a = feval('cos', 0)
b = feval(str2func('cos'), 0)
```

## 🔗 Voir aussi

[builtin](../functions_manager/builtin.md), [func2str](../function_handle/func2str.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
