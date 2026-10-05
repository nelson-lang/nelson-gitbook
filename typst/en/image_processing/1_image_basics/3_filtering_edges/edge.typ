#import "../../nelson_help.typ": *

= edge <image_processing:1_image_basics.3_filtering_edges.edge>

Find edges in a grayscale image.

== Syntax

- #raw("BW = edge(I)");
- #raw("BW = edge(I, method)");
- #raw("BW = edge(I, method, thresh)");
- #raw("BW = edge(I, method, thresh, direction)");
- #raw("BW = edge(I, method, thresh, sigma)");
- #raw("[BW, thresh] = edge(...)");

== Input argument

/ I: Input grayscale or RGB image.
/ method: Edge detection method: 'sobel', 'prewitt', 'roberts', 'log', or 'canny'. The default is 'sobel'.
/ thresh: Detection threshold. For 'canny', it can be a scalar or a two-element vector.
/ direction: Direction used with 'sobel', 'prewitt', and 'roberts': 'horizontal', 'vertical', or 'both'.
/ sigma: Positive Gaussian scale used with 'log' and 'canny'.

== Output argument

/ BW: Logical image whose true pixels mark detected edges.
/ thresh: Threshold value used by the detector.

== Description

Find edges in a grayscale image. Supported methods are sobel, prewitt, roberts, log and canny. The sobel, prewitt and roberts methods accept horizontal, vertical or both as direction. The log and canny methods accept a positive scalar sigma. The canny threshold can be a scalar or a two-element vector.


== Example

Detect edges

``````matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=exp(-4*(X.^2+Y.^2));
BW=edge(I,'sobel');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Edges');
``````


#align(center)[#image("edge_1.png")]

== See also

#nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter];, #nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
