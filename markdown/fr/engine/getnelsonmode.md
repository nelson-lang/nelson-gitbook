# getnelsonmode

Retourne le mode courant de Nelson.

## Syntaxe

- m = getnelsonmode()

## Argument de sortie

- m - une chaîne de caractères.

## Description

<p>
            getnelsonmode() renvoie le mode courant utilisé par Nelson.</p>

<p>Les modes possibles sont :</p>

<p>BASIC_ENGINE : Nelson utilisé comme moteur sans graphisme.</p>

<p>ADVANCED_ENGINE : Nelson utilisé comme moteur avec graphisme/GUI.</p>

<p>BASIC_TERMINAL : Nelson lancé en terminal sans graphisme.</p>

<p>ADVANCED_TERMINAL : Nelson lancé en terminal avec graphisme/GUI.</p>

<p>BASIC_SIO_CLIENT : Nelson lancé comme client socket IO.</p>

<p>ADVANCED_SIO_CLIENT : Nelson lancé comme client socket IO avec graphisme/GUI.</p>

<p>GUI : Nelson lancé comme application graphique (par défaut).</p>

## Exemple

```matlab
getnelsonmode()
```

## Voir aussi

[executable](../engine/executable.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
