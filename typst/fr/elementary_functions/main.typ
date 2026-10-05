#import "nelson_help.typ": *

= Fonctions elementaires

Le module Fonctions elementaires fournit les operations mathematiques de base et les manipulations de matrices dans Nelson.

 Il inclut les calculs numeriques, les operations sur tableaux et matrices, la gestion des nombres complexes, l'arrondi et la mise a l'echelle, ainsi que les fonctions qui interrogent les proprietes des tableaux et matrices.

 Le module construit aussi des matrices speciales, des grilles et des sequences pour les algorithmes mathematiques et l'analyse numerique.

== Creation et forme des tableaux

Fonctions pour creer, remodeler et organiser des tableaux.

=== Functions

- #nlink(<elementary_functions:1_array_creation_shape.blkdiag>)[blkdiag]: Matrice diagonale par blocs
- #nlink(<elementary_functions:1_array_creation_shape.deal>)[deal]: Distribue les entrées vers les sorties.
- #nlink(<elementary_functions:1_array_creation_shape.linspace>)[linspace]: constructeur de vecteur à espacement linéaire.
- #nlink(<elementary_functions:1_array_creation_shape.logspace>)[logspace]: constructeur de vecteur à espacement logarithmique.
- #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid]: grille rectangulaire cartésienne en 2-D ou 3-D.
- #nlink(<elementary_functions:1_array_creation_shape.ndgrid>)[ndgrid]: Grille rectangulaire dans un espace à N dimensions
- #nlink(<elementary_functions:1_array_creation_shape.repelem>)[repelem]: Repete les elements d'un tableau.
- #nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat]: Répliquer et paver un tableau.
- #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape]: Redimensionne un vecteur ou une matrice en une matrice de taille différente.
- #nlink(<elementary_functions:1_array_creation_shape.squeeze>)[squeeze]: Supprimer les dimensions de longueur 1.

== Mathematiques elementaires

Fonctions numeriques elementaires, normes, arrondis, puissances, racines, logarithmes et restes.

=== Functions

- #nlink(<elementary_functions:2_elementary_math.abs>)[abs]: Valeur absolue
- #nlink(<elementary_functions:2_elementary_math.bsxfun>)[bsxfun]: Applique une fonction élément par élément avec expansion implicite
- #nlink(<elementary_functions:2_elementary_math.ceil>)[ceil]: Arrondir vers le haut
- #nlink(<elementary_functions:2_elementary_math.clip>)[clip]: Limiter des valeurs a un intervalle.
- #nlink(<elementary_functions:2_elementary_math.exp>)[exp]: Exponentielle
- #nlink(<elementary_functions:2_elementary_math.expm1>)[expm1]: Calcule exp(x) - 1.
- #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial]: Fonction factorielle
- #nlink(<elementary_functions:2_elementary_math.fix>)[fix]: Arrondir vers zéro
- #nlink(<elementary_functions:2_elementary_math.floor>)[floor]: Arrondir vers le bas
- #nlink(<elementary_functions:2_elementary_math.hypot>)[hypot]: Racine carrée de la somme des carrés
- #nlink(<elementary_functions:2_elementary_math.idivide>)[idivide]: Division entiere avec option d'arrondi.
- #nlink(<elementary_functions:2_elementary_math.log>)[log]: Logarithme naturel.
- #nlink(<elementary_functions:2_elementary_math.log10>)[log10]: Logarithme décimal (base 10).
- #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p]: log(1 + x) avec précision pour de petites valeurs de x.
- #nlink(<elementary_functions:2_elementary_math.log2>)[log2]: décomposer des nombres à virgule flottante en exposant et mantisse en base 2.
- #nlink(<elementary_functions:2_elementary_math.maxk>)[maxk]: k plus grands éléments d'un tableau
- #nlink(<elementary_functions:2_elementary_math.mink>)[mink]: k plus petits éléments d'un tableau
- #nlink(<elementary_functions:2_elementary_math.mod>)[mod]: Modulo après division.
- #nlink(<elementary_functions:2_elementary_math.nchoosek>)[nchoosek]: Coefficient binomial ou combinaisons.
- #nlink(<elementary_functions:2_elementary_math.nextpow2>)[nextpow2]: Exposant de la puissance de 2 immédiatement supérieure
- #nlink(<elementary_functions:2_elementary_math.norm>)[norm]: Normes de matrices et de vecteurs
- #nlink(<elementary_functions:2_elementary_math.normest>)[normest]: Estimation de la norme 2
- #nlink(<elementary_functions:2_elementary_math.nthroot>)[nthroot]: La racine 𝑛-ième réelle d'un nombre réel.
- #nlink(<elementary_functions:2_elementary_math.perms>)[perms]: Toutes les permutations possibles
- #nlink(<elementary_functions:2_elementary_math.pinv>)[pinv]: Pseudo-inverse de Moore-Penrose
- #nlink(<elementary_functions:2_elementary_math.pow2>)[pow2]: Exponentiation en base 2 et mise à l'échelle de nombres à virgule flottante.
- #nlink(<elementary_functions:2_elementary_math.rat>)[rat]: Approximation par une fraction rationnelle.
- #nlink(<elementary_functions:2_elementary_math.rats>)[rats]: Affichage rationnel.
- #nlink(<elementary_functions:2_elementary_math.rem>)[rem]: Reste après division.
- #nlink(<elementary_functions:2_elementary_math.round>)[round]: Arrondir à l'entier le plus proche
- #nlink(<elementary_functions:2_elementary_math.sign>)[sign]: Calculer la fonction signe d'un nombre.
- #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt]: Square root.

== Nombres complexes

Fonctions pour valeurs complexes et variantes reelles de fonctions elementaires.

=== Functions

- #nlink(<elementary_functions:3_complex_numbers.angle>)[angle]: Angle de phase
- #nlink(<elementary_functions:3_complex_numbers.complex>)[complex]: Crée un nombre complexe.
- #nlink(<elementary_functions:3_complex_numbers.conj>)[conj]: Conjugué complexe
- #nlink(<elementary_functions:3_complex_numbers.imag>)[imag]: Partie imaginaire d'un nombre complexe.
- #nlink(<elementary_functions:3_complex_numbers.real>)[real]: Partie réelle d'un nombre complexe.
- #nlink(<elementary_functions:3_complex_numbers.reallog>)[reallog]: Logarithme naturel avec resultat reel uniquement.
- #nlink(<elementary_functions:3_complex_numbers.realpow>)[realpow]: Puissance element par element avec resultat reel.
- #nlink(<elementary_functions:3_complex_numbers.realsqrt>)[realsqrt]: Racine carree avec resultat reel uniquement.
- #nlink(<elementary_functions:3_complex_numbers.unwrap>)[unwrap]: Corrige les angles de phase pour supprimer les sauts.

== Conversions de base

Fonctions pour conversion de base numerique, conversion de type et ordre des octets.

=== Functions

- #nlink(<elementary_functions:5_base_conversions.base2dec>)[base2dec]: Convertit un nombre d'une base donnée en décimal.
- #nlink(<elementary_functions:5_base_conversions.bin2dec>)[bin2dec]: Convertit un nombre en base 2 en décimal.
- #nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num]: Convertit une chaîne binaire en complément à deux en nombre.
- #nlink(<elementary_functions:5_base_conversions.cast>)[cast]: Convertit une variable vers un autre type de données
- #nlink(<elementary_functions:5_base_conversions.dec2base>)[dec2base]: Convertit un nombre décimal vers une autre base.
- #nlink(<elementary_functions:5_base_conversions.dec2bin>)[dec2bin]: Convertit un nombre décimal en base 2.
- #nlink(<elementary_functions:5_base_conversions.dec2hex>)[dec2hex]: Convertit un nombre décimal en base 16.
- #nlink(<elementary_functions:5_base_conversions.hex2dec>)[hex2dec]: Convertit un nombre en base 16 en décimal.
- #nlink(<elementary_functions:5_base_conversions.hex2num>)[hex2num]: Convertit une représentation hexadécimale IEEE en nombre.
- #nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin]: Convertit un nombre en sa représentation binaire.
- #nlink(<elementary_functions:5_base_conversions.num2hex>)[num2hex]: Convertit un nombre en sa représentation hexadécimale IEEE.
- #nlink(<elementary_functions:5_base_conversions.swapbytes>)[swapbytes]: Inverse l'ordre des octets.
- #nlink(<elementary_functions:5_base_conversions.typecast>)[typecast]: Convertit le type sans modifier les données sous-jacentes.

== Generation de matrices

Fonctions pour generer des matrices speciales.

=== Functions

- #nlink(<elementary_functions:6_matrix_generation.bernsteinMatrix>)[bernsteinMatrix]: Matrice de Bernstein
- #nlink(<elementary_functions:6_matrix_generation.gallery>)[gallery]: Générer des matrices de test et des données couramment utilisées pour des expériences numériques
- #nlink(<elementary_functions:6_matrix_generation.hadamard>)[hadamard]: Matrice de Hadamard
- #nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel]: Matrice de Hankel
- #nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb]: Matrice de Hilbert
- #nlink(<elementary_functions:6_matrix_generation.invhilb>)[invhilb]: Inverse d'une matrice de Hilbert
- #nlink(<elementary_functions:6_matrix_generation.magic>)[magic]: Magic square
- #nlink(<elementary_functions:6_matrix_generation.pascal>)[pascal]: Triangle de Pascal
- #nlink(<elementary_functions:6_matrix_generation.rosser>)[rosser]: Problème de test classique pour valeurs propres symétriques.
- #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz]: Matrice de Toeplitz
- #nlink(<elementary_functions:6_matrix_generation.vander>)[vander]: Matrice de Vandermonde
- #nlink(<elementary_functions:6_matrix_generation.wilkinson>)[wilkinson]: Matrice de test de valeurs propres de Wilkinson

== Indexation et dimensions

Fonctions pour indexation, dimensions, controles de forme, reorganisation et predicats structurels.

=== Functions

- #nlink(<elementary_functions:7_indexing_dimensions.allfinite>)[allfinite]: Vérifie si tous les éléments du tableau sont finis.
- #nlink(<elementary_functions:7_indexing_dimensions.circshift>)[circshift]: Rotation circulaire
- #nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter]: Filtre numérique 1-D
- #nlink(<elementary_functions:7_indexing_dimensions.find>)[find]: Trouver les elements non nuls
- #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip]: Inverser l'ordre des éléments
- #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim]: Inverser un tableau selon une dimension spécifiée
- #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr]: Inverser l'ordre des éléments de gauche à droite
- #nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud]: Inverser l'ordre des éléments de haut en bas
- #nlink(<elementary_functions:7_indexing_dimensions.histc>)[histc]: Comptage d'histogramme avec bornes explicites.
- #nlink(<elementary_functions:7_indexing_dimensions.histcounts>)[histcounts]: Comptage par classes d'histogramme.
- #nlink(<elementary_functions:7_indexing_dimensions.histcounts2>)[histcounts2]: Comptage par classes d'histogramme bivarie.
- #nlink(<elementary_functions:7_indexing_dimensions.ind2sub>)[ind2sub]: Convertir un indice linéaire en indices de sous-script
- #nlink(<elementary_functions:7_indexing_dimensions.ipermute>)[ipermute]: Inverse de permute
- #nlink(<elementary_functions:7_indexing_dimensions.isapprox>)[isapprox]: Renvoie vrai si les arguments sont approximativement égaux, dans la précision donnée.
- #nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn]: Déterminer si l'entrée est un vecteur colonne.
- #nlink(<elementary_functions:7_indexing_dimensions.isdiag>)[isdiag]: Vérifie si une matrice est diagonale.
- #nlink(<elementary_functions:7_indexing_dimensions.isequal>)[isequal]: Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs).
- #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln]: Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs ou NaN).
- #nlink(<elementary_functions:7_indexing_dimensions.isequalto>)[isequalto]: Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (même type, mêmes dimensions, mêmes valeurs ou NaN).
- #nlink(<elementary_functions:7_indexing_dimensions.isequalwithequalnans>)[isequalwithequalnans]: Compare des tableaux en considerant les valeurs NaN comme egales.
- #nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite]: Recherche les éléments finis.
- #nlink(<elementary_functions:7_indexing_dimensions.isinf>)[isinf]: Recherche les éléments infinis.
- #nlink(<elementary_functions:7_indexing_dimensions.ismatrix>)[ismatrix]: détermine si l'entrée est une matrice ou non
- #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan]: Recherche les éléments Not a Number.
- #nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow]: Déterminer si l'entrée est un vecteur ligne.
- #nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar]: Tester si l'entrée est un scalaire
- #nlink(<elementary_functions:7_indexing_dimensions.istril>)[istril]: Tester si une matrice est triangulaire infÃ©rieure
- #nlink(<elementary_functions:7_indexing_dimensions.istriu>)[istriu]: Vérifie si une matrice est triangulaire supérieure.
- #nlink(<elementary_functions:7_indexing_dimensions.isvector>)[isvector]: Vérifie si l'entrée est un vecteur.
- #nlink(<elementary_functions:7_indexing_dimensions.length>)[length]: Longueur d'un objet.
- #nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims]: Nombre de dimensions d'un tableau.
- #nlink(<elementary_functions:7_indexing_dimensions.numel>)[numel]: Nombre d'éléments.
- #nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute]: Permute les dimensions d'un tableau.
- #nlink(<elementary_functions:7_indexing_dimensions.rot90>)[rot90]: Fait pivoter un tableau de 90 degrés.
- #nlink(<elementary_functions:7_indexing_dimensions.shiftdim>)[shiftdim]: Décale les dimensions d'un tableau
- #nlink(<elementary_functions:7_indexing_dimensions.size>)[size]: Taille d'un objet.
- #nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows]: Trier les lignes d'un tableau.
- #nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[sub2ind]: Indices d'une matrice vers un indice linéaire
- #nlink(<elementary_functions:7_indexing_dimensions.substruct>)[substruct]: Crée un argument structure pour subsasgn ou subsref
- #nlink(<elementary_functions:7_indexing_dimensions.tril>)[tril]: Partie triangulaire inférieure d'une matrice
- #nlink(<elementary_functions:7_indexing_dimensions.triu>)[triu]: Partie triangulaire supérieure d'une matrice


#nested[
#pagebreak(weak: true)
#include "1_array_creation_shape/blkdiag.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/deal.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/linspace.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/logspace.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/meshgrid.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/ndgrid.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/repelem.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/repmat.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/reshape.typ"
#pagebreak(weak: true)
#include "1_array_creation_shape/squeeze.typ"
#pagebreak(weak: true)
#include "2_elementary_math/abs.typ"
#pagebreak(weak: true)
#include "2_elementary_math/bsxfun.typ"
#pagebreak(weak: true)
#include "2_elementary_math/ceil.typ"
#pagebreak(weak: true)
#include "2_elementary_math/clip.typ"
#pagebreak(weak: true)
#include "2_elementary_math/exp.typ"
#pagebreak(weak: true)
#include "2_elementary_math/expm1.typ"
#pagebreak(weak: true)
#include "2_elementary_math/factorial.typ"
#pagebreak(weak: true)
#include "2_elementary_math/fix.typ"
#pagebreak(weak: true)
#include "2_elementary_math/floor.typ"
#pagebreak(weak: true)
#include "2_elementary_math/hypot.typ"
#pagebreak(weak: true)
#include "2_elementary_math/idivide.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log10.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log1p.typ"
#pagebreak(weak: true)
#include "2_elementary_math/log2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/maxk.typ"
#pagebreak(weak: true)
#include "2_elementary_math/mink.typ"
#pagebreak(weak: true)
#include "2_elementary_math/mod.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nchoosek.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nextpow2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/norm.typ"
#pagebreak(weak: true)
#include "2_elementary_math/normest.typ"
#pagebreak(weak: true)
#include "2_elementary_math/nthroot.typ"
#pagebreak(weak: true)
#include "2_elementary_math/perms.typ"
#pagebreak(weak: true)
#include "2_elementary_math/pinv.typ"
#pagebreak(weak: true)
#include "2_elementary_math/pow2.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rat.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rats.typ"
#pagebreak(weak: true)
#include "2_elementary_math/rem.typ"
#pagebreak(weak: true)
#include "2_elementary_math/round.typ"
#pagebreak(weak: true)
#include "2_elementary_math/sign.typ"
#pagebreak(weak: true)
#include "2_elementary_math/sqrt.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/angle.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/complex.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/conj.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/imag.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/real.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/reallog.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/realpow.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/realsqrt.typ"
#pagebreak(weak: true)
#include "3_complex_numbers/unwrap.typ"
#pagebreak(weak: true)
#include "5_base_conversions/base2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/bin2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/bin2num.typ"
#pagebreak(weak: true)
#include "5_base_conversions/cast.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2base.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2bin.typ"
#pagebreak(weak: true)
#include "5_base_conversions/dec2hex.typ"
#pagebreak(weak: true)
#include "5_base_conversions/hex2dec.typ"
#pagebreak(weak: true)
#include "5_base_conversions/hex2num.typ"
#pagebreak(weak: true)
#include "5_base_conversions/num2bin.typ"
#pagebreak(weak: true)
#include "5_base_conversions/num2hex.typ"
#pagebreak(weak: true)
#include "5_base_conversions/swapbytes.typ"
#pagebreak(weak: true)
#include "5_base_conversions/typecast.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/bernsteinMatrix.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/gallery.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hadamard.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hankel.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/hilb.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/invhilb.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/magic.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/pascal.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/rosser.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/toeplitz.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/vander.typ"
#pagebreak(weak: true)
#include "6_matrix_generation/wilkinson.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/allfinite.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/circshift.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/filter.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/find.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flip.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flipdim.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/fliplr.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/flipud.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histc.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histcounts.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/histcounts2.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ind2sub.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ipermute.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isapprox.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/iscolumn.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isdiag.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequal.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequaln.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequalto.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isequalwithequalnans.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isfinite.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isinf.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ismatrix.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isnan.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isrow.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isscalar.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/istril.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/istriu.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/isvector.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/length.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/ndims.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/numel.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/permute.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/rot90.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/shiftdim.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/size.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/sortrows.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/sub2ind.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/substruct.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/tril.typ"
#pagebreak(weak: true)
#include "7_indexing_dimensions/triu.typ"
]
