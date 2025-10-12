# getenv

Obtenir la valeur d'une variable d'environnement.

## Syntaxe

- s = getenv(env_name)

## Argument d'entrée

- env_name - scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : nom de la variable d'environnement.

## Argument de sortie

- s - scalaire chaîne, vecteur de caractères, tableau de chaînes, cellule de vecteurs de caractères : valeur de la variable d'environnement.

## Description

<p>getenv retourne la valeur d'une variable d'environnement si elle existe.</p>

<p>Si la variable d'environnement n'existe pas, elle renverra ''.</p>

<p>Si env_name est une cellule non scalaire de vecteurs de caractères ou un tableau de chaînes, alors s a les mêmes dimensions et le même type que env_name.</p>

<p>Si env_name est une chaîne scalaire, alors s est un vecteur de caractères.</p>

## Exemple

```matlab
getenv('OS')
getenv('myenvvar')
getenv(["PATH"; "OS"])
getenv({'PATH'; 'OS'})

```

## Voir aussi

[setenv](../os_functions/setenv.md), [searchenv](../os_functions/searchenv.md).

## Historique

| Version | Description                                                      |
| ------- | ---------------------------------------------------------------- |
| 1.0.0   | version initiale                                                 |
| 1.4.0   | Récupération des valeurs de plusieurs variables d'environnement. |

## Auteur

Allan CORNET
