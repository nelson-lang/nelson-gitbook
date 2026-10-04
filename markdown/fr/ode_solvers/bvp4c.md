# bvp4c

Resout des problemes aux limites par collocation d'ordre quatre.

## 📝 Syntaxe

- sol = bvp4c(odefun, bcfun, solinit)
- sol = bvp4c(odefun, bcfun, solinit, options)

## 📄 Description

<b>bvp4c</b> resout des problemes aux limites du premier ordre depuis un maillage et une estimation initiale produits par <b>bvpinit</b>.

| Element           | Details                                                                                                  |
| ----------------- | -------------------------------------------------------------------------------------------------------- |
| Forme du probleme | Systeme du premier ordre **y' = f(x,y)** avec conditions aux limites **bcfun(ya,yb)**.                   |
| Initialisation    | **bvpinit** fournit le maillage initial, l estimation de solution et les parametres inconnus optionnels. |
| Methode           | Collocation d ordre quatre.                                                                              |
| Solution          | Structure **sol** avec **x**, **y**, **yp**, **parameters** et **stats**.                                |

Les options creees avec <b>bvpset</b> peuvent fournir <b>FJacobian</b>, <b>BCJacobian</b>, <b>Vectorized</b> et <b>SingularTerm</b>. Quand les deux callbacks de jacobien sont fournis, l'iteration de Newton les utilise a la place des differences finies. Les stats de solution incluent <b>niterations</b>, <b>nmeshpoints</b>, <b>residualNorm</b>, <b>residualRms</b>, <b>nrefinements</b>, <b>maxDefect</b>, <b>rmsDefect</b> et, quand disponible, <b>nfevals</b>.

## 💡 Exemple

Exemple complet des fonctionnalites DDE et BVP ajoutees.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 Voir aussi

[bvp5c](../ode_solvers/bvp5c.md), [bvpinit](../ode_solvers/bvpinit.md), [bvpset](../ode_solvers/bvpset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
