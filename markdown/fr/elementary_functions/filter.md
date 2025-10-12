# filter

Filtre numérique 1-D

## Syntaxe

- y = filter(b, a, x)

## Argument d'entrée

- b - Coefficients du numérateur de la fonction de transfert rationnelle : vecteur.
- a - Coefficients du dénominateur de la fonction de transfert rationnelle : vecteur.
- x - Données d'entrée : matrice.

## Argument de sortie

- y - Données filtrées : matrice.

## Description

<p>La fonction filter(b, a, x) applique une fonction de transfert rationnelle pour filtrer le tableau de données d'entrée x.</p>

<p>Cette fonction de transfert est définie par les coefficients du numérateur (b) et du dénominateur (a).</p>

<p>Si le premier coefficient de a (a(1)) est différent de 1, le filtre normalise les coefficients par a(1). Il est essentiel que a(1) soit non nul.</p>

<p>Lorsque x est un vecteur, la fonction renvoie un vecteur de même taille contenant les données filtrées.</p>

## Exemple

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

## Voir aussi

[conv](../data_analysis/conv.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
