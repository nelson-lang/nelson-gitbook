# regexprep

Remplace du texte avec une expression reguliere.

## 📝 Syntaxe

- newStr = regexprep(str, expression, replace)
- newStr = regexprep(..., option)

## 📥 Argument d'entrée

- str - texte d'entree.
- expression - expression reguliere.
- replace - texte de remplacement. Les jetons $1 et $& sont acceptes.

## 📤 Argument de sortie

- newStr - texte apres remplacement.

## 📄 Description

<b>regexprep</b> remplace les occurrences trouvees par une expression reguliere.

## 💡 Exemple

```matlab

regexprep('a1 b2', '(\w)(\d)', '$2-$1')

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
