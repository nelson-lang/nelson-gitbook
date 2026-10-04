# ddeget

Recupere une option DDE.

## 📝 Syntaxe

- value = ddeget(options, name)
- value = ddeget(options, name, defaultValue)

## 📄 Description

<b>ddeget</b> recupere une valeur d'une structure d'options DDE et retourne la valeur par defaut quand l'option est vide.

| Appel                                   | Role                                                  |
| --------------------------------------- | ----------------------------------------------------- |
| **value = \*get(options,name)**         | Retourne la valeur stockee pour **name**.             |
| **value = \*get(options,name,default)** | Retourne **default** si l option est absente ou vide. |

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[ddeset](../ode_solvers/ddeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
