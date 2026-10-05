#import "nelson_help.typ": *

= Image Processing functions

The Image Processing module provides operations for manipulating images and volumes, including type conversion, color conversion, contrast adjustment, filtering, morphology, connected components, region measurements, geometric transforms, resizing, rotation, feature detection, foundational 3-D processing, and image registration.

 Help pages are grouped into topic chapters: image basics, image analysis and segmentation, and geometry, registration, and 3-D processing.

== Image Basics

Functions for image classes, color spaces, contrast adjustment, thresholding, filtering, padding, and edge detection.

=== Image Types and Color

Functions for image type conversion, color space conversion, and indexed image conversion.

==== Functions

- #nlink(<image_processing:1_image_basics.1_image_types_color.hsv2rgb>)[hsv2rgb]: Convert HSV color values to RGB color values.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2double>)[im2double]: Convert image to double precision.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2gray>)[im2gray]: Convert RGB image to grayscale and pass grayscale images through.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2single>)[im2single]: Convert image to single precision.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint16>)[im2uint16]: Convert image to 16-bit unsigned integer.
- #nlink(<image_processing:1_image_basics.1_image_types_color.im2uint8>)[im2uint8]: Convert image to 8-bit unsigned integer.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ind2gray>)[ind2gray]: Convert indexed image to grayscale using a colormap.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ind2rgb>)[ind2rgb]: Convert indexed image to RGB using a colormap.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2gray>)[rgb2gray]: Convert RGB image to grayscale.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2hsv>)[rgb2hsv]: Convert RGB color values to HSV color values.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2ind>)[rgb2ind]: Convert RGB image to indexed image.
- #nlink(<image_processing:1_image_basics.1_image_types_color.rgb2ycbcr>)[rgb2ycbcr]: Convert RGB color values to YCbCr color values.
- #nlink(<image_processing:1_image_basics.1_image_types_color.ycbcr2rgb>)[ycbcr2rgb]: Convert YCbCr color values to RGB color values.

=== Contrast and Thresholding

Functions for contrast adjustment, threshold selection, histogram analysis, and binary image creation.

==== Functions

- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.adaptthresh>)[adaptthresh]: Compute an adaptive image threshold.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.graythresh>)[graythresh]: Compute a global threshold using Otsu method.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imadjust>)[imadjust]: Adjust image intensity values.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imbinarize>)[imbinarize]: Binarize image using a threshold.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imcomplement>)[imcomplement]: Complement image values.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.imhist>)[imhist]: Compute image histogram counts.
- #nlink(<image_processing:1_image_basics.2_contrast_thresholding.stretchlim>)[stretchlim]: Find contrast stretching limits.

=== Filtering and Edges

Functions for spatial filtering, Gaussian and median filtering, padding, filter kernels, and edge detection.

==== Functions

- #nlink(<image_processing:1_image_basics.3_filtering_edges.edge>)[edge]: Find edges in a grayscale image.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.fspecial>)[fspecial]: Create predefined 2-D image filters.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imboxfilt>)[imboxfilt]: Apply box filtering to an image.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imfilter>)[imfilter]: Filter an image with a 2-D kernel.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.imgaussfilt>)[imgaussfilt]: Apply Gaussian filtering to an image.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.medfilt2>)[medfilt2]: Apply 2-D median filtering.
- #nlink(<image_processing:1_image_basics.3_filtering_edges.padarray>)[padarray]: Pad an array before image filtering or morphology.

== Image Analysis and Segmentation

Functions for morphology, connected components, boundary tracing, region measurements, reconstruction, and segmentation.

=== Morphology

Functions for binary and grayscale morphological operations, object cleanup, border cleanup, and structuring elements.

==== Functions

- #nlink(<image_processing:2_image_analysis.4_morphology.bwareaopen>)[bwareaopen]: Remove small connected components from a binary image.
- #nlink(<image_processing:2_image_analysis.4_morphology.bwmorph>)[bwmorph]: Apply morphological operations to binary images.
- #nlink(<image_processing:2_image_analysis.4_morphology.bwperim>)[bwperim]: Find perimeter pixels of binary objects.
- #nlink(<image_processing:2_image_analysis.4_morphology.imbothat>)[imbothat]: Bottom-hat filtering of an image.
- #nlink(<image_processing:2_image_analysis.4_morphology.imclearborder>)[imclearborder]: Remove binary image components connected to the image border.
- #nlink(<image_processing:2_image_analysis.4_morphology.imclose>)[imclose]: Close an image by dilation followed by erosion.
- #nlink(<image_processing:2_image_analysis.4_morphology.imdilate>)[imdilate]: Dilate a binary or grayscale image or volume.
- #nlink(<image_processing:2_image_analysis.4_morphology.imerode>)[imerode]: Erode a binary or grayscale image or volume.
- #nlink(<image_processing:2_image_analysis.4_morphology.imfill>)[imfill]: Fill holes in binary images.
- #nlink(<image_processing:2_image_analysis.4_morphology.imopen>)[imopen]: Open an image by erosion followed by dilation.
- #nlink(<image_processing:2_image_analysis.4_morphology.imtophat>)[imtophat]: Top-hat filtering of an image.
- #nlink(<image_processing:2_image_analysis.4_morphology.strel>)[strel]: Create a structuring element.

=== Regions and Boundaries

Functions for connected components, labels, region measurements, selection, and boundary tracing.

==== Functions

- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwboundaries>)[bwboundaries]: Find boundary pixels of binary regions.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwconncomp>)[bwconncomp]: Find connected components in a binary image or volume.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwlabel>)[bwlabel]: Label connected components in a binary image.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwselect>)[bwselect]: Select connected binary objects.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.bwtraceboundary>)[bwtraceboundary]: Trace boundary pixels of a binary object.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.labelmatrix>)[labelmatrix]: Create label matrix from connected components.
- #nlink(<image_processing:2_image_analysis.5_regions_boundaries.regionprops>)[regionprops]: Measure properties of image regions.

=== Segmentation

Functions for segmenting images using region growing, active contours, morphological reconstruction, h-minima\/maxima, regional extrema, imposed minima, and watershed transforms.

==== Functions

- #nlink(<image_processing:2_image_analysis.7_segmentation.activecontour>)[activecontour]: Segment an image from an initial contour mask.
- #nlink(<image_processing:2_image_analysis.7_segmentation.grayconnected>)[grayconnected]: Select a connected grayscale region from a seed pixel.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imextendedmax>)[imextendedmax]: Find extended maxima in a 2-D image.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imextendedmin>)[imextendedmin]: Find extended minima in a 2-D image.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imhmax>)[imhmax]: Suppress shallow maxima using the h-maxima transform.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imhmin>)[imhmin]: Suppress shallow minima using the h-minima transform.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imimposemin>)[imimposemin]: Impose regional minima at marker pixels.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imreconstruct>)[imreconstruct]: Perform morphological reconstruction by dilation.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmax>)[imregionalmax]: Find regional maxima in a 2-D image.
- #nlink(<image_processing:2_image_analysis.7_segmentation.imregionalmin>)[imregionalmin]: Find regional minima in a 2-D image.
- #nlink(<image_processing:2_image_analysis.7_segmentation.watershed>)[watershed]: Compute watershed regions of a 2-D image or 3-D volume.

=== Feature Detection

Functions for corner metrics and local feature point detection.

==== Functions

- #nlink(<image_processing:2_image_analysis.9_feature_detection.cornermetric>)[cornermetric]: Compute a corner strength metric.
- #nlink(<image_processing:2_image_analysis.9_feature_detection.detectFASTFeatures>)[detectFASTFeatures]: Detect FAST corner features.
- #nlink(<image_processing:2_image_analysis.9_feature_detection.detectHarrisFeatures>)[detectHarrisFeatures]: Detect Harris corner features.

== Geometry, Registration, and 3-D

Functions for geometric transforms, spatial referencing, image registration, volumetric filtering, resizing, and 3-D measurements.

=== Geometric Transforms

Functions and objects for cropping, resizing, rotation, translation, spatial referencing, and geometric transforms in 2-D and foundational 3-D workflows.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d]: Create a 2-D affine transformation structure.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d]: Create a 3-D affine transformation structure.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>)[fitgeotrans]: Fit a 2-D geometric transformation from control points.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imcrop>)[imcrop]: Crop an image using a rectangle.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref2d>)[imref2d]: Create a 2-D spatial reference structure.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d]: Create a 3-D spatial reference structure.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig]: Create default image registration optimizer and metric structures.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr]: Estimate a 2-D image registration transform by phase correlation.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>)[imregister]: Register a moving image to a fixed image.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform]: Estimate a 2-D registration transformation from images.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize]: Resize image by scale or output size
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imrotate>)[imrotate]: Rotate image by specified angle
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imtranslate>)[imtranslate]: Translate an image in 2-D.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp]: Warp an image or volume using a numeric transform matrix.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.intrinsicToWorld>)[intrinsicToWorld]: Convert intrinsic image coordinates to world coordinates.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d]: Create a 2-D projective transformation structure.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.sizesMatch>)[sizesMatch]: Determine whether a spatial reference matches an image size.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsForward>)[transformPointsForward]: Apply a forward geometric transformation to points.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsInverse>)[transformPointsInverse]: Apply an inverse geometric transformation to points.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToIntrinsic>)[worldToIntrinsic]: Convert world coordinates to intrinsic image coordinates.
- #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToSubscript>)[worldToSubscript]: Convert world coordinates to image subscripts.

=== 3-D Volumes

Functions for filtering and processing volumetric image data.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>)[imgaussfilt3]: Filter a 3-D volume with a Gaussian kernel.
- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imresize3>)[imresize3]: Resize 3-D volume
- #nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.regionprops3>)[regionprops3]: Measure properties of 3-D volume regions

=== Image Registration

Guides and entry points for aligning images, estimating registration transforms, and applying registered outputs.

==== Functions

- #nlink(<image_processing:3_geometry_registration_3d.9a_image_registration.image_registration>)[image\_registration]: Image registration task overview.


#nested[
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/hsv2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2double.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2single.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2uint16.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/im2uint8.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ind2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ind2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2gray.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2hsv.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2ind.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/rgb2ycbcr.typ"
#pagebreak(weak: true)
#include "1_image_basics/1_image_types_color/ycbcr2rgb.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/adaptthresh.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/graythresh.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imadjust.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imbinarize.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imcomplement.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/imhist.typ"
#pagebreak(weak: true)
#include "1_image_basics/2_contrast_thresholding/stretchlim.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/edge.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/fspecial.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imboxfilt.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imfilter.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/imgaussfilt.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/medfilt2.typ"
#pagebreak(weak: true)
#include "1_image_basics/3_filtering_edges/padarray.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwareaopen.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwmorph.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/bwperim.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imbothat.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imclearborder.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imclose.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imdilate.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imerode.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imfill.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imopen.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/imtophat.typ"
#pagebreak(weak: true)
#include "2_image_analysis/4_morphology/strel.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwboundaries.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwconncomp.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwlabel.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwselect.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/bwtraceboundary.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/labelmatrix.typ"
#pagebreak(weak: true)
#include "2_image_analysis/5_regions_boundaries/regionprops.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/activecontour.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/grayconnected.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imextendedmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imextendedmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imhmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imhmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imimposemin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imreconstruct.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imregionalmax.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/imregionalmin.typ"
#pagebreak(weak: true)
#include "2_image_analysis/7_segmentation/watershed.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/cornermetric.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/detectFASTFeatures.typ"
#pagebreak(weak: true)
#include "2_image_analysis/9_feature_detection/detectHarrisFeatures.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/affine2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/affine3d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/fitgeotrans.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imcrop.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imref2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imref3d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregconfig.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregcorr.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregister.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imregtform.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imresize.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imrotate.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imtranslate.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/imwarp.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/intrinsicToWorld.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/projective2d.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/sizesMatch.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/transformPointsForward.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/transformPointsInverse.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/6_geometric_transforms/worldToSubscript.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/imgaussfilt3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/imresize3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/8_volumes_3d/regionprops3.typ"
#pagebreak(weak: true)
#include "3_geometry_registration_3d/9a_image_registration/image_registration.typ"
]
