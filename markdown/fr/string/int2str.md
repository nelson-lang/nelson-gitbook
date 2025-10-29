# int2str

Convertit un tableau d'entiers en chaîne

## 📝 Syntaxe

- res = int2str(var)

## 📥 Argument d'entrée

- var - un tableau numérique.

## 📤 Argument de sortie

- res - une chaîne

## 📄 Description

<b>int2str</b> convert un tableau numérique en chaîne au format entier. Les entrées sont arrondies avant la conversion.

## 💡 Exemples

```matlab
R = int2str ([-Inf, 2, NaN; 4, Inf, 6])
```

```matlab
R = int2str(uint64(intmax('uint64')))
```

## 🔗 Voir aussi

[char](../string/char.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
