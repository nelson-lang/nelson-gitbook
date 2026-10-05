# Traitement du signal


    
Le module Traitement du signal fournit des outils pour analyser, filtrer, transformer et reechantillonner des signaux echantillonnes dans Nelson.

    
Il inclut des fonctions de fenetrage, de conception de filtres FIR et IIR, de filtrage numerique, de conversions poles-zeros et sections du second ordre, de correlation croisee, et de conversions entre representations en magnitude, puissance et decibels.

    
Le module prend egalement en charge le traitement multirate, l'estimation spectrale, l'analyse temps-frequence, la generation de formes d'onde et les mesures courantes de signal.

  

## Generation et pretraitement des signaux


    
Fonctions pour creer, reechantillonner, lisser, filtrer et preparer des signaux.

  

### Functions

- [chirp](1_signal_generation_preprocessing/chirp.md) - Signal cosinus a frequence balayee.
- [decimate](1_signal_generation_preprocessing/decimate.md) - Filtre passe-bas puis sous-echantillonne un vecteur.
- [downsample](1_signal_generation_preprocessing/downsample.md) - Sous-échantillonner un signal par un facteur entier.
- [filter2](1_signal_generation_preprocessing/filter2.md) - Filtre numérique 2-D.
- [hampel](1_signal_generation_preprocessing/hampel.md) - Filtrage d'aberrants par Hampel.
- [interp](1_signal_generation_preprocessing/interp.md) - Interpole un vecteur par un facteur entier.
- [medfilt1](1_signal_generation_preprocessing/medfilt1.md) - Filtre median unidimensionnel.
- [rectpuls](1_signal_generation_preprocessing/rectpuls.md) - Impulsion rectangulaire échantillonnée.
- [resample](1_signal_generation_preprocessing/resample.md) - Change la frequence d'echantillonnage par un facteur rationnel.
- [sawtooth](1_signal_generation_preprocessing/sawtooth.md) - Signal dent de scie ou triangulaire.
- [sgolay](1_signal_generation_preprocessing/sgolay.md) - Coefficients de filtre Savitzky-Golay.
- [sgolayfilt](1_signal_generation_preprocessing/sgolayfilt.md) - Filtre de lissage Savitzky-Golay.
- [sinc](1_signal_generation_preprocessing/sinc.md) - Fonction sinc.
- [square](1_signal_generation_preprocessing/square.md) - Signal carré.
- [tripuls](1_signal_generation_preprocessing/tripuls.md) - Impulsion triangulaire échantillonnée.
- [upfirdn](1_signal_generation_preprocessing/upfirdn.md) - Surechantillonne, filtre en FIR, puis sous-echantillonne.
- [upsample](1_signal_generation_preprocessing/upsample.md) - Suréchantillonne une séquence par un facteur entier.

## Mesures et extraction de caracteristiques


    
Mesures, caracteristiques et metriques de qualite des signaux.

  

### Functions

- [bandpower](2_measurements_feature_extraction/bandpower.md) - Estime la puissance d'un signal dans une bande de frequences.
- [findpeaks](2_measurements_feature_extraction/findpeaks.md) - localiser les maxima locaux (pics) dans un signal 1-D.
- [meanfreq](2_measurements_feature_extraction/meanfreq.md) - Frequence moyenne du spectre d'un signal.
- [medfreq](2_measurements_feature_extraction/medfreq.md) - Frequence mediane du spectre d'un signal.
- [peak2peak](2_measurements_feature_extraction/peak2peak.md) - Ecart entre maximum et minimum.
- [rms](2_measurements_feature_extraction/rms.md) - Valeur quadratique moyenne.
- [snr](2_measurements_feature_extraction/snr.md) - Rapport signal sur bruit.
- [thd](2_measurements_feature_extraction/thd.md) - Estimation de distorsion harmonique totale.

## Transformees, correlation et modelisation


    
Transformees, estimations de correlation, coherence et estimations de fonctions de transfert.

  

### Functions

- [cconv](3_transforms_correlation_modeling/cconv.md) - Convolution circulaire.
- [cpsd](3_transforms_correlation_modeling/cpsd.md) - Estimation de densite spectrale croisee.
- [dct](3_transforms_correlation_modeling/dct.md) - Transformation en cosinus discrete.
- [hilbert](3_transforms_correlation_modeling/hilbert.md) - Signal analytique par transformation de Hilbert.
- [idct](3_transforms_correlation_modeling/idct.md) - Transformation en cosinus discrete inverse.
- [mscohere](3_transforms_correlation_modeling/mscohere.md) - Estimation de coherence quadratique.
- [tfe](3_transforms_correlation_modeling/tfe.md) - Wrapper de compatibilite pour estimation de fonction de transfert.
- [tfestimate](3_transforms_correlation_modeling/tfestimate.md) - Estimation de fonction de transfert.
- [xcorr](3_transforms_correlation_modeling/xcorr.md) - Corrélation croisée de signaux discrets.
- [xcorr2](3_transforms_correlation_modeling/xcorr2.md) - CorrÃƒÂ©lation croisÃƒÂ©e 2-D.
- [xcov](3_transforms_correlation_modeling/xcov.md) - Covariance croisée de signaux discrets.

## Filtres numeriques


    
Fonctions de conception, analyse, conversion et implementation de filtres.

  

### Functions

- [butter](4_digital_filters/butter.md) - Conception de filtre numérique de Butterworth.
- [buttord](4_digital_filters/buttord.md) - Ordre minimal pour un filtre Butterworth.
- [cheb1ord](4_digital_filters/cheb1ord.md) - Ordre minimal pour un filtre Chebyshev type I.
- [cheb2ord](4_digital_filters/cheb2ord.md) - Ordre minimal pour un filtre Chebyshev type II.
- [cheby1](4_digital_filters/cheby1.md) - Conception de filtre numerique Chebyshev type I.
- [cheby2](4_digital_filters/cheby2.md) - Conception de filtre numerique Chebyshev type II.
- [ellip](4_digital_filters/ellip.md) - Conception de filtre numerique elliptique.
- [ellipord](4_digital_filters/ellipord.md) - Ordre minimal pour un filtre elliptique.
- [fftfilt](4_digital_filters/fftfilt.md) - Filtrage FIR auxiliaire.
- [filtfilt](4_digital_filters/filtfilt.md) - Filtrage numÃ©rique aller-retour.
- [filtic](4_digital_filters/filtic.md) - Conditions initiales pour filtrage numÃ©rique.
- [filtord](4_digital_filters/filtord.md) - Ordre d'un filtre numérique.
- [fir1](4_digital_filters/fir1.md) - Conception de filtre FIR par fenêtrage.
- [fir2](4_digital_filters/fir2.md) - Conception de filtre FIR par echantillonnage frequentiel.
- [freqz](4_digital_filters/freqz.md) - Réponse fréquentielle d'un filtre numérique.
- [grpdelay](4_digital_filters/grpdelay.md) - Retard de groupe d'un filtre numerique.
- [impz](4_digital_filters/impz.md) - Réponse impulsionnelle d'un filtre numérique.
- [impzlength](4_digital_filters/impzlength.md) - Longueur estimee d'une reponse impulsionnelle.
- [isfir](4_digital_filters/isfir.md) - Détermine si un filtre numérique est FIR.
- [isstable](4_digital_filters/isstable.md) - Détermine si un filtre numérique est stable.
- [phasez](4_digital_filters/phasez.md) - Reponse en phase d'un filtre numerique.
- [sos2tf](4_digital_filters/sos2tf.md) - Convertit des sections du second ordre en coefficients de fonction de transfert.
- [sos2zp](4_digital_filters/sos2zp.md) - Convertit des sections du second ordre en zéros-pôles-gain.
- [sosfilt](4_digital_filters/sosfilt.md) - Filtre des donnees avec des sections du second ordre.
- [stepz](4_digital_filters/stepz.md) - Réponse indicielle d'un filtre numérique.
- [tf2sos](4_digital_filters/tf2sos.md) - Convertit des coefficients de fonction de transfert en sections du second ordre.
- [tf2zp](4_digital_filters/tf2zp.md) - Convertit des coefficients de fonction de transfert en zéros-pôles-gain.
- [zp2sos](4_digital_filters/zp2sos.md) - Convertit une représentation zéros-pôles-gain en sections du second ordre.
- [zp2tf](4_digital_filters/zp2tf.md) - Conversion zéros-pôles en fonction de transfert.

## Analyse spectrale


    
Fonctions de spectre de puissance, fenetres et conversions d echelle.

  

### Functions

- [bartlett](5_spectral_analysis/bartlett.md) - Fenêtre de Bartlett.
- [blackman](5_spectral_analysis/blackman.md) - Fenêtre de Blackman.
- [blackmanharris](5_spectral_analysis/blackmanharris.md) - Fenêtre de Blackman-Harris.
- [chebwin](5_spectral_analysis/chebwin.md) - Fenêtre de Dolph-Chebyshev.
- [db2mag](5_spectral_analysis/db2mag.md) - Convertit un gain en décibels (dB) en magnitude.
- [db2pow](5_spectral_analysis/db2pow.md) - Convertit un gain en décibels (dB) en puissance.
- [gausswin](5_spectral_analysis/gausswin.md) - Fenêtre gaussienne.
- [hamming](5_spectral_analysis/hamming.md) - Fenêtre de Hamming.
- [hann](5_spectral_analysis/hann.md) - Fenêtre de Hann.
- [hanning](5_spectral_analysis/hanning.md) - Fonction de compatibilite pour la fenetre de Hann.
- [kaiser](5_spectral_analysis/kaiser.md) - Fenêtre de Kaiser.
- [kaiserord](5_spectral_analysis/kaiserord.md) - Parametres de conception FIR par fenetre de Kaiser.
- [mag2db](5_spectral_analysis/mag2db.md) - Convertit une magnitude en décibels (dB).
- [periodogram](5_spectral_analysis/periodogram.md) - Estimation de densite spectrale de puissance par periodogramme.
- [pow2db](5_spectral_analysis/pow2db.md) - Convertit une puissance en décibels.
- [pwelch](5_spectral_analysis/pwelch.md) - Estimation spectrale par la methode de Welch.
- [rectwin](5_spectral_analysis/rectwin.md) - Fenêtre rectangulaire.
- [triang](5_spectral_analysis/triang.md) - Fenêtre triangulaire.
- [tukeywin](5_spectral_analysis/tukeywin.md) - Fenêtre de Tukey.

## Analyse temps-frequence


    
Fonctions de representation temps-frequence et temps court.

  

### Functions

- [istft](6_time_frequency_analysis/istft.md) - Transformee de Fourier court terme inverse.
- [spectrogram](6_time_frequency_analysis/spectrogram.md) - Spectrogramme par transformees de Fourier locales.
- [stft](6_time_frequency_analysis/stft.md) - Transformee de Fourier court terme.

