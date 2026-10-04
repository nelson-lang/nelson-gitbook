# odeget

Lire une option EDO.

## 📝 Syntaxe

- valeur = odeget(options, nom)
- valeur = odeget(options, nom, defaut)

## 📄 Description

<b>odeget</b> renvoie une option nommee ou une valeur par defaut.

| Appel                                   | Role                                                  |
| --------------------------------------- | ----------------------------------------------------- |
| **value = \*get(options,name)**         | Retourne la valeur stockee pour **name**.             |
| **value = \*get(options,name,default)** | Retourne **default** si l option est absente ou vide. |

## 💡 Exemple

```matlab
options = odeset('RelTol', 1e-4); value = odeget(options, 'RelTol')
```

## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
