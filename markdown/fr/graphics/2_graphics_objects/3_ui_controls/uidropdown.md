# uidropdown

Crée une liste déroulante.

## 📝 Syntaxe

- h = uidropdown()
- h = uidropdown(parent)
- h = uidropdown(..., propertyName, propertyValue)

## 📥 Argument d'entrée

- parent - conteneur parent.
- propertyName, propertyValue - paires nom-valeur.

## 📤 Argument de sortie

- h - objet composant UI.

## 📄 Description


<b>dd = uidropdown</b> crée une liste déroulante. <b>Items</b> contient les entrées affichées ; <b>ItemsData</b> associe optionnellement une valeur de données retournée par <b>Value</b>. <b>ValueIndex</b> est l'indice (base 1) de la sélection. <b>Editable</b> 'on' permet la saisie libre. Callback <b>ValueChangedFcn</b> (event : <b>Value</b>, <b>PreviousValue</b>, <b>Edited</b>, <b>ValueIndex</b>, <b>PreviousValueIndex</b>).

## 💡 Exemples

Capture du composant UI pour l'image d'aide.

```matlab
f = uifigure('Visible', 'off', 'Name', 'Drop down', 'Position', [100 100 420 260]);
dd = uidropdown(f, 'Items', {'Small', 'Medium', 'Large'}, 'Position', [125 115 170 24]);
dd.Value = 'Medium';
drawnow();
```
<img src="uidropdown_example.svg" align="middle"/>
uidropdown

```matlab

f = uifigure();
dd = uidropdown(f, 'Items', {'Rouge', 'Vert', 'Bleu'}, 'ItemsData', [1 2 3]);
dd.Value = 2;

```


## 🔗 Voir aussi

[uifigure](../../../gui/uifigure.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
