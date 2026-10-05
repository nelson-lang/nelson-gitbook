# addvars

Ajoute des variables a une table ou a une timetable.

## 📝 Syntaxe

- TB = addvars(TA, X)
- TB = addvars(TA, X1, ... , XN, 'NewVariableNames', names)
- TB = addvars(TA, X, 'Before', varName)
- TB = addvars(TA, X, 'After', varName)

## 📥 Argument d'entrée

- TA - Table ou timetable d'entree.
- X, X1, ... , XN - Donnees de variables a ajouter. Chaque variable doit avoir le meme nombre de lignes que <b>TA</b>.
- names - Noms des nouvelles variables.
- varName - Variable de reference utilisee avec <b>Before</b> ou <b>After</b>.

## 📤 Argument de sortie

- TB - Table ou timetable avec variables ajoutees.

## 📄 Description


<b>addvars</b> ajoute une ou plusieurs variables et met a jour <b>T.Properties.VariableNames</b>. 

Les nouvelles variables sont ajoutees a la fin par defaut. Utilisez <b>Before</b> ou <b>After</b> pour choisir la position. 

Pour une timetable, les temps des lignes et les proprietes de la timetable sont conserves.

## 💡 Exemples

Ajouter une variable a la fin d'une table

```matlab
T = table([1; 2], 'VariableNames', {'A'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'})
```
Ajouter une variable avant une variable existante

```matlab
T = table([1; 2], [5; 6], 'VariableNames', {'A', 'C'});
T = addvars(T, [3; 4], 'NewVariableNames', {'B'}, 'Before', 'C')
```


## 🔗 Voir aussi

[table](../../table/1_create_convert_tables/table.md), [movevars](../../table/4_sort_filter_rearrange/movevars.md), [removevars](../../table/4_sort_filter_rearrange/removevars.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
