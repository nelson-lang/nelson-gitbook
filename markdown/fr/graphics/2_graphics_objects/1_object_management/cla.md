# cla

Efface les axes.

## 📝 Syntaxe

- cla
- cla(ax)
- ca = cla(...)

## 📥 Argument d'entrée

- ax - un objet graphique scalaire sur des axes existants.

## 📤 Argument de sortie

- ca - un objet graphique : objet axes utilisé.

## 📄 Description


<b>cla</b> efface les axes courants.

## 💡 Exemple



```matlab
f = figure();
x = linspace(0, 2*pi);
y = sin(3 * x);
plot(x, y)
sleep(5)
cla
```


## 🔗 Voir aussi

[gca](../../../graphics/2_graphics_objects/1_object_management/gca.md), [clf](../../../graphics/2_graphics_objects/1_object_management/clf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
