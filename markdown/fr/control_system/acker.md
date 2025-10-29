# acker

Sélection du gain de placement des pôles utilisant la formule d'Ackermann.

## 📝 Syntaxe

- K = acker(A, B, P)

## 📥 Argument d'entrée

- A - Matrice d'état : matrice Nx-par-Nx
- B - Matrice entrée-état : matrice Nx-par-Nu
- P - Vecteur de localisation des pôles en boucle fermée souhaité.

## 📤 Argument de sortie

- K - matrice de gain de rétroaction.

## 📄 Description

La fonction <b>acker</b> calcule la matrice de gain de rétroaction <b>K</b> pour un système à entrée unique décrit par les matrices d'espace d'état <b>A</b> et <b>B</b>.

Les pôles en boucle fermée du système sous la loi de rétroaction <b>u = -Kx</b> sont déterminés par le vecteur spécifié <b>P</b>, où <b>P</b> représente les localisations des pôles souhaitées.

Les pôles en boucle fermée sont essentiellement les valeurs propres de la matrice <b>A - B*K</b>, calculées comme <b>P = eig(A - B*K)</b>.

Il est important de noter que cet algorithme utilise la formule d'Ackermann.

Cependant, les utilisateurs doivent être conscients que cette méthode peut ne pas être numériquement fiable, particulièrement pour les systèmes d'ordre supérieur à 10 ou pour les systèmes faiblement contrôlables.

Si l'algorithme rencontre une instabilité numérique ou si les pôles en boucle fermée dévient significativement (plus de 10%) des localisations souhaitées spécifiées dans <b>P</b>, un message d'avertissement est émis pour alerter l'utilisateur sur les problèmes potentiels.

Les utilisateurs sont invités à faire preuve de prudence et à envisager des méthodes alternatives pour les systèmes d'ordre supérieur ou faiblement contrôlables.

## 💡 Exemple

```matlab
A = [0 1 0; 0 0 1;-1 -5 -6];
B = [ 0; 0; 1];
P = [-10 -2-4i -2+4i];
K = acker(A, B, P)
```

## 🔗 Voir aussi

[place](../control_system/place.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
