# innerjoin

Jointure interne de deux tables.

## 📝 Syntaxe

- T = innerjoin(left, right)
- T = innerjoin(left, right, 'Keys', keys)
- T = innerjoin(left, right, 'LeftVariables', leftVars, 'RightVariables', rightVars)

## 📥 Argument d'entrée

- left, right - Tables d'entree.
- keys - Noms des variables cles.
- leftVars, rightVars - Variables a conserver depuis les tables gauche et droite.

## 📤 Argument de sortie

- T - Table contenant les lignes dont les cles existent dans les deux entrees.

## 📄 Description


<b>innerjoin</b> conserve seulement les lignes avec des cles correspondantes dans les deux tables.

## 💡 Exemple



```matlab
L = table([1; 2; 3], [10; 20; 30], 'VariableNames', {'Key', 'LeftValue'});
R = table([2; 3; 4], [200; 300; 400], 'VariableNames', {'Key', 'RightValue'});
J = innerjoin(L, R, 'Keys', 'Key')
```


## 🔗 Voir aussi

[join](../../table/5_join_set_operations/join.md), [outerjoin](../../table/5_join_set_operations/outerjoin.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
