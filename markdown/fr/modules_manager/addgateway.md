# addgateway

Ajoute dynamiquement un builtin au moment de l'exécution.

## Syntaxe

- addgateway(dyn_lib_path)

## Argument d'entrée

- dyn_lib_path - chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

## Description

<p>
            addgateway(dyn_lib_path) ajoute dynamiquement un builtin au moment de l'exécution.</p>

<p>La bibliothèque dynamique chargée doit fournir au minimum un point d'entrée C nommé AddGateway.</p>

<p>Si la gateway est déjà chargée, aucune erreur ni avertissement ne sera levé.</p>

## Exemple

Ajouter la gateway pour le module time :

```matlab
addgateway(modulepath('time', 'builtin'))
```

## Voir aussi

[removegateway](../dynamic_link/removegateway.md), [gatewayinfo](../dynamic_link/gatewayinfo.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
