# regexptranslate

Traduit du texte en expression reguliere.

## 📝 Syntaxe

- newStr = regexptranslate(op, str)
- newStr = regexptranslate('flexible', str, expression)

## 📥 Argument d'entrée

- op - 'escape', 'wildcard' ou 'flexible'.
- str - texte a traduire.

## 📤 Argument de sortie

- newStr - texte traduit.

## 📄 Description

<b>regexptranslate</b> echappe les caracteres speciaux ou traduit les jokers en syntaxe d'expression reguliere.

## 💡 Exemple

```matlab

regexptranslate('escape', 'a+b*c?.m')
regexptranslate('wildcard', '*.m')

```

## 🔗 Voir aussi

[regexp](../string/regexp.md), [regexprep](../string/regexprep.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
