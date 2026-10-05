#import "nelson_help.typ": *

= Traitement du signal

Le module Traitement du signal fournit des outils pour analyser, filtrer, transformer et reechantillonner des signaux echantillonnes dans Nelson.

 Il inclut des fonctions de fenetrage, de conception de filtres FIR et IIR, de filtrage numerique, de conversions poles-zeros et sections du second ordre, de correlation croisee, et de conversions entre representations en magnitude, puissance et decibels.

 Le module prend egalement en charge le traitement multirate, l'estimation spectrale, l'analyse temps-frequence, la generation de formes d'onde et les mesures courantes de signal.

== Generation et pretraitement des signaux

Fonctions pour creer, reechantillonner, lisser, filtrer et preparer des signaux.

=== Functions

- #nlink(<signal_processing:1_signal_generation_preprocessing.chirp>)[chirp]: Signal cosinus a frequence balayee.
- #nlink(<signal_processing:1_signal_generation_preprocessing.decimate>)[decimate]: Filtre passe-bas puis sous-echantillonne un vecteur.
- #nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample]: Sous-échantillonner un signal par un facteur entier.
- #nlink(<signal_processing:1_signal_generation_preprocessing.filter2>)[filter2]: Filtre numérique 2-D.
- #nlink(<signal_processing:1_signal_generation_preprocessing.hampel>)[hampel]: Filtrage d'aberrants par Hampel.
- #nlink(<signal_processing:1_signal_generation_preprocessing.interp>)[interp]: Interpole un vecteur par un facteur entier.
- #nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1]: Filtre median unidimensionnel.
- #nlink(<signal_processing:1_signal_generation_preprocessing.rectpuls>)[rectpuls]: Impulsion rectangulaire échantillonnée.
- #nlink(<signal_processing:1_signal_generation_preprocessing.resample>)[resample]: Change la frequence d'echantillonnage par un facteur rationnel.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth]: Signal dent de scie ou triangulaire.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sgolay>)[sgolay]: Coefficients de filtre Savitzky-Golay.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt]: Filtre de lissage Savitzky-Golay.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sinc>)[sinc]: Fonction sinc.
- #nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square]: Signal carré.
- #nlink(<signal_processing:1_signal_generation_preprocessing.tripuls>)[tripuls]: Impulsion triangulaire échantillonnée.
- #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn]: Surechantillonne, filtre en FIR, puis sous-echantillonne.
- #nlink(<signal_processing:1_signal_generation_preprocessing.upsample>)[upsample]: Suréchantillonne une séquence par un facteur entier.

== Mesures et extraction de caracteristiques

Mesures, caracteristiques et metriques de qualite des signaux.

=== Functions

- #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower]: Estime la puissance d'un signal dans une bande de frequences.
- #nlink(<signal_processing:2_measurements_feature_extraction.findpeaks>)[findpeaks]: localiser les maxima locaux (pics) dans un signal 1-D.
- #nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq]: Frequence moyenne du spectre d'un signal.
- #nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq]: Frequence mediane du spectre d'un signal.
- #nlink(<signal_processing:2_measurements_feature_extraction.peak2peak>)[peak2peak]: Ecart entre maximum et minimum.
- #nlink(<signal_processing:2_measurements_feature_extraction.rms>)[rms]: Valeur quadratique moyenne.
- #nlink(<signal_processing:2_measurements_feature_extraction.snr>)[snr]: Rapport signal sur bruit.
- #nlink(<signal_processing:2_measurements_feature_extraction.thd>)[thd]: Estimation de distorsion harmonique totale.

== Transformees, correlation et modelisation

Transformees, estimations de correlation, coherence et estimations de fonctions de transfert.

=== Functions

- #nlink(<signal_processing:3_transforms_correlation_modeling.cconv>)[cconv]: Convolution circulaire.
- #nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd]: Estimation de densite spectrale croisee.
- #nlink(<signal_processing:3_transforms_correlation_modeling.dct>)[dct]: Transformation en cosinus discrete.
- #nlink(<signal_processing:3_transforms_correlation_modeling.hilbert>)[hilbert]: Signal analytique par transformation de Hilbert.
- #nlink(<signal_processing:3_transforms_correlation_modeling.idct>)[idct]: Transformation en cosinus discrete inverse.
- #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere]: Estimation de coherence quadratique.
- #nlink(<signal_processing:3_transforms_correlation_modeling.tfe>)[tfe]: Wrapper de compatibilite pour estimation de fonction de transfert.
- #nlink(<signal_processing:3_transforms_correlation_modeling.tfestimate>)[tfestimate]: Estimation de fonction de transfert.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr>)[xcorr]: Corrélation croisée de signaux discrets.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr2>)[xcorr2]: CorrÃƒÂ©lation croisÃƒÂ©e 2-D.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcov>)[xcov]: Covariance croisée de signaux discrets.

== Filtres numeriques

Fonctions de conception, analyse, conversion et implementation de filtres.

=== Functions

- #nlink(<signal_processing:4_digital_filters.butter>)[butter]: Conception de filtre numérique de Butterworth.
- #nlink(<signal_processing:4_digital_filters.buttord>)[buttord]: Ordre minimal pour un filtre Butterworth.
- #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord]: Ordre minimal pour un filtre Chebyshev type I.
- #nlink(<signal_processing:4_digital_filters.cheb2ord>)[cheb2ord]: Ordre minimal pour un filtre Chebyshev type II.
- #nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1]: Conception de filtre numerique Chebyshev type I.
- #nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2]: Conception de filtre numerique Chebyshev type II.
- #nlink(<signal_processing:4_digital_filters.ellip>)[ellip]: Conception de filtre numerique elliptique.
- #nlink(<signal_processing:4_digital_filters.ellipord>)[ellipord]: Ordre minimal pour un filtre elliptique.
- #nlink(<signal_processing:4_digital_filters.fftfilt>)[fftfilt]: Filtrage FIR auxiliaire.
- #nlink(<signal_processing:4_digital_filters.filtfilt>)[filtfilt]: Filtrage numÃ©rique aller-retour.
- #nlink(<signal_processing:4_digital_filters.filtic>)[filtic]: Conditions initiales pour filtrage numÃ©rique.
- #nlink(<signal_processing:4_digital_filters.filtord>)[filtord]: Ordre d'un filtre numérique.
- #nlink(<signal_processing:4_digital_filters.fir1>)[fir1]: Conception de filtre FIR par fenêtrage.
- #nlink(<signal_processing:4_digital_filters.fir2>)[fir2]: Conception de filtre FIR par echantillonnage frequentiel.
- #nlink(<signal_processing:4_digital_filters.freqz>)[freqz]: Réponse fréquentielle d'un filtre numérique.
- #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay]: Retard de groupe d'un filtre numerique.
- #nlink(<signal_processing:4_digital_filters.impz>)[impz]: Réponse impulsionnelle d'un filtre numérique.
- #nlink(<signal_processing:4_digital_filters.impzlength>)[impzlength]: Longueur estimee d'une reponse impulsionnelle.
- #nlink(<signal_processing:4_digital_filters.isfir>)[isfir]: Détermine si un filtre numérique est FIR.
- #nlink(<signal_processing:4_digital_filters.isstable>)[isstable]: Détermine si un filtre numérique est stable.
- #nlink(<signal_processing:4_digital_filters.phasez>)[phasez]: Reponse en phase d'un filtre numerique.
- #nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf]: Convertit des sections du second ordre en coefficients de fonction de transfert.
- #nlink(<signal_processing:4_digital_filters.sos2zp>)[sos2zp]: Convertit des sections du second ordre en zéros-pôles-gain.
- #nlink(<signal_processing:4_digital_filters.sosfilt>)[sosfilt]: Filtre des donnees avec des sections du second ordre.
- #nlink(<signal_processing:4_digital_filters.stepz>)[stepz]: Réponse indicielle d'un filtre numérique.
- #nlink(<signal_processing:4_digital_filters.tf2sos>)[tf2sos]: Convertit des coefficients de fonction de transfert en sections du second ordre.
- #nlink(<signal_processing:4_digital_filters.tf2zp>)[tf2zp]: Convertit des coefficients de fonction de transfert en zéros-pôles-gain.
- #nlink(<signal_processing:4_digital_filters.zp2sos>)[zp2sos]: Convertit une représentation zéros-pôles-gain en sections du second ordre.
- #nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf]: Conversion zéros-pôles en fonction de transfert.

== Analyse spectrale

Fonctions de spectre de puissance, fenetres et conversions d echelle.

=== Functions

- #nlink(<signal_processing:5_spectral_analysis.bartlett>)[bartlett]: Fenêtre de Bartlett.
- #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman]: Fenêtre de Blackman.
- #nlink(<signal_processing:5_spectral_analysis.blackmanharris>)[blackmanharris]: Fenêtre de Blackman-Harris.
- #nlink(<signal_processing:5_spectral_analysis.chebwin>)[chebwin]: Fenêtre de Dolph-Chebyshev.
- #nlink(<signal_processing:5_spectral_analysis.db2mag>)[db2mag]: Convertit un gain en décibels (dB) en magnitude.
- #nlink(<signal_processing:5_spectral_analysis.db2pow>)[db2pow]: Convertit un gain en décibels (dB) en puissance.
- #nlink(<signal_processing:5_spectral_analysis.gausswin>)[gausswin]: Fenêtre gaussienne.
- #nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming]: Fenêtre de Hamming.
- #nlink(<signal_processing:5_spectral_analysis.hann>)[hann]: Fenêtre de Hann.
- #nlink(<signal_processing:5_spectral_analysis.hanning>)[hanning]: Fonction de compatibilite pour la fenetre de Hann.
- #nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser]: Fenêtre de Kaiser.
- #nlink(<signal_processing:5_spectral_analysis.kaiserord>)[kaiserord]: Parametres de conception FIR par fenetre de Kaiser.
- #nlink(<signal_processing:5_spectral_analysis.mag2db>)[mag2db]: Convertit une magnitude en décibels (dB).
- #nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram]: Estimation de densite spectrale de puissance par periodogramme.
- #nlink(<signal_processing:5_spectral_analysis.pow2db>)[pow2db]: Convertit une puissance en décibels.
- #nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch]: Estimation spectrale par la methode de Welch.
- #nlink(<signal_processing:5_spectral_analysis.rectwin>)[rectwin]: Fenêtre rectangulaire.
- #nlink(<signal_processing:5_spectral_analysis.triang>)[triang]: Fenêtre triangulaire.
- #nlink(<signal_processing:5_spectral_analysis.tukeywin>)[tukeywin]: Fenêtre de Tukey.

== Analyse temps-frequence

Fonctions de representation temps-frequence et temps court.

=== Functions

- #nlink(<signal_processing:6_time_frequency_analysis.istft>)[istft]: Transformee de Fourier court terme inverse.
- #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram]: Spectrogramme par transformees de Fourier locales.
- #nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft]: Transformee de Fourier court terme.


#nested[
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/chirp.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/decimate.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/downsample.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/filter2.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/hampel.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/interp.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/medfilt1.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/rectpuls.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/resample.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/sawtooth.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/sgolay.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/sgolayfilt.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/sinc.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/square.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/tripuls.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/upfirdn.typ"
#pagebreak(weak: true)
#include "1_signal_generation_preprocessing/upsample.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/bandpower.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/findpeaks.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/meanfreq.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/medfreq.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/peak2peak.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/rms.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/snr.typ"
#pagebreak(weak: true)
#include "2_measurements_feature_extraction/thd.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/cconv.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/cpsd.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/dct.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/hilbert.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/idct.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/mscohere.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/tfe.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/tfestimate.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/xcorr.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/xcorr2.typ"
#pagebreak(weak: true)
#include "3_transforms_correlation_modeling/xcov.typ"
#pagebreak(weak: true)
#include "4_digital_filters/butter.typ"
#pagebreak(weak: true)
#include "4_digital_filters/buttord.typ"
#pagebreak(weak: true)
#include "4_digital_filters/cheb1ord.typ"
#pagebreak(weak: true)
#include "4_digital_filters/cheb2ord.typ"
#pagebreak(weak: true)
#include "4_digital_filters/cheby1.typ"
#pagebreak(weak: true)
#include "4_digital_filters/cheby2.typ"
#pagebreak(weak: true)
#include "4_digital_filters/ellip.typ"
#pagebreak(weak: true)
#include "4_digital_filters/ellipord.typ"
#pagebreak(weak: true)
#include "4_digital_filters/fftfilt.typ"
#pagebreak(weak: true)
#include "4_digital_filters/filtfilt.typ"
#pagebreak(weak: true)
#include "4_digital_filters/filtic.typ"
#pagebreak(weak: true)
#include "4_digital_filters/filtord.typ"
#pagebreak(weak: true)
#include "4_digital_filters/fir1.typ"
#pagebreak(weak: true)
#include "4_digital_filters/fir2.typ"
#pagebreak(weak: true)
#include "4_digital_filters/freqz.typ"
#pagebreak(weak: true)
#include "4_digital_filters/grpdelay.typ"
#pagebreak(weak: true)
#include "4_digital_filters/impz.typ"
#pagebreak(weak: true)
#include "4_digital_filters/impzlength.typ"
#pagebreak(weak: true)
#include "4_digital_filters/isfir.typ"
#pagebreak(weak: true)
#include "4_digital_filters/isstable.typ"
#pagebreak(weak: true)
#include "4_digital_filters/phasez.typ"
#pagebreak(weak: true)
#include "4_digital_filters/sos2tf.typ"
#pagebreak(weak: true)
#include "4_digital_filters/sos2zp.typ"
#pagebreak(weak: true)
#include "4_digital_filters/sosfilt.typ"
#pagebreak(weak: true)
#include "4_digital_filters/stepz.typ"
#pagebreak(weak: true)
#include "4_digital_filters/tf2sos.typ"
#pagebreak(weak: true)
#include "4_digital_filters/tf2zp.typ"
#pagebreak(weak: true)
#include "4_digital_filters/zp2sos.typ"
#pagebreak(weak: true)
#include "4_digital_filters/zp2tf.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/bartlett.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/blackman.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/blackmanharris.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/chebwin.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/db2mag.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/db2pow.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/gausswin.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/hamming.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/hann.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/hanning.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/kaiser.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/kaiserord.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/mag2db.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/periodogram.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/pow2db.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/pwelch.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/rectwin.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/triang.typ"
#pagebreak(weak: true)
#include "5_spectral_analysis/tukeywin.typ"
#pagebreak(weak: true)
#include "6_time_frequency_analysis/istft.typ"
#pagebreak(weak: true)
#include "6_time_frequency_analysis/spectrogram.typ"
#pagebreak(weak: true)
#include "6_time_frequency_analysis/stft.typ"
]
