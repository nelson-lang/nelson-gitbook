#import "../nelson_help.typ": *

= istft <signal_processing:6_time_frequency_analysis.istft>

Transformee de Fourier court terme inverse.

== Syntaxe

- #raw("X = istft(S)");
- #raw("X = istft(S, Fs)");
- #raw("X = istft(S, Fs, 'Window', window, 'OverlapLength', overlap, 'FFTLength', nfft)");
- #raw("X = istft(..., 'FrequencyRange', range)");

== Argument d'entrée

/ S: matrice de transformee court terme.
/ Fs: frequence d'echantillonnage acceptee pour compatibilite d'API.
/ window: fenetre de synthese.
/ overlap: longueur de recouvrement. Elle doit etre inferieure a la longueur de la fenetre.
/ nfft: longueur FFT. Elle doit etre superieure ou egale a la longueur de la fenetre.
/ range: plage de frequences de S : 'centered', 'twosided' ou 'onesided'.

== Argument de sortie

/ X: vecteur temporel reconstruit.

== Description

#strong[istft]; reconstruit un vecteur temporel depuis des spectres court terme par FFT inverse et normalisation par recouvrement-addition.


== Exemple

``````matlab

x = sin((0:31)' * 0.2);
[s, f, t] = stft(x, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');
y = istft(s, 10, 'Window', hamming(8), 'OverlapLength', 4, 'FFTLength', 16, 'FrequencyRange', 'onesided');

``````


== Voir aussi

#nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft];, #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
