# who

Liste les variables en mémoire ou dans un fichier .nh5 ou .mat.

## Syntaxe

- who
- s = who()
- who(scope)
- s = who(scope)
- who('-file', filename)
- s = who('-file', filename)
- who(... , var1, ..., varN)
- s = who(... , var1, ..., varN)

## Argument d'entrée

- scope - une chaîne : 'global', 'base', 'caller', 'local' ou '-file'.
- filename - chaîne : nom d'un fichier existant .nh5 ou .mat.
- var1, ..., varN - chaîne : nom de la variable.

## Argument de sortie

- s - un tableau de chaînes : liste des noms de variables.

## Description

<p>
            who affiche les noms des variables courantes.</p>

## Exemple

```matlab
clear
who
A = 3
b= 3
who
s = who()
```

## Voir aussi

[what](../functions_manager/what.md), [clear](../memory_manager/clear.md), [whos](../memory_manager/whos.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
