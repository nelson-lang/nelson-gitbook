# groupsummary

Calcule des resumes groupes de table.

## 📝 Syntaxe

- G = groupsummary(T, groupVars)
- G = groupsummary(T, groupVars, method, dataVars)

## 📥 Argument d'entrée

- T - Table d'entree.
- groupVars - Variables de groupement.
- method - Methode de resume comme sum, mean, min, max ou count.
- dataVars - Variables a resumer.

## 📤 Argument de sortie

- G - Table de resume groupe.

## 📄 Description

<b>groupsummary</b> groupe les lignes de table et calcule des resumes sur les variables selectionnees.

## 💡 Exemple

```matlab
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
G = groupsummary(T, 'G', 'sum', 'X')
```

## 🔗 Voir aussi

[groupcounts](../data_analysis/groupcounts.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
