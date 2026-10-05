# func2str

Renvoie une représentation chaîne d'un function handle.

## 📝 Syntaxe

- func\_handle = str2func(str)

## 📥 Argument d'entrée

- str - a string.

## 📤 Argument de sortie

- func\_handle - un function handle

## 📄 Description


<b>func\_handle = str2func(str)</b> renvoie un function handle construit à partir de la chaîne <b>str</b>.

## 💡 Exemple



```matlab
fh = str2func('cos')
class(fh)
```


## 🔗 Voir aussi

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
