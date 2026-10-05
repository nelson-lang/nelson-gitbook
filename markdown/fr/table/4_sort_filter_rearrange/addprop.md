# addprop

Ajoute une propriete personnalisee a une table.

## 📝 Syntaxe

- TB = addprop(TA, name, type)

## 📥 Argument d'entrée

- TA - Table d'entree.
- name - Nom de la propriete personnalisee.
- type - Type de propriete personnalisee : <b>'table'</b> ou <b>'variable'</b>.

## 📤 Argument de sortie

- TB - Table avec propriete personnalisee ajoutee.

## 📄 Description


<b>addprop</b> ajoute une propriete personnalisee dans <b>T.Properties.CustomProperties</b>. Le type suit les proprietes personnalisees de table: <b>'table'</b> ou <b>'variable'</b>.

## 💡 Exemple

Ajouter une propriete personnalisee

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addprop(T, 'Source', 'table');
T.Properties.CustomProperties.Source = 'demo';
T.Properties.CustomProperties.Source
```


## 🔗 Voir aussi

[rmprop](../../table/4_sort_filter_rearrange/rmprop.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
