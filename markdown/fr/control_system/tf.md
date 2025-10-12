# tf

Construit un modèle de fonction de transfert.

## Syntaxe

- sys = tf()
- sys = tf('s')
- sys = tf(numerator, denominator)
- sys = tf(numerator, denominator, Ts)

## Argument d'entrée

- numerator - coefficients polynomiaux : un vecteur ligne ou un tableau de cellules de vecteurs lignes.
- denominator - coefficients polynomiaux : un vecteur ligne ou un tableau de cellules de vecteurs lignes.
- Ts - Temps d'échantillonnage Ts, par défaut : en secondes
- sysIn - Modèle LTI.

## Argument de sortie

- sys - Modèle de système de fonction de transfert en sortie.

## Description

<p>Crée un modèle de fonction de transfert continu ou discret à partir des coefficients du numérateur et du dénominateur, et d'un temps d'échantillonnage optionnel.</p>

## Exemples

```matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
```

```matlab
numerator = 10;
denominator = [20, 33, 44];
Ts = 1.5;
sys = tf(numerator, denominator, Ts)
```

## Voir aussi

[ss](../control_system/ss.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
