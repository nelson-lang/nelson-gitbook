# acker

Sélection du gain de placement des pôles utilisant la formule d'Ackermann.

## Syntaxe

- K = acker(A, B, P)

## Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx
- B - Matrice entrée-état : matrice Nx-par-Nu
- P - Vecteur de localisation des pôles en boucle fermée souhaité.

## Argument de sortie

- K - matrice de gain de rétroaction.

## Description

<p>La fonction acker calcule la matrice de gain de rétroaction K pour un système à entrée unique décrit par les matrices d'espace d'état A et B.</p>

<p>Les pôles en boucle fermée du système sous la loi de rétroaction u = -Kx sont déterminés par le vecteur spécifié P, où P représente les localisations des pôles souhaitées.</p>

<p>Les pôles en boucle fermée sont essentiellement les valeurs propres de la matrice A - B*K, calculées comme P = eig(A - B*K).</p>

<p></p>

<p>Il est important de noter que cet algorithme utilise la formule d'Ackermann.</p>

<p>Cependant, les utilisateurs doivent être conscients que cette méthode peut ne pas être numériquement fiable, particulièrement pour les systèmes d'ordre supérieur à 10 ou pour les systèmes faiblement contrôlables.</p>

<p>Si l'algorithme rencontre une instabilité numérique ou si les pôles en boucle fermée dévient significativement (plus de 10%) des localisations souhaitées spécifiées dans P, un message d'avertissement est émis pour alerter l'utilisateur sur les problèmes potentiels.</p>

<p>Les utilisateurs sont invités à faire preuve de prudence et à envisager des méthodes alternatives pour les systèmes d'ordre supérieur ou faiblement contrôlables.</p>

## Exemple

```matlab
A = [0 1 0; 0 0 1;-1 -5 -6];
B = [ 0; 0; 1];
P = [-10 -2-4i -2+4i];
K = acker(A, B, P)
```

## Voir aussi

[place](../control_system/place.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
