# nelson.ode.ODEResults

Objet resultat retourne par solve sur un objet ode.

## 📝 Syntaxe

- result = solve(problem, tfinal)
- result = solve(problem, t0, tfinal)
- result = nelson.ode.ODEResults(sol)

## 📄 Description


<b>nelson.ode.ODEResults</b> stocke le resultat d'une integration realisee avec le workflow objet <b>ode</b>. L'appel de <b>solve</b> sur un objet <b>ode</b> retourne une instance de cette classe. 

| Propriete | Contenu | 
| --- | --- | 
| **Time** | Vecteur ligne des points de temps de l'integration. | 
| **Solution** | Matrice des valeurs de la solution, une ligne par composante et une colonne par point de temps. | 
| **Sensitivity** | Valeurs de sensibilite lorsqu'une analyse de sensibilite est demandee, vide sinon. | 
| **EventTime** | Instants auxquels des evenements ont ete detectes, vide lorsqu'aucune fonction d'evenement n'est definie. | 
| **EventSolution** | Valeurs de la solution aux evenements detectes. | 
| **EventIndex** | Indices des fonctions d'evenement declenchees. | 
| **EventSensitivity** | Valeurs de sensibilite aux evenements detectes, vide sinon. | 
| **AdjointGradient** | Gradient calcule par analyse de sensibilite adjointe, vide sinon. | 

 

La classe porte aussi les proprietes cachees <b>RawSolution</b> (la structure de solution sous-jacente, utilisable avec <b>deval</b> et <b>odextend</b>), <b>SolutionValues</b> (la transposee de <b>Solution</b>, une ligne par point de temps) et <b>Stats</b> (les statistiques du solveur lorsqu'elles sont disponibles). 

Le constructeur <b>nelson.ode.ODEResults(sol)</b> construit un objet resultat a partir d'une structure de solution comportant au moins les champs <b>x</b> et <b>y</b>, telle que la structure retournee par les fonctions solveurs. Les proprietes d'evenement et de sensibilite sont remplies a partir des champs optionnels <b>xe</b>, <b>ye</b>, <b>ie</b>, <b>sensitivity</b>, <b>eventSensitivity</b> et <b>adjointGradient</b>. Appele sans argument, le constructeur retourne un objet dont toutes les proprietes sont vides.

## 💡 Exemple

Resoudre un probleme et inspecter l'objet resultat.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 2);
class(result)
result.Time(end)
result.Solution(:, end)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [deval](../ode_solvers/deval.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
