# odeset

Creer ou modifier des options EDO.

## 📝 Syntaxe

- options = odeset()
- options = odeset(nom, valeur)
- options = odeset(anciennesOptions, nom, valeur)

## 📄 Description


<b>odeset</b> cree une structure d'options pour les solveurs EDO. 

| Groupe | Options | Role | 
| --- | --- | --- | 
| Tolerances | **RelTol**, **AbsTol**, **NormControl** | Controle l erreur adaptative. | 
| Pas et sorties | **InitialStep**, **MaxStep**, **MinStep**, **Refine**, **OutputFcn**, **OutputSel**, **Stats** | Controle les pas publics, les callbacks de sortie et les statistiques. | 
| Evenements et contraintes | **Events**, **NonNegative** | Localise les zeros et contraint certaines composantes. | 
| Systemes raides | **Mass**, **Jacobian**, **JPattern**, **JConstant**, **BDF**, **MaxOrder**, **MassSingular**, **MStateDependence**, **MvPattern** | Donne des informations structurelles aux solveurs raides ou implicites. | 

 

Les options courantes incluent <b>RelTol</b>, <b>AbsTol</b>, <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>Refine</b>, <b>Stats</b>, <b>Events</b>, <b>OutputFcn</b>, <b>OutputSel</b>, <b>NonNegative</b>, <b>Mass</b>, <b>Jacobian</b>, <b>JPattern</b>, <b>JConstant</b>, <b>BDF</b>, <b>MaxOrder</b>, <b>MassSingular</b>, <b>MStateDependence</b> et <b>MvPattern</b>. Les options explicites de taille de pas doivent etre positives. 

Quand l'intervalle de temps contient seulement deux valeurs, <b>Refine</b> ajoute des points de sortie dans chaque pas accepte. Avec des intervalles plus longs, les points de temps demandes definissent les points de sortie publics. <b>OutputFcn</b> est appelee sur ces points raffines ou demandes; retourner un scalaire <b>true</b> arrete l'integration au point de sortie courant. <b>Stats</b> a <b>on</b> affiche les compteurs de pas et d'evaluations. <b>NormControl</b> a <b>on</b> utilise une norme vectorielle dans le test d'erreur adaptatif. <b>Vectorized</b> a <b>on</b> autorise les appels vectorises du membre de droite pendant la construction du jacobien par differences finies. <b>JPattern</b> fournit le motif non nul utilise par les entrees raides et l'entree implicite quand un jacobien par differences finies est necessaire. <b>JConstant</b> a <b>on</b> reutilise le jacobien dans chaque pas lineairement implicite.

## 💡 Exemples

Points de sortie raffines.

```matlab
options = odeset('Refine', 4, 'MaxStep', 0.5);
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
```
Statistiques et jacobien pour une entree raide.

```matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000, 'Stats', 'on');
[t, y] = ode15s(f, [0 0.5], 1, options)
```
Controle par norme vectorielle.

```matlab
options = odeset('NormControl', 'on');
[t, y] = ode45(@(t,y) [y(1); -2*y(2)], [0 1], [1; 1], options)
```
Motif de jacobien par differences finies.

```matlab
pattern = [1 0; 0 1];
options = odeset('JPattern', pattern, 'Vectorized', 'on');
[t, y] = ode15s(@(t,y) [-10*y(1,:); -20*y(2,:)], [0 0.2], [1; 2], options)
```
Indication de jacobien constant.

```matlab
options = odeset('Jacobian', -25, 'JConstant', 'on');
[t, y] = ode15s(@(t,y) -25*y, [0 0.2], 1, options)
```
Fonction de sortie aux points demandes.

```matlab
out = @(t,y,flag) false;
options = odeset('OutputFcn', out);
[t, y] = ode45(@(t,y) y, [0 0.25 0.5], 1, options)
```


## 🔗 Voir aussi

[odeget](../ode_solvers/odeget.md), [ode45](../ode_solvers/ode45.md), [ode15s](../ode_solvers/ode15s.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
