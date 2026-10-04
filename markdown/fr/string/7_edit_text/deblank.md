# deblank

Supprime les espaces en fin de chaîne.

## 📝 Syntaxe

- res = deblank(str)

## 📥 Argument d'entrée

- str - une chaîne, une cellule de chaînes ou un tableau de chaînes.

## 📤 Argument de sortie

- res - une chaîne sans espaces en fin.

## 📄 Description

<b>deblank</b> enlève les espaces en fin de chaîne.

<b>deblank</b> ne supprime pas tous les espaces significatifs (seuls les caractères ' \\t\\n\\r\\f\\v' sont supprimés).

## 💡 Exemples

```matlab
deblank(' Nel Son ')
```

```matlab
deblank(" Nel Son ")
```

```matlab
deblank([' Nel Son ', char(160)])
```

## 🔗 Voir aussi

[strtrim](../../string/strtrim.md), [toupper](../../string/toupper.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
