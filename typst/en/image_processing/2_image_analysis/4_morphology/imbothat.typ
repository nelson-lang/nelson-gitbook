#import "../../nelson_help.typ": *

= imbothat <image_processing:2_image_analysis.4_morphology.imbothat>

Bottom-hat filtering of an image.

== Syntax

- #raw("J = imbothat(I, SE)");

== Input argument

/ I: Input grayscale image.
/ SE: Structuring element structure or logical neighborhood.

== Output argument

/ J: Bottom-hat filtered image.

== Description

Bottom-hat filtering of an image.


== Example

Apply bottom-hat filtering

``````matlab
I=ones(64,64); I(20:44,20:44)=0.6; I(30:34,30:34)=0;
J=imbothat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Bottom-hat');
``````


#align(center)[#image("imbothat_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.4_morphology.imtophat>)[imtophat];, #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose];, #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
