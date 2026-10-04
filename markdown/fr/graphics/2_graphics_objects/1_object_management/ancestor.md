# ancestor

Ancêtre d'un objet graphique.

## 📝 Syntaxe

- p = ancestor(h, type)
- p = ancestor(h, type, 'toplevel')

## 📥 Argument d'entrée

- h - objet graphique
- type - un vecteur ligne de caractères ou une cellule de chaînes :
- 'toplevel' - un vecteur ligne de caractères : retourne le parent le plus haut dans la hiérarchie d'objets qui correspond à la condition.

## 📤 Argument de sortie

- p - un objet graphique ou []

## 📄 Description

<b>ancestor</b> retourne le handle de l'ancêtre d'un objet spécifié d'un type donné.

## 💡 Exemple

```matlab
f = figure();
ax = gca();
s = surf(peaks);
AX = ancestor(s, 'axes')
F = ancestor(s, 'figure')
R = ancestor(s, 'root')
```

## 🔗 Voir aussi

[gcf](../../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
