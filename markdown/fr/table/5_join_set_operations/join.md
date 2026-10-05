# join

Joint des tables par variables cles.

## 📝 Syntaxe

- T = join(left, right)
- T = join(left, right, 'Keys', keys)
- T = join(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)

## 📥 Argument d'entrée

- left, right - Tables d'entree.
- keys - Noms des variables cles.
- leftVars, rightVars - Variables a conserver depuis les tables gauche et droite.

## 📤 Argument de sortie

- T - Table jointe.

## 📄 Description


<b>join</b> combine les lignes de deux tables en utilisant les valeurs de cles communes.

## 💡 Exemple



```matlab
L = table([1; 2], [10; 20], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3], [200; 300], 'VariableNames', {'Key', 'RightValue'});
J = join(L, R, 'Keys', 'Key')
```


## 🔗 Voir aussi

[innerjoin](../../table/5_join_set_operations/innerjoin.md), [outerjoin](../../table/5_join_set_operations/outerjoin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
