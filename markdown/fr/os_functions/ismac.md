# ismac

Vérifie si la version est pour la plateforme macOS.

## Syntaxe

- s = ismac()

## Argument de sortie

- s - un booléen : vrai si la plateforme est macOS.

## Description

<p>ismac vérifie si la plateforme est macOS.</p>

## Exemple

```matlab
if ismac
  disp('Your platform is MacOs')
else
  disp('Your platform is not MacOs')
end
```

## Voir aussi

[isunix](../os_functions/isunix.md), [ispc](../os_functions/ispc.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
