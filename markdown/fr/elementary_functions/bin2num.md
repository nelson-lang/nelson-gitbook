# bin2num

Convertit une chaîne binaire en complément à deux en nombre.

## Syntaxe

- R = bin2num(M)

## Argument d'entrée

- M - un tableau de caractères.

## Argument de sortie

- R - résultat de bin2num : logical, single ou double.

## Description

<p>
            bin2num convertit un tableau de caractères binaires en tableau numérique.</p>

<p>Remarques :</p>

<p> - num2bin renvoie toujours les représentations binaires en colonne.</p>

<p> - bin2num et num2bin sont mutuellement inverses.</p>

## Bibliographie

http://www.oxfordmathcenter.com/drupal7/node/43

## Fonction(s) utilisée(s)

C++ std::bitset

## Exemple

```matlab
X = [65535 128; 1 0]
Y = num2bin(X)
bin2num(Y)
```

## Voir aussi

[num2bin](../elementary_functions/num2bin.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
