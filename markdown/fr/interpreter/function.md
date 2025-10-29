# function

déclaration de fonction.

## 📝 Syntaxe

- function [out_1,...,out_M,varargout] = fname(in_1, ... , in_N, varargin)
- function fname(in_1, ... , in_N, varargin)
- function [out_1,...,out_M,varargout] = fname()
- function fname()

## 📄 Description

<b>function</b> ouvre une définition de fonction.

<b>endfunction</b> ferme une définition de fonction (optionnel, mais fortement recommandé).

## 💡 Exemple

dans un fichier : demo_function.m

```matlab

function r = demo_function(a, b)
  r = a + b;
endfunction

```

## 🔗 Voir aussi

[addpath](../functions_manager/addpath.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
