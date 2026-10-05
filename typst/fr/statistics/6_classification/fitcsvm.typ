#import "../nelson_help.typ": *

= fitcsvm <statistics:6_classification.fitcsvm>

Ajuste un classifieur binaire par machine a vecteurs de support.

== Syntaxe

- #raw("mdl = fitcsvm(X, Y)");
- #raw("mdl = fitcsvm(X, Y, Name, Value)");
- #raw("label = predict(mdl, Xnew)");
- #raw("[label, score] = predict(mdl, Xnew)");

== Description

#strong[fitcsvm]; cree un objet #strong[ClassificationSVM]; a partir de predicteurs numeriques #strong[X]; et d'etiquettes a deux classes #strong[Y];.

 Les arguments nom-valeur incluent #strong[ClassNames];, #strong[KernelFunction];, #strong[KernelScale];, #strong[PolynomialOrder];, #strong[BoxConstraint];, #strong[Cost];, #strong[Standardize];, #strong[IterationLimit];, #strong[Tolerance]; et #strong[PredictorNames];. Les noyaux pris en charge sont #strong[linear];, #strong[gaussian];, #strong[rbf]; et #strong[polynomial];.


== Exemple

``````matlab
X = [0 0; 0 1; 1 0; 1 1; 5 5; 5 6; 6 5; 6 6];
Y = [1; 1; 1; 1; 2; 2; 2; 2];
mdl = fitcsvm(X, Y, 'KernelFunction', 'linear');
[label, score] = predict(mdl, [0.2 0.2; 5.2 5.2])
``````


== Voir aussi

#nlink(<statistics:6_classification.fitcknn>)[fitcknn];, #nlink(<statistics:6_classification.fitcdiscr>)[fitcdiscr];, #nlink(<statistics:6_classification.fitctree>)[fitctree];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
