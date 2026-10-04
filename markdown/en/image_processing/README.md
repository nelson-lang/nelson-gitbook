# Image Processing functions

The Image Processing module provides operations for manipulating images and volumes, including type conversion, color conversion, contrast adjustment, filtering, morphology, connected components, region measurements, geometric transforms, resizing, rotation, feature detection, foundational 3-D processing, and image registration.

Help pages are grouped into topic chapters: image basics, image analysis and segmentation, and geometry, registration, and 3-D processing.

## Image Basics

Functions for image classes, color spaces, contrast adjustment, thresholding, filtering, padding, and edge detection.

### Image Types and Color

Functions for image type conversion, color space conversion, and indexed image conversion.

#### Functions

- [hsv2rgb](1_image_basics/1_image_types_color/hsv2rgb.md) - Convert HSV color values to RGB color values.
- [im2double](1_image_basics/1_image_types_color/im2double.md) - Convert image to double precision.
- [im2gray](1_image_basics/1_image_types_color/im2gray.md) - Convert RGB image to grayscale and pass grayscale images through.
- [im2single](1_image_basics/1_image_types_color/im2single.md) - Convert image to single precision.
- [im2uint16](1_image_basics/1_image_types_color/im2uint16.md) - Convert image to 16-bit unsigned integer.
- [im2uint8](1_image_basics/1_image_types_color/im2uint8.md) - Convert image to 8-bit unsigned integer.
- [ind2gray](1_image_basics/1_image_types_color/ind2gray.md) - Convert indexed image to grayscale using a colormap.
- [ind2rgb](1_image_basics/1_image_types_color/ind2rgb.md) - Convert indexed image to RGB using a colormap.
- [rgb2gray](1_image_basics/1_image_types_color/rgb2gray.md) - Convert RGB image to grayscale.
- [rgb2hsv](1_image_basics/1_image_types_color/rgb2hsv.md) - Convert RGB color values to HSV color values.
- [rgb2ind](1_image_basics/1_image_types_color/rgb2ind.md) - Convert RGB image to indexed image.
- [rgb2ycbcr](1_image_basics/1_image_types_color/rgb2ycbcr.md) - Convert RGB color values to YCbCr color values.
- [ycbcr2rgb](1_image_basics/1_image_types_color/ycbcr2rgb.md) - Convert YCbCr color values to RGB color values.

### Contrast and Thresholding

Functions for contrast adjustment, threshold selection, histogram analysis, and binary image creation.

#### Functions

- [adaptthresh](1_image_basics/2_contrast_thresholding/adaptthresh.md) - Compute an adaptive image threshold.
- [graythresh](1_image_basics/2_contrast_thresholding/graythresh.md) - Compute a global threshold using Otsu method.
- [imadjust](1_image_basics/2_contrast_thresholding/imadjust.md) - Adjust image intensity values.
- [imbinarize](1_image_basics/2_contrast_thresholding/imbinarize.md) - Binarize image using a threshold.
- [imcomplement](1_image_basics/2_contrast_thresholding/imcomplement.md) - Complement image values.
- [imhist](1_image_basics/2_contrast_thresholding/imhist.md) - Compute image histogram counts.
- [stretchlim](1_image_basics/2_contrast_thresholding/stretchlim.md) - Find contrast stretching limits.

### Filtering and Edges

Functions for spatial filtering, Gaussian and median filtering, padding, filter kernels, and edge detection.

#### Functions

- [edge](1_image_basics/3_filtering_edges/edge.md) - Find edges in a grayscale image.
- [fspecial](1_image_basics/3_filtering_edges/fspecial.md) - Create predefined 2-D image filters.
- [imboxfilt](1_image_basics/3_filtering_edges/imboxfilt.md) - Apply box filtering to an image.
- [imfilter](1_image_basics/3_filtering_edges/imfilter.md) - Filter an image with a 2-D kernel.
- [imgaussfilt](1_image_basics/3_filtering_edges/imgaussfilt.md) - Apply Gaussian filtering to an image.
- [medfilt2](1_image_basics/3_filtering_edges/medfilt2.md) - Apply 2-D median filtering.
- [padarray](1_image_basics/3_filtering_edges/padarray.md) - Pad an array before image filtering or morphology.

## Image Analysis and Segmentation

Functions for morphology, connected components, boundary tracing, region measurements, reconstruction, and segmentation.

### Morphology

Functions for binary and grayscale morphological operations, object cleanup, border cleanup, and structuring elements.

#### Functions

- [bwareaopen](2_image_analysis/4_morphology/bwareaopen.md) - Remove small connected components from a binary image.
- [bwmorph](2_image_analysis/4_morphology/bwmorph.md) - Apply morphological operations to binary images.
- [bwperim](2_image_analysis/4_morphology/bwperim.md) - Find perimeter pixels of binary objects.
- [imbothat](2_image_analysis/4_morphology/imbothat.md) - Bottom-hat filtering of an image.
- [imclearborder](2_image_analysis/4_morphology/imclearborder.md) - Remove binary image components connected to the image border.
- [imclose](2_image_analysis/4_morphology/imclose.md) - Close an image by dilation followed by erosion.
- [imdilate](2_image_analysis/4_morphology/imdilate.md) - Dilate a binary or grayscale image or volume.
- [imerode](2_image_analysis/4_morphology/imerode.md) - Erode a binary or grayscale image or volume.
- [imfill](2_image_analysis/4_morphology/imfill.md) - Fill holes in binary images.
- [imopen](2_image_analysis/4_morphology/imopen.md) - Open an image by erosion followed by dilation.
- [imtophat](2_image_analysis/4_morphology/imtophat.md) - Top-hat filtering of an image.
- [strel](2_image_analysis/4_morphology/strel.md) - Create a structuring element.

### Regions and Boundaries

Functions for connected components, labels, region measurements, selection, and boundary tracing.

#### Functions

- [bwboundaries](2_image_analysis/5_regions_boundaries/bwboundaries.md) - Find boundary pixels of binary regions.
- [bwconncomp](2_image_analysis/5_regions_boundaries/bwconncomp.md) - Find connected components in a binary image or volume.
- [bwlabel](2_image_analysis/5_regions_boundaries/bwlabel.md) - Label connected components in a binary image.
- [bwselect](2_image_analysis/5_regions_boundaries/bwselect.md) - Select connected binary objects.
- [bwtraceboundary](2_image_analysis/5_regions_boundaries/bwtraceboundary.md) - Trace boundary pixels of a binary object.
- [labelmatrix](2_image_analysis/5_regions_boundaries/labelmatrix.md) - Create label matrix from connected components.
- [regionprops](2_image_analysis/5_regions_boundaries/regionprops.md) - Measure properties of image regions.

### Segmentation

Functions for segmenting images using region growing, active contours, morphological reconstruction, h-minima/maxima, regional extrema, imposed minima, and watershed transforms.

#### Functions

- [activecontour](2_image_analysis/7_segmentation/activecontour.md) - Segment an image from an initial contour mask.
- [grayconnected](2_image_analysis/7_segmentation/grayconnected.md) - Select a connected grayscale region from a seed pixel.
- [imextendedmax](2_image_analysis/7_segmentation/imextendedmax.md) - Find extended maxima in a 2-D image.
- [imextendedmin](2_image_analysis/7_segmentation/imextendedmin.md) - Find extended minima in a 2-D image.
- [imhmax](2_image_analysis/7_segmentation/imhmax.md) - Suppress shallow maxima using the h-maxima transform.
- [imhmin](2_image_analysis/7_segmentation/imhmin.md) - Suppress shallow minima using the h-minima transform.
- [imimposemin](2_image_analysis/7_segmentation/imimposemin.md) - Impose regional minima at marker pixels.
- [imreconstruct](2_image_analysis/7_segmentation/imreconstruct.md) - Perform morphological reconstruction by dilation.
- [imregionalmax](2_image_analysis/7_segmentation/imregionalmax.md) - Find regional maxima in a 2-D image.
- [imregionalmin](2_image_analysis/7_segmentation/imregionalmin.md) - Find regional minima in a 2-D image.
- [watershed](2_image_analysis/7_segmentation/watershed.md) - Compute watershed regions of a 2-D image or 3-D volume.

### Feature Detection

Functions for corner metrics and local feature point detection.

#### Functions

- [cornermetric](2_image_analysis/9_feature_detection/cornermetric.md) - Compute a corner strength metric.
- [detectFASTFeatures](2_image_analysis/9_feature_detection/detectFASTFeatures.md) - Detect FAST corner features.
- [detectHarrisFeatures](2_image_analysis/9_feature_detection/detectHarrisFeatures.md) - Detect Harris corner features.

## Geometry, Registration, and 3-D

Functions for geometric transforms, spatial referencing, image registration, volumetric filtering, resizing, and 3-D measurements.

### Geometric Transforms

Functions and objects for cropping, resizing, rotation, translation, spatial referencing, and geometric transforms in 2-D and foundational 3-D workflows.

#### Functions

- [affine2d](3_geometry_registration_3d/6_geometric_transforms/affine2d.md) - Create a 2-D affine transformation structure.
- [affine3d](3_geometry_registration_3d/6_geometric_transforms/affine3d.md) - Create a 3-D affine transformation structure.
- [fitgeotrans](3_geometry_registration_3d/6_geometric_transforms/fitgeotrans.md) - Fit a 2-D geometric transformation from control points.
- [imcrop](3_geometry_registration_3d/6_geometric_transforms/imcrop.md) - Crop an image using a rectangle.
- [imref2d](3_geometry_registration_3d/6_geometric_transforms/imref2d.md) - Create a 2-D spatial reference structure.
- [imref3d](3_geometry_registration_3d/6_geometric_transforms/imref3d.md) - Create a 3-D spatial reference structure.
- [imregconfig](3_geometry_registration_3d/6_geometric_transforms/imregconfig.md) - Create default image registration optimizer and metric structures.
- [imregcorr](3_geometry_registration_3d/6_geometric_transforms/imregcorr.md) - Estimate a 2-D image registration transform by phase correlation.
- [imregister](3_geometry_registration_3d/6_geometric_transforms/imregister.md) - Register a moving image to a fixed image.
- [imregtform](3_geometry_registration_3d/6_geometric_transforms/imregtform.md) - Estimate a 2-D registration transformation from images.
- [imresize](3_geometry_registration_3d/6_geometric_transforms/imresize.md) - Resize image by scale or output size
- [imrotate](3_geometry_registration_3d/6_geometric_transforms/imrotate.md) - Rotate image by specified angle
- [imtranslate](3_geometry_registration_3d/6_geometric_transforms/imtranslate.md) - Translate an image in 2-D.
- [imwarp](3_geometry_registration_3d/6_geometric_transforms/imwarp.md) - Warp an image or volume using a numeric transform matrix.
- [intrinsicToWorld](3_geometry_registration_3d/6_geometric_transforms/intrinsicToWorld.md) - Convert intrinsic image coordinates to world coordinates.
- [projective2d](3_geometry_registration_3d/6_geometric_transforms/projective2d.md) - Create a 2-D projective transformation structure.
- [sizesMatch](3_geometry_registration_3d/6_geometric_transforms/sizesMatch.md) - Determine whether a spatial reference matches an image size.
- [transformPointsForward](3_geometry_registration_3d/6_geometric_transforms/transformPointsForward.md) - Apply a forward geometric transformation to points.
- [transformPointsInverse](3_geometry_registration_3d/6_geometric_transforms/transformPointsInverse.md) - Apply an inverse geometric transformation to points.
- [worldToIntrinsic](3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.md) - Convert world coordinates to intrinsic image coordinates.
- [worldToSubscript](3_geometry_registration_3d/6_geometric_transforms/worldToSubscript.md) - Convert world coordinates to image subscripts.

### 3-D Volumes

Functions for filtering and processing volumetric image data.

#### Functions

- [imgaussfilt3](3_geometry_registration_3d/8_volumes_3d/imgaussfilt3.md) - Filter a 3-D volume with a Gaussian kernel.
- [imresize3](3_geometry_registration_3d/8_volumes_3d/imresize3.md) - Resize 3-D volume
- [regionprops3](3_geometry_registration_3d/8_volumes_3d/regionprops3.md) - Measure properties of 3-D volume regions

### Image Registration

Guides and entry points for aligning images, estimating registration transforms, and applying registered outputs.

#### Functions

- [image_registration](3_geometry_registration_3d/9a_image_registration/image_registration.md) - Image registration task overview.
