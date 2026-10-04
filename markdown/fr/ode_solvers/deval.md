# deval

Evaluer une solution EDO.

## 📝 Syntaxe

- y = deval(sol, t)
- [y, yp] = deval(sol, t)

## 📄 Description

<b>deval</b> interpole une structure de solution ou un objet resultat retourne par un solveur EDO.

| Element             | Details                                                                            |
| ------------------- | ---------------------------------------------------------------------------------- |
| Solution en entree  | Structure ou objet resultat retourne par les solveurs ODE, DDE ou BVP.             |
| Points d'evaluation | Valeurs **t** ou **x** dans l'intervalle calcule.                                  |
| Sorties             | Valeurs **y** et derivees optionnelles **yp**, une colonne par point d'evaluation. |
| Usage               | Sortie dense, trace, post-traitement et comparaison de solutions.                  |

Le resultat contient une ligne par variable d'etat et une colonne par point d'evaluation. Cette forme est utilisee pour les vecteurs ligne et colonne de temps d'evaluation. Les points d'evaluation doivent rester dans l'intervalle de la solution. La seconde sortie optionnelle retourne la derivee aux memes points.

## 💡 Exemple

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
[y, yp] = deval(sol, [0; 0.5; 1])
```

## 🔗 Voir aussi

[odextend](../ode_solvers/odextend.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
