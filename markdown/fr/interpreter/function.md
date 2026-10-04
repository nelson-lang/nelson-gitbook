# function

déclaration de fonction.

## 📝 Syntaxe

- function [out\_1,...,out\_M,varargout] = fname(in_1, ... , in_N, varargin)
- function fname(in_1, ... , in_N, varargin)
- function [out\_1,...,out\_M,varargout] = fname()
- function fname()
- function nestedFunction(...), statements, end
- function fname(...), statements, end
- instructions de script, function localFunction(...), statements, end, instructions de script

## 📄 Description

<b>function</b> ouvre une définition de fonction.

<b>end</b> ferme une définition de fonction. L'ancien mot-clé <b>endfunction</b> n'est pas supporté.

Un fichier fonction simple peut se terminer en fin de fichier, mais <b>end</b> est requis pour fermer sans ambiguïté les fonctions imbriquées, les fonctions locales et les blocs.

Une fonction peut être écrite sur une seule ligne en plaçant un <b>,</b> ou un <b>;</b> après la signature, par exemple <b>function y = f(x), y = x + 1; end</b>.

Un fichier fonction peut contenir des fonctions locales après la fonction principale. Un fichier script peut contenir des fonctions locales entrelacées avec les instructions de script : une fonction locale peut apparaître avant, entre ou après les instructions, et des instructions de script peuvent suivre une définition de fonction locale.

Dans un script, les fonctions locales doivent être fermées par un <b>end</b> explicite. Nelson rejette toujours les fonctions locales déclarées dans des contextes ouverts comme <b>if</b>, <b>for</b>, <b>while</b>, <b>switch</b> et <b>try</b>.

Les fonctions imbriquées sont supportées dans les corps de fonctions parentes. Elles peuvent lire et modifier les variables de l'espace de travail de la fonction parente, et les handles vers des fonctions imbriquées conservent leur état capturé.

## 💡 Exemples

dans un fichier : demo_function.m

```matlab

function r = demo_function(a, b)
  r = a + b;
end

```

Fonction imbriquée partageant une variable parente.

```matlab

function y = nested_demo(x)
  scale = 2;
  y = inner(x);

  function r = inner(v)
    r = v * scale;
  end
end

```

Script avec fonctions locales finales.

```matlab

x = local_add_one(41);

function y = local_add_one(v)
  y = v + 1;
end

```

Script avec fonctions locales entrelacées entre les instructions.

```matlab

a = 10;

function y = times_two(v)
  y = v * 2;
end

b = times_two(a);

function z = minus_one(v)
  z = v - 1;
end

c = minus_one(b)

```

## 🔗 Voir aussi

[addpath](../functions_manager/addpath.md), [arguments](../interpreter/arguments.md), [indexation de resultat temporaire](../interpreter/temporary_result_indexing.md).

## 🕔 Historique

| Version | 📄 Description                                                                                                                                                                         |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                                                                                                                                       |
| 2.0.0   | fonctions imbriquées, fonctions locales entrelacées avec les instructions dans les scripts, blocs de validation d'arguments, arguments nom-valeur et indexation de résultat temporaire |

<!--
## 👤 Auteur

Allan CORNET
-->
