# removegateway

Supprime dynamiquement un builtin au moment de l'exécution.

## Syntaxe

- removegateway(dyn_lib_path)

## Argument d'entrée

- dyn_lib_path - chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

## Description

<p>
            removegateway(dyn_lib_path) supprime dynamiquement un builtin au moment de l'exécution.</p>

<p>La bibliothèque dynamique doit fournir au minimum un point d'entrée C nommé RemoveGateway.</p>

<p>Si la gateway n'était pas chargée, aucune erreur ni avertissement ne sera levé. Si le fichier n'existe pas, une erreur est levée.</p>

## Exemple

removes time builtin

```matlab
calendar
removegateway(modulepath('time', 'builtin'))
calendar
```

## Voir aussi

[addgateway](../dynamic_link/addgateway.md), [gatewayinfo](../dynamic_link/gatewayinfo.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
