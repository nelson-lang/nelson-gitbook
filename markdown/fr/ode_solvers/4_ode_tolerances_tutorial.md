# tutoriel tolerances edo

Controler la precision et les statistiques EDO.

## 📄 Description


Utilisez <b>RelTol</b> pour la precision relative et <b>AbsTol</b> pour les composantes de petite amplitude. Utilisez <b>InitialStep</b>, <b>MaxStep</b> et <b>MinStep</b> pour borner le controle de pas adaptatif. 

| Option | Effet | Usage typique | 
| --- | --- | --- | 
| **RelTol** | Adapte le test d'erreur a la taille de la solution. | Controle principal de precision. | 
| **AbsTol** | Fixe un plancher pour les petites composantes. | Protege les variables proches de zero. | 
| **NormControl** | Utilise une norme vectorielle dans le test adaptatif. | Systemes couples avec echelle partagee. | 
| **Stats** | Affiche les compteurs solveur. | Diagnostics et tests de regression. | 

 

Placez <b>Stats</b> a <b>on</b> pour afficher les compteurs, ou lisez le champ <b>stats</b> d'une structure de solution.

## 💡 Exemples

Comparer deux tolerances.

```matlab
loose = odeset('RelTol', 1e-3, 'AbsTol', 1e-6);
tight = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
solLoose = ode45(@(t,y) y, [0 1], 1, loose);
solTight = ode45(@(t,y) y, [0 1], 1, tight);
[solLoose.stats.nsteps solTight.stats.nsteps] 
```
Afficher les statistiques.

```matlab
options = odeset('Stats', 'on', 'MaxStep', 0.1);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options);
```


## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md), [odeget](../ode_solvers/odeget.md), [ode](../ode_solvers/ode.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
