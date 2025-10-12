# base2dec

Convertit un nombre d'une base donnée en décimal.

## Syntaxe

- D = base2dec(TXT, B)

## Argument d'entrée

- TXT - un tableau de caractères.
- B - un entier : [2, 36].

## Argument de sortie

- D - résultat de base2dec : une valeur entière.

## Description

<p>
            base2dec convertit un nombre d'une base donnée en décimal.</p>

<p>Remarques :</p>

<p> - dec2base et base2dec sont mutuellement inverses.</p>

<p> - des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser base2dec('', 2) pour vider le cache.</p>

## Exemple

```matlab
base2dec('313', 3)
```

## Voir aussi

[dec2base](../elementary_functions/dec2base.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
