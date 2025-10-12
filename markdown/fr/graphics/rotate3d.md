# rotate3d

Activer le mode rotation.

## Syntaxe

- rotate3d
- rotate3d option
- rotate3d(fig, ...)
- rotate3d(ax, ...)

## Argument d'entrée

- option - Chaîne de caractères : 'on', 'off' ou 'toggle'.
- fig - Objet figure : figure cible
- ax - Valeur scalaire d'objet graphique : conteneur parent, spécifié comme axes.

## Description

<p>Utilisez le mode rotation pour faire pivoter de façon interactive la vue 3D des axes lors de l'exploration des données. Activez ou désactivez le mode rotation et configurez des options de base supplémentaires avec la fonction rotate3d.</p>

<p>rotate3d option établit le mode rotation pour tous les axes de la figure courante. Par exemple, rotate3d on active le mode rotation, tandis que rotate3d off le désactive.</p>

<p></p>

<p>Lorsque le mode rotation est activé, vous pouvez ajuster la vue des axes avec le curseur ou le clavier :</p>

<p></p>

<p>Curseur : cliquez et faites glisser dans les axes.</p>

<p>Clavier : utilisez les flèches droite (→) ou gauche (←) pour ajuster l'azimut, et les flèches haut (↑) ou bas (↓) pour modifier l'élévation.</p>

## Exemple

```matlab
surf(peaks)
rotate3d
```

## Voir aussi

[zoom](../graphics/zoom.md), [pan](../graphics/pan.md), [view](../graphics/view.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.2.0   | version initiale |

## Auteur

Allan CORNET
