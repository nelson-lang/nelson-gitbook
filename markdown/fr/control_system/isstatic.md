# isstatic

Vérifie si le modèle est statique ou dynamique.

## Syntaxe

- res = isdt(sys)

## Argument d'entrée

- sys - un modèle lti.

## Argument de sortie

- res - un logique : vrai si le modèle est statique.

## Description

<p>Vérifie si le modèle est statique.</p>

## Exemple

```matlab
sys = tf(magic(3));
isstatic(sys)
```

## Voir aussi

[isct](../control_system/isct.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
