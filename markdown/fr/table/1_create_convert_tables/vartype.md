# vartype

Selectionne des variables de table par type.

## 📝 Syntaxe

- S = vartype(typeName)

## 📥 Argument d'entrée

- typeName - Nom de classe utilise pour selectionner les variables.

## 📤 Argument de sortie

- S - Selecteur de type de variable.

## 📄 Description


<b>vartype</b> cree un selecteur utilisable par des fonctions de table comme <b>varfun</b> et <b>convertvars</b>.

## 💡 Exemple



```matlab
T = table([1; 2], {'a'; 'b'}, 'VariableNames', {'A', 'B'});
R = varfun(@mean, T, 'InputVariables', vartype('double'))
```


## 🔗 Voir aussi

[varfun](../../table/7_apply_functions/varfun.md), [convertvars](../../table/1_create_convert_tables/convertvars.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
