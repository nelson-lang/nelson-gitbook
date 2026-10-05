#import "../../nelson_help.typ": *

= detectHarrisFeatures <image_processing:2_image_analysis.9_feature_detection.detectHarrisFeatures>

Detect Harris corner features.

== Syntax

- #raw("points = detectHarrisFeatures(I)");
- #raw("points = detectHarrisFeatures(I, Name, Value)");

== Input argument

/ I: Input grayscale or RGB image.

== Output argument

/ points: Structure with Location, Metric and Count fields.

== Description

detectHarrisFeatures computes a Harris corner metric, keeps local maxima, sorts them by metric strength, and returns their image coordinates. Supported options are MinQuality, FilterSize, SensitivityFactor and ROI.


== Example

Detect corners in a square image

``````matlab
I=zeros(64,64); I(18:46,18:46)=1;
points=detectHarrisFeatures(I,'MinQuality',0.05);
figure; imagesc(I); axis image; hold on;
plot(points.Location(:,1),points.Location(:,2),'r+'); title('Harris points');
``````


#align(center)[#image("detectHarrisFeatures_1.png")]

== See also

#nlink(<image_processing:2_image_analysis.9_feature_detection.cornermetric>)[cornermetric];, #nlink(<image_processing:2_image_analysis.9_feature_detection.detectFASTFeatures>)[detectFASTFeatures];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
