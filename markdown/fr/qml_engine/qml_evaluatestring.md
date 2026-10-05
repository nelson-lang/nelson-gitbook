# qml\_evaluatestring

Évalue une chaîne JS.

## 📝 Syntaxe

- r = qml\_evaluatestring(string\_to\_eval)

## 📥 Argument d'entrée

- string\_to\_eval - une chaîne : code JS.

## 📤 Argument de sortie

- r - a double, logical, int ou string.

## 📄 Description


Évalue une chaîne JS. 

Si la valeur retournée ne peut pas être convertie en type de base, elle sera convertie en chaîne.

## 💡 Exemple



```matlab
qml_evaluatestring('a = 2 + 4')
```


## 🔗 Voir aussi

[qml_evaluatefile](../qml_engine/qml_evaluatefile.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
