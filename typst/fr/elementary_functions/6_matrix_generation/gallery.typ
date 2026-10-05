#import "../nelson_help.typ": *

= gallery <elementary_functions:6_matrix_generation.gallery>

Générer des matrices de test et des données couramment utilisées pour des expériences numériques

== Syntaxe

- #raw("[A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn)");
- #raw("[A1,A2,...,Am] = gallery(matrixname,P1,P2,...,Pn,typename)");
- #raw("A = gallery(k)");
- #raw("A = gallery(\"circul\", v)");
- #raw("[v,beta] = gallery(\"house\", x)");
- #raw("[A,beta] = gallery(\"ipjfact\", n, k)");
- #raw("A = gallery(\"cauchy\", x, y)");

== Argument d'entrée

/ matrixname: nom de la famille de matrices à générer (chaîne ou vecteur de caractères), par exemple "circul", "cauchy", "grcar", "minij", "dramadah", "house", "ipjfact"
/ P1, P2, ..., Pn: paramètres dépendants de la famille : scalaires, vecteurs ou matrices qui déterminent la taille et les entrées (par exemple#raw("n");, vecteurs#raw("v");,#raw("x");,#raw("y");, ou indicateurs d'options)
/ n: entier positif spécifiant l'ordre ou la taille de la matrice
/ v, x, y: vecteurs utilisés comme paramètres (par exemple première ligne pour circulante, emplacements des points pour chebvand, ou paramètres de Cauchy)
/ k: option ou petit paramètre entier contrôlant le comportement de la famille (par exemple nombre de superdiagonales pour#strong[grcar]; ou sélecteurs de variantes pour#strong[dramadah];)
/ typename: type de données de sortie optionnel : "double" (par défaut) ou "single"

== Argument de sortie

/ A1,A2,...,Am: une ou plusieurs matrices ou tableaux produits par la famille choisie
/ A: matrice unique ou tableau multidimensionnel lorsque une seule sortie est demandée
/ v,beta,s: Sorties de Householder :#raw("v");(vecteur),#raw("beta");(scalaire), et optionnel#raw("s");retourné par #strong[house];
/ beta: détérminant ou sortie scalaire pour les familles qui le retournent explicitement (par exemple #strong[ipjfact]; retourne le déterminant#raw("beta");)

== Description

La fonction#strong[gallery]; retourne une collection de matrices de test standard et de données générées utilisées pour illustrer les concepts d'algèbre linéaire numérique, tester des algorithmes et reproduire des exemples de manuels.

 Utilisez l'argument#strong[matrixname]; pour sélectionner une famille ; les paramètres supplémentaires (tailles, vecteurs, options) dépendent de la famille choisie.

 Utilisations typiques : étudier la sensibilité et le conditionnement des valeurs propres, exercer des solveurs avec des matrices structurées (Toeplitz, Hankel, circulante), générer des matrices aléatoires ou spécialement structurées avec des propriétés singulières\/valeurs propres prescrites, ou obtenir des exemples canoniques pour l'enseignement et les tests.

 Le #strong[typename]; optionnel force le type de sortie numérique.

 Si omis, le type de sortie est déduit des entrées : la présence d'une entrée#raw("single");donne lieu à#raw("single");, sinon les sorties sont#raw("double");.

 

#table(
  columns: 3,
  table.header([Nom], [Syntaxe], [Remarques], ),
  [gallery(3)], [#raw("A = gallery(3)");], [Exemple classique 3×3 mal conditionné ; illustre la sensibilité des valeurs propres.], 
  [gallery(5)], [#raw("A = gallery(5)");], [Exemple 5×5 avec polynôme caractéristique exact \\(\\lambda^5\=0\\) ; numériquement les valeurs propres sont petites et sensibles.], 
  [circul], [#raw("A = gallery(\"circul\", v)");], [Matrice circulante : les lignes sont des décalages cycliques de#raw("v");; les valeurs propres sont la DFT de#raw("v");.], 
  [grcar], [#raw("A = gallery(\"grcar\", n, k)");], [Toeplitz avec -1 sur la sous-diagonale et des 1 sur la diagonale principale et les k sur-diagonales ; utile pour des exemples de pseudospectres.], 
  [minij], [#raw("A = gallery(\"minij\", n)");], [Matrice symétrique définie positive avec#raw("A(i,j)=min(i,j)");; l'inverse est tridiagonal (structure de différence seconde).], 
  [dramadah], [#raw("A = gallery(\"dramadah\", n, k)");], [Familles binaires (0\/1) ; certains k donnent des matrices de Toeplitz unimodulaires dont l'inverse est entière.], 
  [house], [#raw("[v,beta] = gallery(\"house\", x)");], [Retourne le vecteur de Householder#raw("v");et le scalaire#raw("beta");tels que#raw("H=I-beta*v*v'\n            "); reflète #raw("x"); sur un multiple de #raw("e1");.], 
  [binomial], [#raw("A = gallery(\"binomial\", n)");], [Matrice binomiale avec #raw("A^2 = 2^(n-1) I"); ; la matrice mise à l'échelle est involutive.], 
  [cauchy], [#raw("A = gallery(\"cauchy\", x, y)");], [Matrice de Cauchy#raw("A(i,j)=1/(x(i)+y(j))");; des formules explicites pour le déterminant et l'inverse existent.], 
  [ris], [#raw("A = gallery(\"ris\", n)");], [Matrice Hankel symétrique avec éléments 0.5\/(n-i-j+1.5) ; les valeurs propres se regroupent près de ±π\/2.], 
  [chebspec], [#raw("A = gallery(\"chebspec\", n, k)");], [Matrice de différenciation spectrale de Chebyshev. #raw("k");\=0 donne une forme nilpotente ; #raw("k");\=1 donne un opérateur non singulier, bien conditionné.], 
  [wilk], [#raw("gallery(\"wilk\", m)");], [Exemples de Wilkinson (petits systèmes triangulaires, W21+, etc.) illustrant des problèmes de stabilité.], 
  [sampling], [#raw("A = gallery(\"sampling\", x)");], [Matrice non symétrique avec valeurs propres entières 0..n-1 ; les vecteurs propres sont généralement mal conditionnés.], 
  [ipjfact], [#raw("[A,beta] = gallery(\"ipjfact\", n, k)");], [Matrice Hankel construite à partir de factorielles (ou de leurs réciproques) ; déterminant et inverse connus en forme fermée.], 
  [moler], [#raw("A = gallery(\"moler\", n, alpha)");], [Exemple symétrique définie positive produit comme #raw("U'*U");; peut présenter une petite valeur propre isolée.], 
  [lotkin], [#raw("A = gallery(\"lotkin\", n)");], [Matrice de type Hilbert avec première ligne de 1 ; extrêmement mal conditionnée, l'inverse a une structure entière.], 
  [chebvand], [#raw("A = gallery(\"chebvand\", x)");], [Matrice de type Vandermonde de Chebyshev : #raw("A(i,j)=T_{i-1}(x(j))");, utile pour l'interpolation spectrale et les bases polynomiales.], 
  [lehmer], [#raw("A = gallery(\"lehmer\", n)");], [Matrice de Lehmer avec entrées i\/j pour i ≤ j ; symétrique définie positive et mal conditionnée.], 
)

== Bibliographie

Voir les références dans Higham, N. J., Accuracy and Stability of Numerical Algorithms pour la galerie des matrices de test.

== Exemples

Exemple simple 3×3 mal conditionné

``````matlab
A = gallery(3)
``````

Créer et afficher une matrice circulante

``````matlab
C = gallery("circul",120);
imagesc(C);
axis square;
colorbar;
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];, #nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];, #nlink(<elementary_functions:6_matrix_generation.magic>)[magic];, #nlink(<elementary_functions:6_matrix_generation.pascal>)[pascal];, #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
