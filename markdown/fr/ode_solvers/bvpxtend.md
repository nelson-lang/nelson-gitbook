# bvpxtend

Etend une estimation de solution BVP.

## 📝 Syntaxe

- solinit = bvpxtend(sol, xnew)
- solinit = bvpxtend(sol, xnew, ynew)

## 📄 Description

<b>bvpxtend</b> construit une nouvelle estimation initiale BVP depuis une solution existante et un maillage raffine.

| Entree      | Details                                                                    |
| ----------- | -------------------------------------------------------------------------- |
| **sol**     | Solution existante ou structure d'estimation initiale.                     |
| **xnew**    | Nouveaux points ajoutes au maillage ou remplacant le maillage precedent.   |
| **ynew**    | Valeurs optionnelles aux nouveaux points du maillage.                      |
| **solinit** | Structure d'estimation etendue pour un autre appel **bvp4c** ou **bvp5c**. |

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[bvpinit](../ode_solvers/bvpinit.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
