#import "nelson_help.typ": *

= Signal Processing

The Signal Processing module provides tools for analyzing, filtering, transforming, and resampling sampled signals in Nelson.

 It includes windowing functions, FIR and IIR filter design, digital filtering, zero-pole and second-order-section conversions, cross-correlation, and conversions between magnitude, power, and decibel representations.

 The module also supports multirate processing, spectral estimation, time-frequency analysis, waveform generation, and common signal measurements.

== Signal Generation and Preprocessing

Functions for creating, resampling, smoothing, filtering, and preparing signals.

=== Functions

- #nlink(<signal_processing:1_signal_generation_preprocessing.chirp>)[chirp]: Swept-frequency cosine signal.
- #nlink(<signal_processing:1_signal_generation_preprocessing.decimate>)[decimate]: Lowpass filter and downsample a vector.
- #nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample]: Downsample a signal by an integer factor.
- #nlink(<signal_processing:1_signal_generation_preprocessing.filter2>)[filter2]: 2-D digital filter.
- #nlink(<signal_processing:1_signal_generation_preprocessing.hampel>)[hampel]: Hampel outlier filtering.
- #nlink(<signal_processing:1_signal_generation_preprocessing.interp>)[interp]: Interpolate a vector by an integer factor.
- #nlink(<signal_processing:1_signal_generation_preprocessing.medfilt1>)[medfilt1]: One-dimensional median filter.
- #nlink(<signal_processing:1_signal_generation_preprocessing.rectpuls>)[rectpuls]: Sampled rectangular pulse.
- #nlink(<signal_processing:1_signal_generation_preprocessing.resample>)[resample]: Change sample rate by a rational factor.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth]: Sawtooth or triangle waveform.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sgolay>)[sgolay]: Savitzky-Golay filter coefficients.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt]: Savitzky-Golay smoothing filter.
- #nlink(<signal_processing:1_signal_generation_preprocessing.sinc>)[sinc]: Sinc function.
- #nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square]: Square waveform.
- #nlink(<signal_processing:1_signal_generation_preprocessing.tripuls>)[tripuls]: Sampled triangular pulse.
- #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn]: Upsample, FIR filter, and downsample.
- #nlink(<signal_processing:1_signal_generation_preprocessing.upsample>)[upsample]: Upsample a sequence by an integer factor.

== Measurements and Feature Extraction

Signal measurements, features, and quality metrics.

=== Functions

- #nlink(<signal_processing:2_measurements_feature_extraction.bandpower>)[bandpower]: Estimate signal power in a frequency band.
- #nlink(<signal_processing:2_measurements_feature_extraction.findpeaks>)[findpeaks]: Locate local maxima (peaks) in a 1-D signal.
- #nlink(<signal_processing:2_measurements_feature_extraction.meanfreq>)[meanfreq]: Mean frequency of a signal spectrum.
- #nlink(<signal_processing:2_measurements_feature_extraction.medfreq>)[medfreq]: Median frequency of a signal spectrum.
- #nlink(<signal_processing:2_measurements_feature_extraction.peak2peak>)[peak2peak]: Difference between maximum and minimum values.
- #nlink(<signal_processing:2_measurements_feature_extraction.rms>)[rms]: Root mean square value.
- #nlink(<signal_processing:2_measurements_feature_extraction.snr>)[snr]: Signal-to-noise ratio.
- #nlink(<signal_processing:2_measurements_feature_extraction.thd>)[thd]: Total harmonic distortion estimate.

== Transforms, Correlation, and Modeling

Transforms, correlation estimates, coherence, and transfer-function estimates.

=== Functions

- #nlink(<signal_processing:3_transforms_correlation_modeling.cconv>)[cconv]: Circular convolution.
- #nlink(<signal_processing:3_transforms_correlation_modeling.cpsd>)[cpsd]: Cross power spectral density estimate.
- #nlink(<signal_processing:3_transforms_correlation_modeling.dct>)[dct]: Discrete cosine transform.
- #nlink(<signal_processing:3_transforms_correlation_modeling.hilbert>)[hilbert]: Analytic signal using the Hilbert transform.
- #nlink(<signal_processing:3_transforms_correlation_modeling.idct>)[idct]: Inverse discrete cosine transform.
- #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere]: Magnitude-squared coherence estimate.
- #nlink(<signal_processing:3_transforms_correlation_modeling.tfe>)[tfe]: Transfer function estimate compatibility wrapper.
- #nlink(<signal_processing:3_transforms_correlation_modeling.tfestimate>)[tfestimate]: Transfer function estimate.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr>)[xcorr]: Cross-correlation of discrete-time signals.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcorr2>)[xcorr2]: 2-D cross-correlation.
- #nlink(<signal_processing:3_transforms_correlation_modeling.xcov>)[xcov]: Cross-covariance of discrete-time signals.

== Digital Filters

Filter design, analysis, conversion, and implementation functions.

=== Functions

- #nlink(<signal_processing:4_digital_filters.butter>)[butter]: Butterworth digital filter design.
- #nlink(<signal_processing:4_digital_filters.buttord>)[buttord]: Minimum order for a Butterworth filter.
- #nlink(<signal_processing:4_digital_filters.cheb1ord>)[cheb1ord]: Minimum order for a Chebyshev type I filter.
- #nlink(<signal_processing:4_digital_filters.cheb2ord>)[cheb2ord]: Minimum order for a Chebyshev type II filter.
- #nlink(<signal_processing:4_digital_filters.cheby1>)[cheby1]: Chebyshev type I digital filter design.
- #nlink(<signal_processing:4_digital_filters.cheby2>)[cheby2]: Chebyshev type II digital filter design.
- #nlink(<signal_processing:4_digital_filters.ellip>)[ellip]: Elliptic digital filter design.
- #nlink(<signal_processing:4_digital_filters.ellipord>)[ellipord]: Minimum order for an elliptic filter.
- #nlink(<signal_processing:4_digital_filters.fftfilt>)[fftfilt]: FIR filtering helper.
- #nlink(<signal_processing:4_digital_filters.filtfilt>)[filtfilt]: Forward and reverse digital filtering.
- #nlink(<signal_processing:4_digital_filters.filtic>)[filtic]: Initial conditions for digital filtering.
- #nlink(<signal_processing:4_digital_filters.filtord>)[filtord]: Digital filter order.
- #nlink(<signal_processing:4_digital_filters.fir1>)[fir1]: Window-based FIR filter design.
- #nlink(<signal_processing:4_digital_filters.fir2>)[fir2]: Frequency sampling FIR filter design.
- #nlink(<signal_processing:4_digital_filters.freqz>)[freqz]: Frequency response of a digital filter.
- #nlink(<signal_processing:4_digital_filters.grpdelay>)[grpdelay]: Group delay of a digital filter.
- #nlink(<signal_processing:4_digital_filters.impz>)[impz]: Impulse response of a digital filter.
- #nlink(<signal_processing:4_digital_filters.impzlength>)[impzlength]: Length estimate for an impulse response.
- #nlink(<signal_processing:4_digital_filters.isfir>)[isfir]: Determine whether a digital filter is FIR.
- #nlink(<signal_processing:4_digital_filters.isstable>)[isstable]: Determine whether a digital filter is stable.
- #nlink(<signal_processing:4_digital_filters.phasez>)[phasez]: Phase response of a digital filter.
- #nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf]: Convert second-order sections to transfer function coefficients.
- #nlink(<signal_processing:4_digital_filters.sos2zp>)[sos2zp]: Convert second-order sections to zero-pole-gain form.
- #nlink(<signal_processing:4_digital_filters.sosfilt>)[sosfilt]: Filter data with second-order sections.
- #nlink(<signal_processing:4_digital_filters.stepz>)[stepz]: Step response of a digital filter.
- #nlink(<signal_processing:4_digital_filters.tf2sos>)[tf2sos]: Convert transfer function coefficients to second-order sections.
- #nlink(<signal_processing:4_digital_filters.tf2zp>)[tf2zp]: Convert transfer function coefficients to zero-pole-gain form.
- #nlink(<signal_processing:4_digital_filters.zp2sos>)[zp2sos]: Convert zero-pole-gain form to second-order sections.
- #nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf]: Zero-pole to transfer function conversion.

== Spectral Analysis

Power spectrum, window, and scale-conversion functions.

=== Functions

- #nlink(<signal_processing:5_spectral_analysis.bartlett>)[bartlett]: Bartlett window.
- #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman]: Blackman window.
- #nlink(<signal_processing:5_spectral_analysis.blackmanharris>)[blackmanharris]: Blackman-Harris window.
- #nlink(<signal_processing:5_spectral_analysis.chebwin>)[chebwin]: Dolph-Chebyshev window.
- #nlink(<signal_processing:5_spectral_analysis.db2mag>)[db2mag]: Convert a gain in decibels (dB) to a magnitude.
- #nlink(<signal_processing:5_spectral_analysis.db2pow>)[db2pow]: Convert a gain in decibels (dB) to power.
- #nlink(<signal_processing:5_spectral_analysis.gausswin>)[gausswin]: Gaussian window.
- #nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming]: Hamming window.
- #nlink(<signal_processing:5_spectral_analysis.hann>)[hann]: Hann window.
- #nlink(<signal_processing:5_spectral_analysis.hanning>)[hanning]: Hann window compatibility function.
- #nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser]: Kaiser window.
- #nlink(<signal_processing:5_spectral_analysis.kaiserord>)[kaiserord]: Kaiser window FIR design parameters.
- #nlink(<signal_processing:5_spectral_analysis.mag2db>)[mag2db]: Convert a magnitude to decibels (dB).
- #nlink(<signal_processing:5_spectral_analysis.periodogram>)[periodogram]: Power spectral density estimate using a periodogram.
- #nlink(<signal_processing:5_spectral_analysis.pow2db>)[pow2db]: Convert power to decibel.
- #nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch]: Welch power spectral density estimate.
- #nlink(<signal_processing:5_spectral_analysis.rectwin>)[rectwin]: Rectangular window.
- #nlink(<signal_processing:5_spectral_analysis.triang>)[triang]: Triangular window.
- #nlink(<signal_processing:5_spectral_analysis.tukeywin>)[tukeywin]: Tukey window.

== Time-Frequency Analysis

Short-time and time-frequency representation functions.

=== Functions

- #nlink(<signal_processing:6_time_frequency_analysis.istft>)[istft]: Inverse short-time Fourier transform.
- #nlink(<signal_processing:6_time_frequency_analysis.spectrogram>)[spectrogram]: Spectrogram using short-time Fourier transforms.
- #nlink(<signal_processing:6_time_frequency_analysis.stft>)[stft]: Short-time Fourier transform.


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
