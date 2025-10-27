# str2func

Renvoie un function handle à partir d'une chaîne.

## 📝 Syntaxe

- func_handle = str2func(str)

## 📥 Argument d'entrée

- str - a string

## 📤 Argument de sortie

- func_handle - un function handle.

## 📄 Description

<b>function_handle = str2func(str)</b> renvoie un function handle <b>function_handle</b> pour la fonction nommée dans la chaîne <b>str</b>

<b>str</b> nom de fonction ou représentation d'une fonction anonyme.

## 💡 Exemples

```matlab
fh = str2func('cos')
str = func2str(fh)
```

```matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
```

## 🔗 Voir aussi

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
