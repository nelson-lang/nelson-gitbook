# echo

Contrôle l'écho lors de l'exécution des scripts.

## Syntaxe

- state = echo()
- echo()
- echo('on')
- echo('off')

## Argument d'entrée

- 'on' - activer le mode echo (par défaut)
- 'off' - désactiver le mode echo

## Argument de sortie

- state - une chaîne : 'on' ou 'off'

## Description

<p>
            echo('off') désactive le mode echo.</p>

<p>Sans arguments d'entrée ou de sortie, la commande echo bascule l'état d'echo courant.</p>

## Exemple

an example

```matlab
R = echo
echo('on')
A = 1+1
echo('off')
A = A+1
echo(R)
A
```

## Voir aussi

[disp](../display_format/disp.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
