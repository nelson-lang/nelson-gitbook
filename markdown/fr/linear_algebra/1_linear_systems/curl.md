# curl

Rotationnel et vitesse angulaire d'un champ de vecteurs.

## 📝 Syntaxe

- curlz = curl(X, Y, U, V)
- curlz = curl(U, V)
- [curlz, cav] = curl(X, Y, U, V)
- [curlx, curly, curlz, cav] = curl(X, Y, Z, U, V, W)
- [curlx, curly, curlz, cav] = curl(U, V, W)

## 📥 Argument d'entrée

- X, Y, Z - Coordonnées de la grille (meshgrid). Optionnel ; une grille unitaire par défaut est utilisée sinon.
- U, V, W - Composantes du champ de vecteurs (même taille).

## 📤 Argument de sortie

- curlx, curly, curlz - Composantes du rotationnel du champ de vecteurs.
- cav - Vitesse angulaire, égale à la moitié du rotationnel.

## 📄 Description


<b>curl</b> calcule le rotationnel d'un champ de vecteurs 2-D ou 3-D. En deux dimensions il renvoie la seule composante hors-plan <b>curlz</b> ; en trois dimensions il renvoie les trois composantes du rotationnel. La vitesse angulaire <b>cav</b> vaut la moitié du rotationnel. 

Les dérivées partielles sont évaluées avec <b>gradient</b> sur la grille définie par <b>X</b>, <b>Y</b> (et <b>Z</b>).

## Fonction(s) utilisée(s)

gradient

## 💡 Exemple



```matlab
[x, y] = meshgrid(-3:3, -3:3);
u = -y;
v = x;
curlz = curl(x, y, u, v)
```


## 🔗 Voir aussi

[gradient](../../linear_algebra/1_linear_systems/gradient.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
