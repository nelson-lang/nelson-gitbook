# private functions

Fonctions privées.

## 📄 Description


Les fonctions privées servent un objectif précieux lorsque vous souhaitez restreindre l'accessibilité d'une fonction. 

Dans de nombreux cas, une seule fonction peut nécessiter l'accès à une ou plusieurs fonctions auxiliaires. 

lorsqu'une fonction auxiliaire solitaire est utilisée par plusieurs fonctions, il devient nécessaire de déplacer ces fonctions auxiliaires vers un sous-répertoire dédié nommé "private", situé dans le répertoire où se trouvent les fonctions qui nécessitent l'accès à ces fonctions auxiliaires. 

Pour illustrer ce concept, considérons une fonction, appelons-la <b>function1</b>, qui repose sur une fonction d'aide,<b>function2</b>, pour effectuer une partie substantielle de ses tâches, comme indiqué dans l'exemple ci-dessous. 

Dans ce scénario, si le chemin vers function1 est <b>directory/function1.m</b> et <b>function2</b> se trouve dans le répertoire <b>directory/private/function2.m</b>, alors <b>function2</b> n'est accessible qu'aux fonctions dans <b>directory</b>, telles que <b>function1</b>.

## 💡 Exemples

directory/function1.m

```matlab
function y = function1(x)
  y = function2(x)  +  1;
end

```
directory/private/function2.m

```matlab
function y = function2(x)
  y = 41;
end

```


## 🔗 Voir aussi

[addpath](../functions_manager/addpath.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
