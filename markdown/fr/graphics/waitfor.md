# waitfor

Attendre une condition.

## Syntaxe

- waitfor(obj)
- waitfor(obj, propertyName)
- waitfor(obj, propertyName, propertyValue)

## Argument d'entrée

- obj - Tout objet graphique scalaire.
- propertyName - Nom de la propriété : vecteur de caractères ou chaîne scalaire.
- propertyValue - Valeur de la propriété : valeur valide associée au nom de la propriété.

## Description

<p>
            waitfor(obj) met en pause l'exécution des instructions jusqu'à ce que l'objet spécifié soit fermé (ou supprimé). Une fois que l'objet n'est plus présent, waitfor retourne, permettant à l'exécution de continuer. Si l'objet n'existe pas au moment de l'appel, waitfor retourne immédiatement.</p>

<p>
                waitfor(obj, propertyName) interrompt l'exécution jusqu'à ce que la propriété spécifiée de l'objet change ou que l'objet soit fermé. Par exemple, waitfor(hFig, 'UserData') met en pause l'exécution jusqu'à ce que la propriété 'UserData' de hFig change. Si le nom de la propriété spécifiée est invalide, une erreur interrompt l'exécution.</p>

<p>
                    waitfor(obj, propertyName, propertyValue) met en pause l'exécution jusqu'à ce que la propriété spécifiée de l'objet change pour prendre la valeur donnée. Si la propriété est déjà égale à propertyValue lorsque waitfor est appelé, il retourne immédiatement, permettant à l'exécution de reprendre.</p>

## Exemples

```matlab
h = figure()
waitfor(h);
% fermer la figure pour continuer

```

```matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value');
% appuyer sur le bouton bascule

```

```matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value', 1);
% appuyer sur le bouton bascule

```

## Voir aussi

[figure](../graphics/figure.md), [waitforbuttonpress](../graphics/waitforbuttonpress.md), [pause](../core/pause.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.7.0   | Version initiale |

## Auteur

Allan CORNET
