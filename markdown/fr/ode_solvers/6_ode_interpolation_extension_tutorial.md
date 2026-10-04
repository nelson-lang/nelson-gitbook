# tutoriel interpolation extension edo

Interpoler et prolonger des solutions EDO.

## 📄 Description

Appelez un solveur avec une sortie pour obtenir une structure de solution. Cette structure stocke les pas internes acceptes; les sorties tableau comme <b>[t, y]</b> utilisent les points demandes ou raffines. Utilisez <b>deval</b> pour evaluer cette structure a d'autres instants.

| Tache                | Appel                             | Notes                                                      |
| -------------------- | --------------------------------- | ---------------------------------------------------------- |
| Interpoler           | **deval(sol, tq)**                | Les points doivent rester dans l'intervalle de solution.   |
| Obtenir les derivees | **[y, yp] = deval(sol, tq)**      | La derivee suit la meme disposition en colonnes que **y**. |
| Continuer            | **odextend(sol, odefun, tfinal)** | Construit une nouvelle structure sur l'intervalle etendu.  |

Utilisez <b>odextend</b> pour continuer une integration depuis l'etat final tout en conservant les metadonnees et les evenements.

## 💡 Exemples

Evaluer une solution a des points demandes.

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
values = deval(sol, [0 0.25 0.5 1])
```

Prolonger une solution.

```matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
extended = odextend(sol, @(t,y) -y, 1);
value = deval(extended, 1)
```

## 🔗 Voir aussi

[deval](../ode_solvers/deval.md), [odextend](../ode_solvers/odextend.md), [ode45](../ode_solvers/ode45.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
