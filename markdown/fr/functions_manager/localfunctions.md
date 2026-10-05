# localfunctions

Retourne les handles des fonctions locales du fichier courant.

## 📝 Syntaxe

- fh = localfunctions()

## 📤 Argument de sortie

- fh - un tableau de cellules de handles de fonctions.

## 📄 Description


<b>localfunctions</b> retourne un tableau de cellules de handles vers les fonctions locales definies dans le fichier courant. 

Si le contexte courant n'est pas un fichier avec des fonctions locales, le resultat est un tableau de cellules vide.

## 💡 Exemples

Appeler localfunctions depuis le contexte de commande.

```matlab
fh = localfunctions()
isequal(fh, {})
```
Retourner et appeler les handles des fonctions locales d'un fichier.

```matlab
% Enregistrer ce code dans un fichier nomme localfunctions_demo.m :
%
% function names = localfunctions_demo()
%   fh = localfunctions();
%   names = {func2str(fh{1}); func2str(fh{2})};
%   disp(fh{1}(3))
%   disp(fh{2}(3))
% end
%
% function y = add_one(x)
%   y = x + 1;
% end
%
% function y = double_value(x)
%   y = 2 * x;
% end

names = localfunctions_demo()
% Noms attendus :
% {'add_one'; 'double_value'}
```


## 🔗 Voir aussi

[which](../functions_manager/which.md), [func2str](../function_handle/func2str.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
