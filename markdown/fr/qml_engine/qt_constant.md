# qt_constant

Renvoie la valeur d'une constante Qt.

## 📝 Syntaxe

- v = qt_constant(constant_name)
- ce = qt_constant()

## 📥 Argument d'entrée

- constant_name - une chaîne : constante Qt souhaitée.

## 📤 Argument de sortie

- v - un entier scalaire (valeur de la constante Qt).
- ce - une cellule contenant tous les noms de constantes disponibles.

## 📄 Description

<b>v = qt_constant(constant_name)</b> renvoie la valeur d'une constante Qt.

La famille Qt 5 permet d'obtenir facilement une constante avec qml_evaluatestring(constant_name), mais ce mécanisme n'est plus disponible avec Qt 6.

## 💡 Exemple

```matlab
qt_constant('Qt.WindowModal')
c = qt_constant()
```

## 🔗 Voir aussi

[qt_version](../qml_engine/qt_version.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
