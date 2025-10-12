# mu2lin

Convertir les données audio de mu-law vers un signal linéaire.

## Syntaxe

- y = mu2lin(mu)

## Argument d'entrée

- mu - signaux audio encodés en mu-law 8 bits, avec 0 ≤ mu ≤ 255.

## Argument de sortie

- y - signal linéaire.

## Description

<p>
            y = mu2lin(mu) convertit les données audio de mu-law vers linéaire.</p>

## Bibliographie

"A New Digital Technique for Implementation of Any Continuous PCM Companding Law," Villeret, Michel, et al. 1973 IEEE Int. Conf. on Communications, Vol 1, 1973, pg. 11.12-11.17.

## Exemple

```matlab
l = mu2lin([0:20:255])
```

## Voir aussi

[audioplayer](../audio/audioplayer.md), [lin2mu](../audio/lin2mu.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
