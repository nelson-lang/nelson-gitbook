# filter

Filtre numérique 1-D

## 📝 Syntaxe

- y = filter(b, a, x)
- y = filter(b, a, x, zi)
- y = filter(b, a, x, zi, dim)
- [y, zf] = filter(...)

## 📥 Argument d'entrée

- b - Coefficients du numérateur de la fonction de transfert rationnelle : vecteur.
- a - Coefficients du dénominateur de la fonction de transfert rationnelle : vecteur.
- x - Données d'entrée : matrice.
- zi - conditions initiales du filtre.
- dim - dimension de calcul.

## 📤 Argument de sortie

- y - Données filtrées : matrice.
- zf - conditions finales du filtre.

## 📄 Description

La fonction <b>filter(b, a, x)</b> applique une fonction de transfert rationnelle pour filtrer le tableau de données d'entrée <b>x</b>.

Cette fonction de transfert est définie par les coefficients du numérateur (<b>b</b>) et du dénominateur (<b>a</b>).

Si le premier coefficient de <b>a</b> (a(1)) est différent de 1, le filtre normalise les coefficients par a(1). Il est essentiel que a(1) soit non nul.

Lorsque <b>x</b> est un vecteur, la fonction renvoie un vecteur de même taille contenant les données filtrées.

Les entrees sparse ne sont pas prises en charge.

Les conditions initiales et finales ont l'ordre du filtre comme premiere dimension, suivi des dimensions de <b>x</b> sauf la dimension filtree.

## 💡 Exemple

```matlab
f = figure();
rng default
t = linspace(-pi,pi,100);
X = sin(t) + (0.33 * rand(size(t)));
windowSize = 7;
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y = filter(b, a, X);
plot(t, X)
hold on
plot(t, y)
legend(_('Input Data'), _('Filtered Data'));

```

## 🔗 Voir aussi

[conv](../../data_analysis/conv.md).

## 🕔 Historique

| Version | 📄 Description                                                                                                    |
| ------- | ----------------------------------------------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                                                                  |
| 2.0.0   | documentation des conditions initiales et finales, du support de dimension et de la validation des entrees sparse |

<!--
## 👤 Auteur

Allan CORNET
-->
