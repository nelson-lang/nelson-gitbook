#import "nelson_help.typ": *

= Analyse de donnees

Le module Analyse de donnees fournit des outils pour effectuer des operations numeriques et des analyses basees sur des tableaux dans Nelson.

 Il prend en charge les operations cumulatives, le tri, l'agregation, la convolution et l'identification des valeurs uniques ou manquantes.

 Ce module couvre le traitement, le resume et l'exploration de jeux de donnees sous forme de tableaux.

== Functions

- #nlink(<data_analysis:accumarray>)[accumarray]: Construit un tableau par accumulation.
- #nlink(<data_analysis:allbetween>)[allbetween]: Determine si tous les elements sont compris entre des bornes.
- #nlink(<data_analysis:bounds>)[bounds]: Plus petits et plus grands elements d'un tableau.
- #nlink(<data_analysis:conv>)[conv]: Convolution et multiplication de polynômes.
- #nlink(<data_analysis:conv2>)[conv2]: Convolution 2D.
- #nlink(<data_analysis:cummax>)[cummax]: Maximum cumulatif des elements d'un tableau.
- #nlink(<data_analysis:cummin>)[cummin]: Minimum cumulatif des elements d'un tableau.
- #nlink(<data_analysis:cumprod>)[cumprod]: Produit cumulatif des éléments d'un tableau.
- #nlink(<data_analysis:cumsum>)[cumsum]: Somme cumulative des éléments d'un tableau.
- #nlink(<data_analysis:detrend>)[detrend]: Retire une tendance polynomiale.
- #nlink(<data_analysis:discretize>)[discretize]: Regrouper des donnees numeriques en intervalles.
- #nlink(<data_analysis:fillmissing>)[fillmissing]: Remplit les valeurs manquantes.
- #nlink(<data_analysis:groupcounts>)[groupcounts]: Compte les groupes.
- #nlink(<data_analysis:groupsummary>)[groupsummary]: Calcule des resumes groupes de table.
- #nlink(<data_analysis:intersect>)[intersect]: Intersection ensembliste de deux tableaux.
- #nlink(<data_analysis:isbetween>)[isbetween]: Determine les elements compris entre des bornes inferieure et superieure.
- #nlink(<data_analysis:islocalmax>)[islocalmax]: Détecte les maxima locaux des données.
- #nlink(<data_analysis:islocalmin>)[islocalmin]: Détecte les minima locaux des données.
- #nlink(<data_analysis:ismembertol>)[ismembertol]: Appartenance à un ensemble à une tolérance près
- #nlink(<data_analysis:ismissing>)[ismissing]: Vérifier les valeurs manquantes.
- #nlink(<data_analysis:issorted>)[issorted]: Détermine si un tableau est trié.
- #nlink(<data_analysis:max>)[max]: Valeurs maximales d'un tableau.
- #nlink(<data_analysis:min>)[min]: Valeurs minimales d'un tableau.
- #nlink(<data_analysis:movmad>)[movmad]: Ecart absolu median mobile.
- #nlink(<data_analysis:movmax>)[movmax]: Maximum mobile.
- #nlink(<data_analysis:movmean>)[movmean]: Moyenne mobile.
- #nlink(<data_analysis:movmedian>)[movmedian]: Mediane mobile.
- #nlink(<data_analysis:movmin>)[movmin]: Minimum mobile.
- #nlink(<data_analysis:movprod>)[movprod]: Produit mobile.
- #nlink(<data_analysis:movstd>)[movstd]: Ecart type mobile.
- #nlink(<data_analysis:movsum>)[movsum]: Somme mobile.
- #nlink(<data_analysis:movvar>)[movvar]: Variance mobile.
- #nlink(<data_analysis:normalize>)[normalize]: Normalise les données
- #nlink(<data_analysis:prod>)[prod]: Produit des éléments d'un tableau.
- #nlink(<data_analysis:rmmissing>)[rmmissing]: Supprime les donnees manquantes.
- #nlink(<data_analysis:setdiff>)[setdiff]: Difference ensembliste de deux tableaux.
- #nlink(<data_analysis:setxor>)[setxor]: Ou exclusif ensembliste de deux tableaux.
- #nlink(<data_analysis:smoothdata>)[smoothdata]: Lisse des donnees bruitees.
- #nlink(<data_analysis:sort>)[sort]: Trier les éléments d'un tableau (algorithme de tri rapide).
- #nlink(<data_analysis:standardizeMissing>)[standardizeMissing]: Convertit des indicateurs en valeurs manquantes standard.
- #nlink(<data_analysis:subspace>)[subspace]: Mesure de distance (angle) entre deux sous-espaces engendrés par les colonnes de matrices.
- #nlink(<data_analysis:sum>)[sum]: Somme des éléments d'un tableau.
- #nlink(<data_analysis:summary>)[summary]: Resumer les variables de table ou les valeurs categorielles.
- #nlink(<data_analysis:union>)[union]: Union ensembliste de deux tableaux.
- #nlink(<data_analysis:unique>)[unique]: Valeurs uniques.
- #nlink(<data_analysis:uniquetol>)[uniquetol]: Valeurs uniques à une tolérance près.


#nested[
#pagebreak(weak: true)
#include "accumarray.typ"
#pagebreak(weak: true)
#include "allbetween.typ"
#pagebreak(weak: true)
#include "bounds.typ"
#pagebreak(weak: true)
#include "conv.typ"
#pagebreak(weak: true)
#include "conv2.typ"
#pagebreak(weak: true)
#include "cummax.typ"
#pagebreak(weak: true)
#include "cummin.typ"
#pagebreak(weak: true)
#include "cumprod.typ"
#pagebreak(weak: true)
#include "cumsum.typ"
#pagebreak(weak: true)
#include "detrend.typ"
#pagebreak(weak: true)
#include "discretize.typ"
#pagebreak(weak: true)
#include "fillmissing.typ"
#pagebreak(weak: true)
#include "groupcounts.typ"
#pagebreak(weak: true)
#include "groupsummary.typ"
#pagebreak(weak: true)
#include "intersect.typ"
#pagebreak(weak: true)
#include "isbetween.typ"
#pagebreak(weak: true)
#include "islocalmax.typ"
#pagebreak(weak: true)
#include "islocalmin.typ"
#pagebreak(weak: true)
#include "ismembertol.typ"
#pagebreak(weak: true)
#include "ismissing.typ"
#pagebreak(weak: true)
#include "issorted.typ"
#pagebreak(weak: true)
#include "max.typ"
#pagebreak(weak: true)
#include "min.typ"
#pagebreak(weak: true)
#include "movmad.typ"
#pagebreak(weak: true)
#include "movmax.typ"
#pagebreak(weak: true)
#include "movmean.typ"
#pagebreak(weak: true)
#include "movmedian.typ"
#pagebreak(weak: true)
#include "movmin.typ"
#pagebreak(weak: true)
#include "movprod.typ"
#pagebreak(weak: true)
#include "movstd.typ"
#pagebreak(weak: true)
#include "movsum.typ"
#pagebreak(weak: true)
#include "movvar.typ"
#pagebreak(weak: true)
#include "normalize.typ"
#pagebreak(weak: true)
#include "prod.typ"
#pagebreak(weak: true)
#include "rmmissing.typ"
#pagebreak(weak: true)
#include "setdiff.typ"
#pagebreak(weak: true)
#include "setxor.typ"
#pagebreak(weak: true)
#include "smoothdata.typ"
#pagebreak(weak: true)
#include "sort.typ"
#pagebreak(weak: true)
#include "standardizeMissing.typ"
#pagebreak(weak: true)
#include "subspace.typ"
#pagebreak(weak: true)
#include "sum.typ"
#pagebreak(weak: true)
#include "summary.typ"
#pagebreak(weak: true)
#include "union.typ"
#pagebreak(weak: true)
#include "unique.typ"
#pagebreak(weak: true)
#include "uniquetol.typ"
]
