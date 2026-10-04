# nelson.mixin.util.PropertyGroup

Un groupe titré de propriétés pour l'affichage personnalisé d'objets.

## 📝 Syntaxe

- g = nelson.mixin.util.PropertyGroup(propertyList)
- g = nelson.mixin.util.PropertyGroup(propertyList, title)

## 📥 Argument d'entrée

- propertyList - tableau de cellules de noms de propriétés.
- title - titre optionnel du groupe (char ou string).

## 📤 Argument de sortie

- g - un nelson.mixin.util.PropertyGroup scalaire.

## 📄 Description

<b>nelson.mixin.util.PropertyGroup</b> regroupe des propriétés d'objet pour l'affichage. Une méthode <b>getPropertyGroups</b> d'une sous-classe <b>nelson.mixin.CustomDisplay</b> renvoie un tableau de groupes de propriétés, chacun affiché avec son titre suivi de ses propriétés.

Propriétés : <b>Title</b>, <b>PropertyList</b> et <b>NumProperties</b> (en lecture seule).

## 💡 Exemple

Créer un groupe de propriétés.

```matlab
g = nelson.mixin.util.PropertyGroup({'X', 'Y'}, 'Coordinates');
g.Title
g.NumProperties
```

## 🔗 Voir aussi

[nelson.mixin.CustomDisplay](../handle/nelson.mixin.CustomDisplay.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
