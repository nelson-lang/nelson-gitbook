# Signal Processing

The Signal Processing module provides tools for analyzing, filtering, transforming, and resampling sampled signals in Nelson.

It includes windowing functions, FIR and IIR filter design, digital filtering, zero-pole and second-order-section conversions, cross-correlation, and conversions between magnitude, power, and decibel representations.

The module also supports multirate processing, spectral estimation, time-frequency analysis, waveform generation, and common signal measurements.

## Signal Generation and Preprocessing

Functions for creating, resampling, smoothing, filtering, and preparing signals.

### Functions

- [chirp](1_signal_generation_preprocessing/chirp.md) - Swept-frequency cosine signal.
- [decimate](1_signal_generation_preprocessing/decimate.md) - Lowpass filter and downsample a vector.
- [downsample](1_signal_generation_preprocessing/downsample.md) - Downsample a signal by an integer factor.
- [filter2](1_signal_generation_preprocessing/filter2.md) - 2-D digital filter.
- [hampel](1_signal_generation_preprocessing/hampel.md) - Hampel outlier filtering.
- [interp](1_signal_generation_preprocessing/interp.md) - Interpolate a vector by an integer factor.
- [medfilt1](1_signal_generation_preprocessing/medfilt1.md) - One-dimensional median filter.
- [rectpuls](1_signal_generation_preprocessing/rectpuls.md) - Sampled rectangular pulse.
- [resample](1_signal_generation_preprocessing/resample.md) - Change sample rate by a rational factor.
- [sawtooth](1_signal_generation_preprocessing/sawtooth.md) - Sawtooth or triangle waveform.
- [sgolay](1_signal_generation_preprocessing/sgolay.md) - Savitzky-Golay filter coefficients.
- [sgolayfilt](1_signal_generation_preprocessing/sgolayfilt.md) - Savitzky-Golay smoothing filter.
- [sinc](1_signal_generation_preprocessing/sinc.md) - Sinc function.
- [square](1_signal_generation_preprocessing/square.md) - Square waveform.
- [tripuls](1_signal_generation_preprocessing/tripuls.md) - Sampled triangular pulse.
- [upfirdn](1_signal_generation_preprocessing/upfirdn.md) - Upsample, FIR filter, and downsample.
- [upsample](1_signal_generation_preprocessing/upsample.md) - Upsample a sequence by an integer factor.

## Measurements and Feature Extraction

Signal measurements, features, and quality metrics.

### Functions

- [bandpower](2_measurements_feature_extraction/bandpower.md) - Estimate signal power in a frequency band.
- [findpeaks](2_measurements_feature_extraction/findpeaks.md) - Locate local maxima (peaks) in a 1-D signal.
- [meanfreq](2_measurements_feature_extraction/meanfreq.md) - Mean frequency of a signal spectrum.
- [medfreq](2_measurements_feature_extraction/medfreq.md) - Median frequency of a signal spectrum.
- [peak2peak](2_measurements_feature_extraction/peak2peak.md) - Difference between maximum and minimum values.
- [rms](2_measurements_feature_extraction/rms.md) - Root mean square value.
- [snr](2_measurements_feature_extraction/snr.md) - Signal-to-noise ratio.
- [thd](2_measurements_feature_extraction/thd.md) - Total harmonic distortion estimate.

## Transforms, Correlation, and Modeling

Transforms, correlation estimates, coherence, and transfer-function estimates.

### Functions

- [cconv](3_transforms_correlation_modeling/cconv.md) - Circular convolution.
- [cpsd](3_transforms_correlation_modeling/cpsd.md) - Cross power spectral density estimate.
- [dct](3_transforms_correlation_modeling/dct.md) - Discrete cosine transform.
- [hilbert](3_transforms_correlation_modeling/hilbert.md) - Analytic signal using the Hilbert transform.
- [idct](3_transforms_correlation_modeling/idct.md) - Inverse discrete cosine transform.
- [mscohere](3_transforms_correlation_modeling/mscohere.md) - Magnitude-squared coherence estimate.
- [tfe](3_transforms_correlation_modeling/tfe.md) - Transfer function estimate compatibility wrapper.
- [tfestimate](3_transforms_correlation_modeling/tfestimate.md) - Transfer function estimate.
- [xcorr](3_transforms_correlation_modeling/xcorr.md) - Cross-correlation of discrete-time signals.
- [xcorr2](3_transforms_correlation_modeling/xcorr2.md) - 2-D cross-correlation.
- [xcov](3_transforms_correlation_modeling/xcov.md) - Cross-covariance of discrete-time signals.

## Digital Filters

Filter design, analysis, conversion, and implementation functions.

### Functions

- [butter](4_digital_filters/butter.md) - Butterworth digital filter design.
- [buttord](4_digital_filters/buttord.md) - Minimum order for a Butterworth filter.
- [cheb1ord](4_digital_filters/cheb1ord.md) - Minimum order for a Chebyshev type I filter.
- [cheb2ord](4_digital_filters/cheb2ord.md) - Minimum order for a Chebyshev type II filter.
- [cheby1](4_digital_filters/cheby1.md) - Chebyshev type I digital filter design.
- [cheby2](4_digital_filters/cheby2.md) - Chebyshev type II digital filter design.
- [ellip](4_digital_filters/ellip.md) - Elliptic digital filter design.
- [ellipord](4_digital_filters/ellipord.md) - Minimum order for an elliptic filter.
- [fftfilt](4_digital_filters/fftfilt.md) - FIR filtering helper.
- [filtfilt](4_digital_filters/filtfilt.md) - Forward and reverse digital filtering.
- [filtic](4_digital_filters/filtic.md) - Initial conditions for digital filtering.
- [filtord](4_digital_filters/filtord.md) - Digital filter order.
- [fir1](4_digital_filters/fir1.md) - Window-based FIR filter design.
- [fir2](4_digital_filters/fir2.md) - Frequency sampling FIR filter design.
- [freqz](4_digital_filters/freqz.md) - Frequency response of a digital filter.
- [grpdelay](4_digital_filters/grpdelay.md) - Group delay of a digital filter.
- [impz](4_digital_filters/impz.md) - Impulse response of a digital filter.
- [impzlength](4_digital_filters/impzlength.md) - Length estimate for an impulse response.
- [isfir](4_digital_filters/isfir.md) - Determine whether a digital filter is FIR.
- [isstable](4_digital_filters/isstable.md) - Determine whether a digital filter is stable.
- [phasez](4_digital_filters/phasez.md) - Phase response of a digital filter.
- [sos2tf](4_digital_filters/sos2tf.md) - Convert second-order sections to transfer function coefficients.
- [sos2zp](4_digital_filters/sos2zp.md) - Convert second-order sections to zero-pole-gain form.
- [sosfilt](4_digital_filters/sosfilt.md) - Filter data with second-order sections.
- [stepz](4_digital_filters/stepz.md) - Step response of a digital filter.
- [tf2sos](4_digital_filters/tf2sos.md) - Convert transfer function coefficients to second-order sections.
- [tf2zp](4_digital_filters/tf2zp.md) - Convert transfer function coefficients to zero-pole-gain form.
- [zp2sos](4_digital_filters/zp2sos.md) - Convert zero-pole-gain form to second-order sections.
- [zp2tf](4_digital_filters/zp2tf.md) - Zero-pole to transfer function conversion.

## Spectral Analysis

Power spectrum, window, and scale-conversion functions.

### Functions

- [bartlett](5_spectral_analysis/bartlett.md) - Bartlett window.
- [blackman](5_spectral_analysis/blackman.md) - Blackman window.
- [blackmanharris](5_spectral_analysis/blackmanharris.md) - Blackman-Harris window.
- [chebwin](5_spectral_analysis/chebwin.md) - Dolph-Chebyshev window.
- [db2mag](5_spectral_analysis/db2mag.md) - Convert a gain in decibels (dB) to a magnitude.
- [db2pow](5_spectral_analysis/db2pow.md) - Convert a gain in decibels (dB) to power.
- [gausswin](5_spectral_analysis/gausswin.md) - Gaussian window.
- [hamming](5_spectral_analysis/hamming.md) - Hamming window.
- [hann](5_spectral_analysis/hann.md) - Hann window.
- [hanning](5_spectral_analysis/hanning.md) - Hann window compatibility function.
- [kaiser](5_spectral_analysis/kaiser.md) - Kaiser window.
- [kaiserord](5_spectral_analysis/kaiserord.md) - Kaiser window FIR design parameters.
- [mag2db](5_spectral_analysis/mag2db.md) - Convert a magnitude to decibels (dB).
- [periodogram](5_spectral_analysis/periodogram.md) - Power spectral density estimate using a periodogram.
- [pow2db](5_spectral_analysis/pow2db.md) - Convert power to decibel.
- [pwelch](5_spectral_analysis/pwelch.md) - Welch power spectral density estimate.
- [rectwin](5_spectral_analysis/rectwin.md) - Rectangular window.
- [triang](5_spectral_analysis/triang.md) - Triangular window.
- [tukeywin](5_spectral_analysis/tukeywin.md) - Tukey window.

## Time-Frequency Analysis

Short-time and time-frequency representation functions.

### Functions

- [istft](6_time_frequency_analysis/istft.md) - Inverse short-time Fourier transform.
- [spectrogram](6_time_frequency_analysis/spectrogram.md) - Spectrogram using short-time Fourier transforms.
- [stft](6_time_frequency_analysis/stft.md) - Short-time Fourier transform.
