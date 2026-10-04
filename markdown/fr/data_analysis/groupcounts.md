# groupcounts

Compte les groupes.

## 📝 Syntaxe

- counts = groupcounts(A)
- [counts, groups] = groupcounts(A)
- G = groupcounts(T, groupVars)

## 📥 Argument d'entrée

- A - Tableau d'entree.
- T - Table d'entree.
- groupVars - Variables de groupement.

## 📤 Argument de sortie

- counts - Nombre d'elements dans chaque groupe.
- groups - Valeurs de groupe uniques.
- G - Table contenant les groupes, les comptes et les pourcentages.

## 📄 Description

<b>groupcounts</b> compte le nombre d'elements ou de lignes de table dans chaque groupe.

## 💡 Exemple

```matlab
[counts, groups] = groupcounts([1; 1; 2; 3; 3; 3])
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
C = groupcounts(T, 'G')
```

## 🔗 Voir aussi

[groupsummary](../data_analysis/groupsummary.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
