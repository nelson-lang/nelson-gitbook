# movevars

Deplace des variables dans une table.

## 📝 Syntaxe

- TB = movevars(TA, vars, 'Before', location)
- TB = movevars(TA, vars, 'After', location)
- TB = movevars(TA, vars, 'Before', ref)
- TB = movevars(TA, vars, 'After', ref)

## 📥 Argument d'entrée

- TA - Table d'entree.
- vars - Variables a deplacer, specifiees par noms, indices ou selecteurs logiques.
- ref - Variable de reference utilisee avec <b>Before</b> ou <b>After</b>.

## 📤 Argument de sortie

- TB - Table avec variables reordonnees.

## 📄 Description


<b>movevars</b> reordonne les variables d'une table sans changer leurs donnees. L'emplacement peut etre un nom de variable ou un indice de variable.

## 💡 Exemples

Deplacer une variable en premiere position

```matlab
T = table([1; 2], [3; 4], 'VariableNames', {'A', 'B'});
T = movevars(T, 'B', 'Before', 1)
```
Deplacer une variable apres une autre variable

```matlab
T = table([1; 2], [3; 4], [5; 6], 'VariableNames', {'A', 'B', 'C'});
T = movevars(T, 'A', 'After', 'C')
```


## 🔗 Voir aussi

[table](../../table/1_create_convert_tables/table.md), [addvars](../../table/4_sort_filter_rearrange/addvars.md), [renamevars](../../table/4_sort_filter_rearrange/renamevars.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
