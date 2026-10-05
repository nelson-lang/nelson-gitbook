# odeMassMatrix

Description de matrice de masse pour solveurs EDO.

## 📝 Syntaxe

- M = odeMassMatrix(value)
- M = odeMassMatrix(value, nom, valeur)
- M = odeMassMatrix(nom, valeur)

## 📄 Description


<b>odeMassMatrix</b> stocke une matrice de masse ou un callback de matrice de masse pour le flux objet EDO. 

| Objet | Role | Utilise par | 
| --- | --- | --- | 
| **odeMassMatrix** | Stocke une definition reutilisable pour le workflow objet **ode**. | La propriete correspondante de **ode** et **solve**. | 
| Validation | Verifie les noms et formes supportes au moment de la construction. | Les tests et erreurs restent explicites avant integration. | 

 

Les proprietes publiques sont <b>MassMatrix</b>, <b>Singular</b>, <b>StateDependence</b> et <b>SparsityPattern</b>. Les alias compatibles <b>MassSingular</b>, <b>MStateDependence</b> et <b>MvPattern</b> sont aussi acceptes par le constructeur. 

<b>Singular</b> accepte <b>yes</b>, <b>no</b> ou <b>maybe</b>. <b>StateDependence</b> accepte <b>none</b>, <b>weak</b> ou <b>strong</b>. <b>SparsityPattern</b> accepte une matrice carree numerique ou logique et est transmis aux options du solveur. 

Sans matrice de masse, les valeurs par defaut sont <b>Singular='maybe'</b> et <b>StateDependence='weak'</b>. Pour une matrice de masse numerique, Nelson deduit <b>Singular</b> et utilise <b>StateDependence='none'</b> sauf si des valeurs sont fournies explicitement.

## 💡 Exemples


```matlab
M = odeMassMatrix(2)
```
Matrice de masse dans le flux objet.

```matlab
M = odeMassMatrix('MassMatrix', 2, 'Singular', 'no');
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, 'MassMatrix', M);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
