# gatewayinfo

Retourne des informations sur une gateway.

## Syntaxe

- [gateway_name, builtin_list] = gatewayinfo(dyn_lib_path)

## Argument d'entrée

- dyn_lib_path - chaîne : chemin d'une bibliothèque dynamique préparée pour Nelson.

## Argument de sortie

- gateway_name - chaîne : nom de la gateway
- builtin_list - cellule de chaînes : liste des builtin présents dans cette gateway

## Description

<p>
            [gateway_name, builtin_list] = gatewayinfo(dyn_lib_path) récupère des informations sur une gateway.</p>

<p>La bibliothèque dynamique doit fournir au minimum un point d'entrée C nommé GetGatewayInfo.</p>

<p>Si le fichier n'existe pas, une erreur est levée.</p>

## Exemple

```matlab
[gateway_name, builtin_list] = gatewayinfo(modulepath('time', 'builtin'))

```

## Voir aussi

[addgateway](../dynamic_link/addgateway.md), [removegateway](../dynamic_link/removegateway.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
