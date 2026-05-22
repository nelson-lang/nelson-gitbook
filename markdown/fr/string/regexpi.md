# regexpi

Recherche par expression reguliere sans tenir compte de la casse.

## 📝 Syntaxe

- out = regexpi(str, expression)
- out = regexpi(str, expression, outkey)

## 📥 Argument d'entrée

- str - texte a analyser.
- expression - expression reguliere.

## 📤 Argument de sortie

- out - resultat de la recherche.

## 📄 Description

<b>regexpi</b> est equivalent a <b>regexp</b> avec la recherche insensible a la casse par defaut.

## 💡 Exemple

```matlab

regexpi('ABC abc', 'abc', 'match')

```

## 🔗 Voir aussi

[regexp](../string/regexp.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
