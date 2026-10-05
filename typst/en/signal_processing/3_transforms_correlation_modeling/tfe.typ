#import "../nelson_help.typ": *

= tfe <signal_processing:3_transforms_correlation_modeling.tfe>

Transfer function estimate compatibility wrapper.

== Syntax

- #raw("[Hv, f] = tfe(u, y)");
- #raw("[Hv, f, Puu, Pyy, Puy, coh, Sv] = tfe(u, y, nfft, fs)");

== Input argument

/ u: input signal vector.
/ y: output signal vector.
/ nfft: FFT length.
/ fs: sample rate.

== Output argument

/ Hv: transfer function estimate.
/ f: frequency vector.
/ Puu, Pyy, Puy: input, output, and cross power spectra.
/ coh: magnitude-squared coherence estimate.
/ Sv: rough standard-deviation estimate for #strong[Hv];.

== Description

#strong[tfe]; estimates a transfer function from input and output data. Prefer #strong[tfestimate]; for new code.


== Example

``````matlab

u = (1:16)';
y = filter([1 0.5], 1, u);
[Hv, f] = tfe(u, y, 4, 8)

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.tfestimate>)[tfestimate];, #nlink(<signal_processing:5_spectral_analysis.pwelch>)[pwelch];, #nlink(<signal_processing:3_transforms_correlation_modeling.mscohere>)[mscohere];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
