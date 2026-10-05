#import "../../nelson_help.typ": *

= imtophat <image_processing:2_image_analysis.4_morphology.imtophat>

Top-hat filtering of an image.

== Syntax

- #raw("J = imtophat(I, SE)");

== Input argument

/ I: Input grayscale image.
/ SE: Structuring element structure or logical neighborhood.

== Output argument

/ J: Top-hat filtered image.

== Description

Top-hat filtering of an image.


== Example

Apply top-hat filtering

``````matlab
I=zeros(64,64); I(20:44,20:44)=0.4; I(30:34,30:34)=1;
J=imtophat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Top-hat');
``````


#align(center)[#image("imtophat_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.4_morphology.imbothat>)[imbothat];, #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen];, #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
