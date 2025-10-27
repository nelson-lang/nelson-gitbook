# parsestring

Analyser une chaîne.

## 📝 Syntaxe

- status = parsestring(str)

## 📥 Argument d'entrée

- str - une chaîne : une chaîne à analyser.

## 📤 Argument de sortie

- status - une chaîne : 'script', 'function', 'error'.

## 📄 Description

<b>parsestring</b> analyse une chaîne et renvoie si c'est un script valide, une fonction valide ou une erreur.

## 💡 Exemple

```matlab
parsestring('1 + 1')
parsestring('1 +++ 1')
parsestring('1 +*+ 1')
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
