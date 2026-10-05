# Fonctions elementaires


    
Le module Fonctions elementaires fournit les operations mathematiques de base et les manipulations de matrices dans Nelson.

    
Il inclut les calculs numeriques, les operations sur tableaux et matrices, la gestion des nombres complexes, l'arrondi et la mise a l'echelle, ainsi que les fonctions qui interrogent les proprietes des tableaux et matrices.

    
Le module construit aussi des matrices speciales, des grilles et des sequences pour les algorithmes mathematiques et l'analyse numerique.

  

## Creation et forme des tableaux


    
Fonctions pour creer, remodeler et organiser des tableaux.

  

### Functions

- [blkdiag](1_array_creation_shape/blkdiag.md) - Matrice diagonale par blocs
- [deal](1_array_creation_shape/deal.md) - Distribue les entrées vers les sorties.
- [linspace](1_array_creation_shape/linspace.md) - constructeur de vecteur à espacement linéaire.
- [logspace](1_array_creation_shape/logspace.md) - constructeur de vecteur à espacement logarithmique.
- [meshgrid](1_array_creation_shape/meshgrid.md) - grille rectangulaire cartésienne en 2-D ou 3-D.
- [ndgrid](1_array_creation_shape/ndgrid.md) - Grille rectangulaire dans un espace à N dimensions
- [repelem](1_array_creation_shape/repelem.md) - Repete les elements d'un tableau.
- [repmat](1_array_creation_shape/repmat.md) - Répliquer et paver un tableau.
- [reshape](1_array_creation_shape/reshape.md) - Redimensionne un vecteur ou une matrice en une matrice de taille différente.
- [squeeze](1_array_creation_shape/squeeze.md) - Supprimer les dimensions de longueur 1.

## Mathematiques elementaires


    
Fonctions numeriques elementaires, normes, arrondis, puissances, racines, logarithmes et restes.

  

### Functions

- [abs](2_elementary_math/abs.md) - Valeur absolue
- [bsxfun](2_elementary_math/bsxfun.md) - Applique une fonction élément par élément avec expansion implicite
- [ceil](2_elementary_math/ceil.md) - Arrondir vers le haut
- [clip](2_elementary_math/clip.md) - Limiter des valeurs a un intervalle.
- [exp](2_elementary_math/exp.md) - Exponentielle
- [expm1](2_elementary_math/expm1.md) - Calcule exp(x) - 1.
- [factorial](2_elementary_math/factorial.md) - Fonction factorielle
- [fix](2_elementary_math/fix.md) - Arrondir vers zéro
- [floor](2_elementary_math/floor.md) - Arrondir vers le bas
- [hypot](2_elementary_math/hypot.md) - Racine carrée de la somme des carrés
- [idivide](2_elementary_math/idivide.md) - Division entiere avec option d'arrondi.
- [log](2_elementary_math/log.md) - Logarithme naturel.
- [log10](2_elementary_math/log10.md) - Logarithme décimal (base 10).
- [log1p](2_elementary_math/log1p.md) - log(1 + x) avec précision pour de petites valeurs de x.
- [log2](2_elementary_math/log2.md) - décomposer des nombres à virgule flottante en exposant et mantisse en base 2.
- [maxk](2_elementary_math/maxk.md) - k plus grands éléments d'un tableau
- [mink](2_elementary_math/mink.md) - k plus petits éléments d'un tableau
- [mod](2_elementary_math/mod.md) - Modulo après division.
- [nchoosek](2_elementary_math/nchoosek.md) - Coefficient binomial ou combinaisons.
- [nextpow2](2_elementary_math/nextpow2.md) - Exposant de la puissance de 2 immédiatement supérieure
- [norm](2_elementary_math/norm.md) - Normes de matrices et de vecteurs
- [normest](2_elementary_math/normest.md) - Estimation de la norme 2
- [nthroot](2_elementary_math/nthroot.md) - La racine 𝑛-ième réelle d'un nombre réel.
- [perms](2_elementary_math/perms.md) - Toutes les permutations possibles
- [pinv](2_elementary_math/pinv.md) - Pseudo-inverse de Moore-Penrose
- [pow2](2_elementary_math/pow2.md) - Exponentiation en base 2 et mise à l'échelle de nombres à virgule flottante.
- [rat](2_elementary_math/rat.md) - Approximation par une fraction rationnelle.
- [rats](2_elementary_math/rats.md) - Affichage rationnel.
- [rem](2_elementary_math/rem.md) - Reste après division.
- [round](2_elementary_math/round.md) - Arrondir à l'entier le plus proche
- [sign](2_elementary_math/sign.md) - Calculer la fonction signe d'un nombre.
- [sqrt](2_elementary_math/sqrt.md) - Square root.

## Nombres complexes


    
Fonctions pour valeurs complexes et variantes reelles de fonctions elementaires.

  

### Functions

- [angle](3_complex_numbers/angle.md) - Angle de phase
- [complex](3_complex_numbers/complex.md) - Crée un nombre complexe.
- [conj](3_complex_numbers/conj.md) - Conjugué complexe
- [imag](3_complex_numbers/imag.md) - Partie imaginaire d'un nombre complexe.
- [real](3_complex_numbers/real.md) - Partie réelle d'un nombre complexe.
- [reallog](3_complex_numbers/reallog.md) - Logarithme naturel avec resultat reel uniquement.
- [realpow](3_complex_numbers/realpow.md) - Puissance element par element avec resultat reel.
- [realsqrt](3_complex_numbers/realsqrt.md) - Racine carree avec resultat reel uniquement.
- [unwrap](3_complex_numbers/unwrap.md) - Corrige les angles de phase pour supprimer les sauts.

## Conversions de base


    
Fonctions pour conversion de base numerique, conversion de type et ordre des octets.

  

### Functions

- [base2dec](5_base_conversions/base2dec.md) - Convertit un nombre d'une base donnée en décimal.
- [bin2dec](5_base_conversions/bin2dec.md) - Convertit un nombre en base 2 en décimal.
- [bin2num](5_base_conversions/bin2num.md) - Convertit une chaîne binaire en complément à deux en nombre.
- [cast](5_base_conversions/cast.md) - Convertit une variable vers un autre type de données
- [dec2base](5_base_conversions/dec2base.md) - Convertit un nombre décimal vers une autre base.
- [dec2bin](5_base_conversions/dec2bin.md) - Convertit un nombre décimal en base 2.
- [dec2hex](5_base_conversions/dec2hex.md) - Convertit un nombre décimal en base 16.
- [hex2dec](5_base_conversions/hex2dec.md) - Convertit un nombre en base 16 en décimal.
- [hex2num](5_base_conversions/hex2num.md) - Convertit une représentation hexadécimale IEEE en nombre.
- [num2bin](5_base_conversions/num2bin.md) - Convertit un nombre en sa représentation binaire.
- [num2hex](5_base_conversions/num2hex.md) - Convertit un nombre en sa représentation hexadécimale IEEE.
- [swapbytes](5_base_conversions/swapbytes.md) - Inverse l'ordre des octets.
- [typecast](5_base_conversions/typecast.md) - Convertit le type sans modifier les données sous-jacentes.

## Generation de matrices


    
Fonctions pour generer des matrices speciales.

  

### Functions

- [bernsteinMatrix](6_matrix_generation/bernsteinMatrix.md) - Matrice de Bernstein
- [gallery](6_matrix_generation/gallery.md) - Générer des matrices de test et des données couramment utilisées pour des expériences numériques
- [hadamard](6_matrix_generation/hadamard.md) - Matrice de Hadamard
- [hankel](6_matrix_generation/hankel.md) - Matrice de Hankel
- [hilb](6_matrix_generation/hilb.md) - Matrice de Hilbert
- [invhilb](6_matrix_generation/invhilb.md) - Inverse d'une matrice de Hilbert
- [magic](6_matrix_generation/magic.md) - Magic square
- [pascal](6_matrix_generation/pascal.md) - Triangle de Pascal
- [rosser](6_matrix_generation/rosser.md) - Problème de test classique pour valeurs propres symétriques.
- [toeplitz](6_matrix_generation/toeplitz.md) - Matrice de Toeplitz
- [vander](6_matrix_generation/vander.md) - Matrice de Vandermonde
- [wilkinson](6_matrix_generation/wilkinson.md) - Matrice de test de valeurs propres de Wilkinson

## Indexation et dimensions


    
Fonctions pour indexation, dimensions, controles de forme, reorganisation et predicats structurels.

  

### Functions

- [allfinite](7_indexing_dimensions/allfinite.md) - Vérifie si tous les éléments du tableau sont finis.
- [circshift](7_indexing_dimensions/circshift.md) - Rotation circulaire
- [filter](7_indexing_dimensions/filter.md) - Filtre numérique 1-D
- [find](7_indexing_dimensions/find.md) - Trouver les elements non nuls
- [flip](7_indexing_dimensions/flip.md) - Inverser l'ordre des éléments
- [flipdim](7_indexing_dimensions/flipdim.md) - Inverser un tableau selon une dimension spécifiée
- [fliplr](7_indexing_dimensions/fliplr.md) - Inverser l'ordre des éléments de gauche à droite
- [flipud](7_indexing_dimensions/flipud.md) - Inverser l'ordre des éléments de haut en bas
- [histc](7_indexing_dimensions/histc.md) - Comptage d'histogramme avec bornes explicites.
- [histcounts](7_indexing_dimensions/histcounts.md) - Comptage par classes d'histogramme.
- [histcounts2](7_indexing_dimensions/histcounts2.md) - Comptage par classes d'histogramme bivarie.
- [ind2sub](7_indexing_dimensions/ind2sub.md) - Convertir un indice linéaire en indices de sous-script
- [ipermute](7_indexing_dimensions/ipermute.md) - Inverse de permute
- [isapprox](7_indexing_dimensions/isapprox.md) - Renvoie vrai si les arguments sont approximativement égaux, dans la précision donnée.
- [iscolumn](7_indexing_dimensions/iscolumn.md) - Déterminer si l'entrée est un vecteur colonne.
- [isdiag](7_indexing_dimensions/isdiag.md) - Vérifie si une matrice est diagonale.
- [isequal](7_indexing_dimensions/isequal.md) - Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs).
- [isequaln](7_indexing_dimensions/isequaln.md) - Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs ou NaN).
- [isequalto](7_indexing_dimensions/isequalto.md) - Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (même type, mêmes dimensions, mêmes valeurs ou NaN).
- [isequalwithequalnans](7_indexing_dimensions/isequalwithequalnans.md) - Compare des tableaux en considerant les valeurs NaN comme egales.
- [isfinite](7_indexing_dimensions/isfinite.md) - Recherche les éléments finis.
- [isinf](7_indexing_dimensions/isinf.md) - Recherche les éléments infinis.
- [ismatrix](7_indexing_dimensions/ismatrix.md) - détermine si l'entrée est une matrice ou non
- [isnan](7_indexing_dimensions/isnan.md) - Recherche les éléments Not a Number.
- [isrow](7_indexing_dimensions/isrow.md) - Déterminer si l'entrée est un vecteur ligne.
- [isscalar](7_indexing_dimensions/isscalar.md) - Tester si l'entrée est un scalaire
- [istril](7_indexing_dimensions/istril.md) - Tester si une matrice est triangulaire infÃ©rieure
- [istriu](7_indexing_dimensions/istriu.md) - Vérifie si une matrice est triangulaire supérieure.
- [isvector](7_indexing_dimensions/isvector.md) - Vérifie si l'entrée est un vecteur.
- [length](7_indexing_dimensions/length.md) - Longueur d'un objet.
- [ndims](7_indexing_dimensions/ndims.md) - Nombre de dimensions d'un tableau.
- [numel](7_indexing_dimensions/numel.md) - Nombre d'éléments.
- [permute](7_indexing_dimensions/permute.md) - Permute les dimensions d'un tableau.
- [rot90](7_indexing_dimensions/rot90.md) - Fait pivoter un tableau de 90 degrés.
- [shiftdim](7_indexing_dimensions/shiftdim.md) - Décale les dimensions d'un tableau
- [size](7_indexing_dimensions/size.md) - Taille d'un objet.
- [sortrows](7_indexing_dimensions/sortrows.md) - Trier les lignes d'un tableau.
- [sub2ind](7_indexing_dimensions/sub2ind.md) - Indices d'une matrice vers un indice linéaire
- [substruct](7_indexing_dimensions/substruct.md) - Crée un argument structure pour subsasgn ou subsref
- [tril](7_indexing_dimensions/tril.md) - Partie triangulaire inférieure d'une matrice
- [triu](7_indexing_dimensions/triu.md) - Partie triangulaire supérieure d'une matrice

