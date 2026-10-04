# gcf

Récupère l'objet figure courant.

## 📝 Syntaxe

- cf = gcf()

## 📤 Argument de sortie

- cf - Un objet graphique : objet figure graphique.

## 📄 Description

<b>cf = gcf()</b> retourne l'objet figure graphique courant.

Si aucune figure n'existe, <b>gcf()</b> crée une figure et retourne son objet graphique.

## 💡 Exemple

```matlab
cf = gcf();
root = groot();
isequal(root.CurrentFigure, cf)
```

## 🔗 Voir aussi

[figure](../../../graphics/2_graphics_objects/1_object_management/figure.md), [groot](../../../graphics/2_graphics_objects/1_object_management/groot.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
