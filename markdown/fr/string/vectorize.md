# vectorize

Insere des operateurs element par element dans une expression texte.

## 📝 Syntaxe

- s = vectorize(expr)

## 📥 Argument d'entrée

- expr - Expression sous forme de texte.

## 📤 Argument de sortie

- s - Expression vectorisee sous forme de texte.

## 📄 Description

<b>vectorize</b> prefixe les operateurs puissance, multiplication et division par des points lorsque necessaire.

## 💡 Exemple

```matlab
s = vectorize('x^2 + y*z')
```

## 🔗 Voir aussi

[str2func](../function_handle/str2func.md), [func2str](../function_handle/func2str.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
