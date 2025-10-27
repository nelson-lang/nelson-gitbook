# Licence FFTW

À propos de la licence FFTW.

## 📄 Description

La bibliothèque FFTW n'est plus distribuée dans Nelson.

Notez que FFTW est licenciée sous GPLv2 ou supérieure (voir https://www.fftw.org/doc/License-and-Copyright.html), mais les liaisons vers la bibliothèque dans ce module Nelson sont sous licence LGPL v3.0.

Cela signifie que le code utilisant la bibliothèque FFTW via les bindings FFTW est soumis aux conditions de licence de FFTW.

Le code utilisant des implémentations alternatives de l'API FFTW, telles que l'interface FFTW3 de MKL (https://software.intel.com/en-us/mkl-developer-reference-c-fftw3-interface-to-intel-math-kernel-library), est quant à lui soumis à la licence de l'alternative.

Si vous distribuez une œuvre dérivée ou combinée, c'est-à-dire un programme qui lie et est distribué avec la bibliothèque FFTW, cette distribution relève des termes de la GPL.

Sur les plateformes Windows, l'implémentation FFTW de MKL est utilisée et distribuée avec Nelson.

Sur les autres plateformes, si la bibliothèque FFTW est disponible et que l'utilisateur choisit de l'utiliser, la distribution est soumise aux termes de la GPL.

## 🔗 Voir aussi

[fft](../fftw/fft.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
