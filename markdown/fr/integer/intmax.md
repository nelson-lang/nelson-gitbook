# intmax

Renvoie le plus grand entier pouvant être représenté pour un type entier.

## 📝 Syntaxe

- imax = intmax()
- imax = intmax(classname)

## 📥 Argument d'entrée

- classname - une chaîne : par défaut : int32

## 📤 Argument de sortie

- imax - le plus grand entier

## 📄 Description

<b>imax = intmax(classname)</b> le plus grand entier pouvant être représenté pour un type entier.

Les valeurs prises en charge pour la chaîne <b>classname</b> sont :

'int8'

'uint8'

'int16'

'uint16'

'int32'

'uint32'

'int64'

'uint64'

## 💡 Exemples

```matlab
A = intmax('int64')
res = class(A)
```

```matlab
A = intmax('uint32')
res = class(C)
```

## 🔗 Voir aussi

[intmin](../integer/intmin.md), [class](../type/class.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
