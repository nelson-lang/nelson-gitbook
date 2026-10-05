#import "nelson_help.typ": *

= FFTW

Le module FFTW fournit des outils pour calculer les transformées de Fourier rapides dans Nelson.

 Il prend en charge les transformées unidimensionnelles, bidimensionnelles et multidimensionnelles, ainsi que les transformées inverses et les manipulations dans le domaine fréquentiel.

 Le module permet une analyse spectrale et un traitement du signal efficaces, en s'appuyant sur des algorithmes haute performance pour les données réelles et complexes.

== Functions

- #nlink(<fftw:About_FFTW_license>)[Licence FFTW]: À propos de la licence FFTW.
- #nlink(<fftw:FFTWwrapper>)[FFTWwrapper]: charger\/libérer la bibliothèque FFTW dynamiquement.
- #nlink(<fftw:fft>)[fft]: Transformée de Fourier rapide.
- #nlink(<fftw:fft2>)[fft2]: Transformée de Fourier 2-D rapide.
- #nlink(<fftw:fftn>)[fftn]: Transformée de Fourier rapide N-dimensionnelle.
- #nlink(<fftw:fftshift>)[fftshift]: Décaler la composante fréquence nulle au centre du spectre.
- #nlink(<fftw:fftw>)[fftw]: fonction pour déterminer l'algorithme FFT.
- #nlink(<fftw:ifft>)[ifft]: Transformée de Fourier inverse rapide.
- #nlink(<fftw:ifft2>)[ifft2]: Transformee de Fourier inverse rapide 2-D.
- #nlink(<fftw:ifftn>)[ifftn]: Transformée de Fourier inverse multidimensionnelle.
- #nlink(<fftw:ifftshift>)[ifftshift]: inverse de fftshift


#nested[
#pagebreak(weak: true)
#include "About_FFTW_license.typ"
#pagebreak(weak: true)
#include "FFTWwrapper.typ"
#pagebreak(weak: true)
#include "fft.typ"
#pagebreak(weak: true)
#include "fft2.typ"
#pagebreak(weak: true)
#include "fftn.typ"
#pagebreak(weak: true)
#include "fftshift.typ"
#pagebreak(weak: true)
#include "fftw.typ"
#pagebreak(weak: true)
#include "ifft.typ"
#pagebreak(weak: true)
#include "ifft2.typ"
#pagebreak(weak: true)
#include "ifftn.typ"
#pagebreak(weak: true)
#include "ifftshift.typ"
]
