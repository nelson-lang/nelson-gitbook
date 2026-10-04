# rmprop

Supprime une propriete personnalisee d'une table.

## 📝 Syntaxe

- TB = rmprop(TA, name)

## 📥 Argument d'entrée

- TA - Table d'entree.
- name - Nom de la propriete personnalisee.

## 📤 Argument de sortie

- TB - Table avec propriete personnalisee supprimee.

## 📄 Description

<b>rmprop</b> supprime une propriete personnalisee de <b>T.Properties.CustomProperties</b>.

## 💡 Exemple

Supprimer une propriete personnalisee

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T = rmprop(T, 'Source')
```

## 🔗 Voir aussi

[addprop](../../table/addprop.md), [table](../../table/table.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
