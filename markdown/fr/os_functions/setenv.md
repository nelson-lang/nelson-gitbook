# setenv

Définir la valeur d'une variable d'environnement.

## Syntaxe

- setenv(env_name, env_value)

## Argument d'entrée

- env_name - une chaîne : nom de la variable d'environnement.
- env_value - une chaîne : valeur de la variable d'environnement.

## Description

<p>setenv définit la valeur d'une variable d'environnement.</p>

## Exemple

```matlab
setenv('MY_ENV_VAR', 'funvalue')
getenv('MY_ENV_VAR')
setenv('MY_ENV_VAR', '')
getenv('MY_ENV_VAR')
```

## Voir aussi

[getenv](../os_functions/getenv.md), [searchenv](../os_functions/searchenv.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
