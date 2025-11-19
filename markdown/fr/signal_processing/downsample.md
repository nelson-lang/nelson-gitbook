# downsample

Sous-échantillonner un signal par un facteur entier.

## 📝 Syntaxe

- Y = downsample(X, n)
- Y = downsample(X, n, phase)
- Y = downsample(X, n, phase, dim)

## 📥 Argument d'entrée

- X - séquence d'entrée. Vecteur ou matrice. Si X est une matrice, les colonnes sont traitées indépendamment par défaut.
- n - facteur entier positif de sous-échantillonnage (n > 0).
- phase - entier optionnel dans la plage 0..n-1 (par défaut 0). La sortie commence à X(phase+1) puis prend chaque n-ième échantillon.
- dim - dimension optionnelle le long de laquelle sous-échantillonner. Si omise, le sous-échantillonnage est appliqué aux colonnes pour les entrées 2D.

## 📤 Argument de sortie

- Y - résultat sous-échantillonné : éléments de X pris tous les n échantillons en commençant à l'indice (phase + 1) le long de la dimension spécifiée.

## 📄 Description

La fonction<b>downsample</b> renvoie chaque n-ième échantillon de la séquence d'entrée X, en commençant à l'indice d'échantillon (phase + 1). Par exemple, <b>downsample(X, 2)</b> renvoie les échantillons d'indice impair de X (1,3,5,...). Si X est une matrice, l'opération est appliquée par colonne par défaut, sauf si une dimension est spécifiée.

Aucun filtrage anti-repliement n'est effectué ; si vous devez réduire le contenu haute fréquence avant la décimation, envisagez d'utiliser <b>decimate</b> ou d'appliquer d'abord un filtre passe-bas.

## 💡 Exemple

```matlab

% Sous-échantillonner un vecteur par 2
X = 1:10;
Y = downsample(X, 2);
% Y est [1 3 5 7 9]

% Sous-échantillonner avec phase = 1 (commencer au deuxième élément)
Y2 = downsample(X, 3, 1);
% Y2 est [2 5 8]

% Sous-échantillonner les colonnes d'une matrice par 2
A = reshape(1:12, 4, 3);
B = downsample(A, 2);

```

## 🔗 Voir aussi

[interp1](../special_functions/interp1.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
