#import "../../nelson_help.typ": *

= adaptthresh <image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>

Compute an adaptive image threshold.

== Syntax

- #raw("T = adaptthresh(I)");
- #raw("T = adaptthresh(I, sensitivity)");
- #raw("T = adaptthresh(__, 'ForegroundPolarity', polarity)");
- #raw("T = adaptthresh(__, 'NeighborhoodSize', size)");
- #raw("T = adaptthresh(__, 'Statistic', statistic)");

== Input argument

/ I: Input image.
/ sensitivity: Scalar sensitivity value. The default is 0.5.
/ 'ForegroundPolarity': Foreground polarity, either 'bright' or 'dark'.
/ 'NeighborhoodSize': Two-element neighborhood size used for local statistics.
/ 'Statistic': Local statistic: 'mean', 'gaussian', or 'median'.

== Output argument

/ T: Adaptive threshold image with values in the range \[0, 1\].

== Description

Compute a local threshold image for adaptive binarization. Supported foreground polarities are bright and dark. Supported statistics are mean, gaussian, and median.


== Example

Binarize an image with a local threshold

``````matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=0.25+0.35*X+0.45*exp(-12*(X.^2+Y.^2));
T=adaptthresh(I,0.45,'NeighborhoodSize',[15 15]);
BW=I>T;
figure; subplot(1,3,1); imagesc(I); title('Input');
subplot(1,3,2); imagesc(T); title('Threshold');
subplot(1,3,3); imagesc(BW); title('Binary');
``````


#align(center)[#image("adaptthresh_1.png")]

== See also

#nlink(<image_processing:1_image_basics.2_contrast_thresholding.imbinarize>)[imbinarize];, #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
