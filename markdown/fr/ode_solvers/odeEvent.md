# odeEvent

Description d'evenement pour le flux objet EDO.

## 📝 Syntaxe

- E = odeEvent(eventFcn)
- E = odeEvent(nom, valeur)

## 📄 Description

<b>odeEvent</b> stocke une fonction d'evenement et sa politique pour le flux objet <b>ode</b>.

| Objet        | Role                                                               | Utilise par                                                |
| ------------ | ------------------------------------------------------------------ | ---------------------------------------------------------- |
| **odeEvent** | Stocke une definition reutilisable pour le workflow objet **ode**. | La propriete correspondante de **ode** et **solve**.       |
| Validation   | Verifie les noms et formes supportes au moment de la construction. | Les tests et erreurs restent explicites avant integration. |

<b>EventFcn</b> peut retourner seulement les valeurs d'evenement. Dans ce cas <b>Direction</b> controle le sens de croisement et <b>Response</b> controle si le solveur continue ou s'arrete. Les fonctions d'evenement historiques qui retournent valeur, drapeaux terminaux et direction sont aussi acceptees. Ces trois sorties doivent contenir le meme nombre d'elements finis.

<b>Direction</b> accepte <b>both</b>, <b>increasing</b> ou <b>decreasing</b>. <b>Response</b> accepte <b>proceed</b>, <b>stop</b> ou <b>callback</b>. Quand <b>Response</b> vaut <b>callback</b>, <b>CallbackFcn</b> est appelee avec le temps d'evenement, la solution d'evenement, l'indice d'evenement et les parametres optionnels du probleme. Elle peut retourner un drapeau d'arret scalaire et une solution d'evenement mise a jour.

## 💡 Exemples

Arreter quand la solution atteint un demi.

```matlab
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Direction', 'increasing', ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
```

Appeler un callback au point d'evenement.

```matlab
function [stop, y] = myEventCallback(t, y, index)
  stop = true;
end
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Response', 'callback', ...
  'CallbackFcn', @myEventCallback);
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
```

## 🔗 Voir aussi

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
