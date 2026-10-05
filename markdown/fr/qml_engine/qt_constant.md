# qt\_constant

Renvoie la valeur d'une constante Qt.

## 📝 Syntaxe

- v = qt\_constant(constant\_name)
- ce = qt\_constant()

## 📥 Argument d'entrée

- constant\_name - une chaîne : constante Qt souhaitée.

## 📤 Argument de sortie

- v - un entier scalaire (valeur de la constante Qt).
- ce - une cellule contenant tous les noms de constantes disponibles.

## 📄 Description


<b>v = qt\_constant(constant\_name)</b> renvoie la valeur d'une constante Qt.

## 💡 Exemple



```matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
```


## 🔗 Voir aussi

[qt_version](../qml_engine/qt_version.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
