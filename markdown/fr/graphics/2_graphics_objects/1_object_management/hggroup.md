# hggroup

Créer un objet groupe.

## 📝 Syntaxe

- h = hggroup()
- h = hggroup(..., propertyName, propertyValue, ...)
- h = hggroup(ax, ...)

## 📥 Argument d'entrée

- ax - Objet graphique : axes ou hggroup.
- propertyName - Une chaîne scalaire ou un vecteur ligne de caractères.
- propertyValue - Une valeur.

## 📤 Argument de sortie

- p - Un objet graphique de type : hggroup

## 📄 Description

<b>hggroup</b> crée un objet hggroup comme enfant des axes courants et retourne son handle, h.

L'objet <b>hggroup</b> est utilisé pour regrouper des objets graphiques, tels que des lignes, des patches et du texte, afin qu'ils puissent être manipulés ensemble.

Voir [proprietes de hggroup](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.md) pour la liste complete des proprietes.

## 💡 Exemple

```matlab
figure();
ax = gca();
g = hggroup();
h = text(0.1, 0.1, 'tttt', 'Parent', g);
h.Parent
h.Visible
h.Visible = 'off';

```

## 🔗 Voir aussi

[proprietes de hggroup](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.hggroup.properties.md), [gca](../../../graphics/2_graphics_objects/1_object_management/gca.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
