# tutoriel evenements edo

Localiser des evenements pendant une integration EDO.

## 📄 Description


Utilisez l'option <b>Events</b> pour arreter ou enregistrer les instants ou une fonction evenement passe par zero. Une fonction evenement retourne les tableaux value, terminal et direction. 

| Sortie evenement | Signification | 
| --- | --- | 
| **te** ou **xe** | Valeur du temps ou de la variable independante ou l'evenement est localise. | 
| **ye** | Solution au point d'evenement. | 
| **ie** | Indice de la fonction d'evenement qui traverse zero. | 
| **isterminal** | Les valeurs non nulles arretent l'integration. | 

 

Utilisez les evenements terminaux pour arreter a un seuil et les evenements non terminaux pour collecter des instants de diagnostic.

## 💡 Exemples

Arreter quand l'etat atteint un demi.

```matlab
function [value,isterminal,direction] = localHalfEvent(t, y)
  value = y - 0.5;
  isterminal = 1;
  direction = 1;
end
options = odeset('Events', @localHalfEvent);
[t, y, te, ye, ie] = ode45(@(t,y) 1, [0 1], 0, options)
```
Utiliser un objet evenement.

```matlab
event = odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', event);
result = solve(problem, 0, 1)
```


## 🔗 Voir aussi

[odeset](../ode_solvers/odeset.md), [odeEvent](../ode_solvers/odeEvent.md), [ode45](../ode_solvers/ode45.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
