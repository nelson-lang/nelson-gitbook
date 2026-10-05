# outerjoin

Jointure externe de deux tables.

## 📝 Syntaxe

- T = outerjoin(left, right)
- T = outerjoin(left, right, 'Keys', keys)
- T = outerjoin(left, right, 'MergeKeys', true)
- T = outerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)

## 📥 Argument d'entrée

- left, right - Tables d'entree.
- keys - Noms des variables cles.
- leftVars, rightVars - Variables a conserver depuis les tables gauche et droite.

## 📤 Argument de sortie

- T - Table jointe.

## 📄 Description


<b>outerjoin</b> combine les lignes des deux tables et conserve les lignes non appariees selon le type de jointure.

## 💡 Exemple



```matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = outerjoin(L, R, 'Keys', 'Key')
```


## 🔗 Voir aussi

[join](../../table/5_join_set_operations/join.md), [innerjoin](../../table/5_join_set_operations/innerjoin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
