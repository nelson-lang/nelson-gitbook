# workflows EDO

Exemples EDO et interface objet.

## 📄 Description


L'interface fonction retourne des tableaux ou une structure de solution. L'interface objet stocke le probleme dans un objet <b>ode</b> et retourne un objet resultat avec <b>solve</b>. 

| Workflow | Appels principaux | Usage | 
| --- | --- | --- | 
| Fonctions | **ode45**, **ode15s**, **ode15i** | Scripts compacts qui retournent des tableaux ou une structure de solution. | 
| Objet | **ode**, **solve**, **deval** | Definitions de probleme reutilisables avec options et objets resultat. | 
| Post-traitement | **deval**, **odextend** | Interpoler ou continuer une solution calculee. | 

 

Utilisez une structure de solution avec <b>deval</b> pour interpoler et <b>odextend</b> pour prolonger une integration. Utilisez <b>Events</b> pour localiser les passages par zero, <b>Mass</b> pour les matrices de masse et <b>Jacobian</b> pour aider les solveurs raides.

## 💡 Exemples

Interface fonction avec interpolation.

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
yhalf = deval(sol, 0.5)
```
Interface objet.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 1);
value = deval(result, 0.5)
```
Sortie raffinee et statistiques.

```matlab
options = odeset('Refine', 4, 'Stats', 'on');
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [deval](../ode_solvers/deval.md), [odextend](../ode_solvers/odextend.md), [odeset](../ode_solvers/odeset.md), [tutoriel edo complexe](../ode_solvers/8_ode_complex_workflow_tutorial.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
