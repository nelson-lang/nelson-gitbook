# bvpinit

Cree une estimation initiale BVP.

## 📝 Syntaxe

- solinit = bvpinit(xinit, yinit)
- solinit = bvpinit(xinit, yinit, parameters)

## 📄 Description

<b>bvpinit</b> cree le maillage initial, l'estimation d'etat et les parametres inconnus optionnels utilises par les solveurs BVP.

| Entree         | Forme acceptee                                                   | Role                                          |
| -------------- | ---------------------------------------------------------------- | --------------------------------------------- |
| **xinit**      | Vecteur de maillage croissant.                                   | Definit le premier maillage BVP.              |
| **yinit**      | Vecteur constant, tableau sur le maillage ou handle de fonction. | Definit l'estimation initiale de la solution. |
| **parameters** | Vecteur optionnel.                                               | Estimation initiale des parametres inconnus.  |
| **solinit**    | Structure.                                                       | Entree pour **bvp4c** et **bvp5c**.           |

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[bvp4c](../ode_solvers/bvp4c.md), [bvp5c](../ode_solvers/bvp5c.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
