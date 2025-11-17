# gallery

Générer des matrices de test et des données couramment utilisées pour des expériences numériques

## 📝 Syntaxe

- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn)
- [A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn,typename)
- A = gallery(k)
- A = gallery("circul", v)
- [v,beta] = gallery("house", x)
- [A,beta] = gallery("ipjfact", n, k)
- A = gallery("cauchy", x, y)

## 📥 Argument d'entrée

- matrixname - nom de la famille de matrices à générer (chaîne ou vecteur de caractères), par exemple "circul", "cauchy", "grcar", "minij", "dramadah", "house", "ipjfact"
- P1, P2, ..., Pn - paramètres dépendants de la famille : scalaires, vecteurs ou matrices qui déterminent la taille et les entrées (par exemple <code>n</code>, vecteurs <code>v</code>, <code>x</code>, <code>y</code>, ou indicateurs d'options)
- n - entier positif spécifiant l'ordre ou la taille de la matrice
- v, x, y - vecteurs utilisés comme paramètres (par exemple première ligne pour circulante, emplacements des points pour chebvand, ou paramètres de Cauchy)
- k - option ou petit paramètre entier contrôlant le comportement de la famille (par exemple nombre de superdiagonales pour <b>grcar</b> ou sélecteurs de variantes pour <b>dramadah</b>)
- typename - type de données de sortie optionnel : "double" (par défaut) ou "single"

## 📤 Argument de sortie

- A1,A2,...,Am - une ou plusieurs matrices ou tableaux produits par la famille choisie
- A - matrice unique ou tableau multidimensionnel lorsque une seule sortie est demandée
- v,beta,s - Sorties de Householder : <code>v</code> (vecteur), <code>beta</code> (scalaire), et optionnel <code>s</code> retourné par <b>house</b>
- beta - détérminant ou sortie scalaire pour les familles qui le retournent explicitement (par exemple <b>ipjfact</b> retourne le déterminant <code>beta</code>)

## 📄 Description

La fonction <b>gallery</b> retourne une collection de matrices de test standard et de données générées utilisées pour illustrer les concepts d'algèbre linéaire numérique, tester des algorithmes et reproduire des exemples de manuels.

Utilisez l'argument <b>matrixname</b> pour sélectionner une famille ; les paramètres supplémentaires (tailles, vecteurs, options) dépendent de la famille choisie.

Utilisations typiques : étudier la sensibilité et le conditionnement des valeurs propres, exercer des solveurs avec des matrices structurées (Toeplitz, Hankel, circulante), générer des matrices aléatoires ou spécialement structurées avec des propriétés singulières/valeurs propres prescrites, ou obtenir des exemples canoniques pour l'enseignement et les tests.

Le <b>typename</b> optionnel force le type de sortie numérique.

Si omis, le type de sortie est déduit des entrées : la présence d'une entrée <code>single</code> donne lieu à <code>single</code>, sinon les sorties sont <code>double</code>.

## 📚 Bibliographie

Voir les références dans Higham, N. J., Accuracy and Stability of Numerical Algorithms pour la galerie des matrices de test.

## 💡 Exemples

Exemple simple 3×3 mal conditionné

```matlab
A = gallery(3)
```

Créer et afficher une matrice circulante

```matlab
C = gallery("circul",120);
imagesc(C);
axis square;
colorbar;
```

## 🔗 Voir aussi

[hankel](../elementary_functions/hankel.md), [hilb](../elementary_functions/hilb.md), [magic](../elementary_functions/magic.md), [pascal](../elementary_functions/pascal.md), [toeplitz](../elementary_functions/toeplitz.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
