#import "nelson_help.typ": *

= arguments <interpreter:arguments>

bloc de validation des arguments de fonction.

== Syntaxe

- #raw("arguments, argSpecs, end");
- #raw("arguments (Input), argSpecs, end");
- #raw("arguments (Repeating), argSpecs, end");
- #raw("arguments (Output), argSpecs, end");
- #raw("arguments (Output,Repeating), argSpec, end");

== Description

#strong[arguments ... end]; déclare les arguments d'entrée pour une fonction. Le bloc est optionnel. Si un ou plusieurs blocs #strong[arguments]; sont inclus, ils doivent tous apparaître avant la première ligne exécutable de la fonction. Un bloc sans qualificateur est traité comme un bloc d'entrée.

 Chaque déclaration d'argument suit cette forme :

 #raw("argName (dimensions) class {validators} = defaultValue");

 #strong[(dimensions)]; : Taille de l'entrée spécifiée sous forme de liste séparée par des virgules d'entiers ou de deux-points, par exemple #raw("(1,1)");, #raw("(1,:)");, ou #raw("(3,5,2)");. Un deux-points permet n'importe quelle longueur dans cette dimension. L'entrée doit correspondre exactement aux dimensions déclarées, ou être compatible avec elles (par exemple, un vecteur colonne est compatible avec #raw("(1,:)"); et est automatiquement redimensionné). Les expressions ne sont pas autorisées dans les dimensions.

 #strong[class]; : Un nom de classe unique tel que #raw("double");, #raw("char");, ou #raw("string");. La valeur est convertie en cette classe lorsque cela est possible. Si omis, toute classe est acceptée.

 #strong[{validators}]; : Une liste séparée par des virgules de fonctions de validation, entourée d'accolades , par exemple #raw("{mustBeNumeric, mustBeReal}");. Les fonctions de validation génèrent une erreur lorsque la condition n'est pas remplie ; contrairement à la classe, elles ne modifient jamais la valeur de l'argument.

 #strong[\= defaultValue]; : Une expression qui fournit une valeur par défaut et rend l'argument optionnel. L'expression peut faire référence aux arguments déclarés précédemment. Les arguments optionnels doivent être positionnés après tous les arguments requis dans la signature de la fonction et dans le bloc #strong[arguments];.

 #strong[arguments (Repeating) ... end]; déclare des arguments d'entrée répétitifs. Une fonction ne peut contenir qu'un seul bloc d'entrée répétitif. Nelson crée un tableau de cellules pour chaque argument répétitif contenant toutes les valeurs passées pour cet argument. Si la fonction possède également des arguments nom-valeur, ceux-ci doivent être déclarés dans un bloc #strong[arguments]; séparé après le bloc répétitif.

 #strong[arguments (Output) ... end]; déclare des arguments de sortie. Les blocs de sortie doivent apparaître après tous les blocs d'entrée mais avant la première ligne exécutable de la fonction. Lorsque des blocs d'entrée et de sortie sont présents, il est recommandé d'utiliser les qualificateurs explicites #strong[(Input)]; et #strong[(Output)]; pour une meilleure lisibilité. Les arguments de sortie ne peuvent pas définir de valeurs par défaut, et les fonctions de validation appliquées à un argument de sortie ne peuvent pas faire référence à d'autres arguments de sortie.

 #strong[arguments (Output,Repeating) ... end]; déclare un seul argument de sortie répétitif. Au maximum un argument de sortie répétitif est autorisé par fonction.#raw("varargout"); peut apparaître dans un bloc de sortie répétitif uniquement lorsqu'il est le seul argument de sortie.

 Pour les arguments nom-valeur, utilisez la notation #raw("nv.name"); dans le bloc #strong[arguments];, où #raw("nv"); correspond au nom de la structure utilisé dans la signature de la fonction.

 Les blocs #strong[arguments]; ne peuvent pas être utilisés dans les fonctions imbriquées, les méthodes abstraites ou les méthodes destructrices de classes handle.


== Exemples

Restreindre la taille et le type d'un argument d'entrée. Un vecteur colonne est accepté car il est compatible avec la taille (1,:) et est automatiquement redimensionné.

``````matlab

function [m, s] = twoStats(x)
  arguments
    x (1,:) {mustBeNumeric}
  end
  m = mean(x, 'all');
  s = std(x, 1, 'all');
end

``````

Argument optionnel avec une valeur par défaut dérivée d'un argument déclaré précédemment.

``````matlab

function c = myMul(a, b, c)
  arguments
    a uint32
    b uint32
    c uint32 = a .* b
  end
end

``````

Utiliser des fonctions de validation pour restreindre les valeurs des arguments. L'argument method est optionnel et par défaut vaut 'linear'.

``````matlab

function r = myInterp(x, method)
  arguments
    x (1,:) double {mustBeNumeric, mustBeReal}
    method (1,:) char {mustBeMember(method, {'linear', 'nearest'})} = 'linear'
  end
  r = {x, method};
end

``````

Déclarer des arguments nom-valeur optionnels en utilisant une structure. Les options LineStyle et LineWidth ont des valeurs par défaut, donc elles sont optionnelles.

``````matlab

function myRectangle(X, Y, options)
  arguments
    X double
    Y double
    options.LineStyle (1,1) string = "-"
    options.LineWidth (1,1) {mustBeNumeric} = 1
  end
  % Function code
end

``````

Déclarer des arguments d'entrée répétitifs. Nelson crée un tableau de cellules pour chaque argument répétitif.

``````matlab

function fRepeat(x, y, style)
  arguments (Repeating)
    x (1,:) double
    y (1,:) double
    style {mustBeMember(style, {'--', ':'})}
  end
  z = reshape([x; y; style], 1, []);
  if ~isempty(z)
    plot(z{:});
  end
end

``````

Valider à la fois les arguments d'entrée et de sortie en utilisant des blocs séparés.

``````matlab

function out = myFunction(A, B, C)
  arguments (Input)
    A (1,1) string
    B (1,:) double
    C (2,2) cell
  end
  arguments (Output)
    out (1,:) double
  end
  out = B;
end

``````

Arguments d'entrée et de sortie répétitifs avec validation. Restreint à la fois les entrées et les sorties aux vecteurs ligne.

``````matlab

function vectorSum = repeatSum(a, b)
  arguments (Input,Repeating)
    a (1,:)
    b (1,:)
  end
  arguments (Output,Repeating)
    vectorSum (1,:)
  end
  n = numel(a);
  vectorSum{n} = a{n} + b{n};
  for i = 1:n-1
    vectorSum{i} = a{i} + b{i};
  end
end

``````


== Voir aussi

#nlink(<interpreter:function>)[function];, #nlink(<interpreter:iskeyword>)[iskeyword];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [version initiale],
)

// Auteur: Allan CORNET
