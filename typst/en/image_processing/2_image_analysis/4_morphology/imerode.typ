#import "../../nelson_help.typ": *

= imerode <image_processing:2_image_analysis.4_morphology.imerode>

Erode a binary or grayscale image or volume.

== Syntax

- #raw("J = imerode(I, SE)");

== Input argument

/ I: Input binary or grayscale image, or 3-D volume.
/ SE: Structuring element structure or logical neighborhood.

== Output argument

/ J: Eroded image or volume.

== Description

Erode a binary or grayscale image. With a 3-D structuring element, imerode erodes a 3-D volume.


== Example

Erode a binary image

``````matlab
BW=false(64,64); BW(20:44,20:44)=true;
J=imerode(BW,strel('disk',5));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Eroded');
``````


#align(center)[#image("imerode_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate];, #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen];, #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];, #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
