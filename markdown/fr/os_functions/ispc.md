# ispc

Vérifie si la version est pour la plateforme Windows.

## Syntaxe

- s = ispc()

## Argument de sortie

- s - un booléen : vrai si la plateforme est Windows.

## Description

<p>ispc vérifie si la plateforme est Windows.</p>

## Exemple

```matlab
if ispc
  disp('Your platform is Windows')
else
  disp('Your platform is not Windows')
end
```

## Voir aussi

[isunix](../os_functions/isunix.md), [ismac](../os_functions/ismac.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
