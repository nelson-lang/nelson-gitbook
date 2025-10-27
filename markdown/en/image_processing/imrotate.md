# imrotate

Rotate image by specified angle

## 📝 Syntax

- J = imrotate(I, angle)
- J = imrotate(I, angle, method)
- J = imrotate(I, angle, method, bbox)

## 📥 Input argument

- I - Input image: 2-D grayscale image or 3-D RGB image of class uint8, uint16, int16, single, or double
- angle - Rotation angle in degrees (scalar). Positive values rotate counterclockwise, negative values rotate clockwise
- method - Interpolation method (optional, default: 'bilinear'): - 'nearest': Nearest neighbor interpolation - 'bilinear': Bilinear interpolation (default) - 'bicubic': Bicubic interpolation
- bbox - Bounding box option (optional, default: 'loose'): - 'loose': Make output large enough to contain entire rotated image - 'crop': Crop output to same size as input image

## 📤 Output argument

- J - Rotated image, same class as input image I

## 📄 Description

The <b>imrotate</b> function rotates an image by the specified angle around its center point. The rotation is performed using the specified interpolation method.

The function supports various image formats including grayscale and RGB color images. The output image maintains the same data type as the input image.

For angles that are multiples of 90 degrees, the rotation is performed exactly without interpolation to preserve image quality. For other angles, interpolation is used to estimate pixel values at non-integer coordinates.

The bounding box option controls the size of the output image:

- <b>'loose'</b>: The output image is sized to contain the entire rotated image. This may result in a larger image than the input.
- <b>'crop'</b>: The output image is cropped to the same size as the input image. Parts of the rotated image may be cut off.
  Background pixels (areas not covered by the rotated image) are filled with zeros.

Note:

<b>Performance Note:</b> For exact 90-degree rotations (0°, 90°, 180°, 270°), the function uses optimized algorithms that preserve exact pixel values without interpolation.

<b>Memory Usage:</b> When using 'loose' bounding box with large rotation angles, the output image may be significantly larger than the input. Consider using 'crop' for memory-constrained applications.

<b>Data Type Preservation:</b> The output image maintains the same data type as the input. For floating-point inputs, pixel values may extend beyond the typical [0,1] range after interpolation.

<b>Angle Convention:</b> Positive angles rotate counterclockwise, following standard mathematical convention. This is opposite to some image_processing applications that use clockwise positive rotation.

Limitations:

Input image must be 2-D (grayscale) or 3-D (RGB). Other color spaces are not directly supported.

Rotation is always performed around the center of the image. Off-center rotations require additional preprocessing.

For very large angles (>360°), consider using modulo arithmetic to normalize the angle for better performance.

Bicubic interpolation may produce overshoot artifacts near sharp edges in the image.

## 💡 Examples

Interactive rotation visualization (Part 1)

```matlab
% Create a test image with clear directional features
I = zeros(100, 100, 'uint8');

% Add arrow-like pattern to show rotation clearly
I(40:60, 20:80) = 128;  % Horizontal bar
I(45:55, 15:85) = 255;  % Arrow shaft
I(50, 85:95) = 255;     % Arrow tip
I(45:49, 80:84) = 255;  % Upper arrow head
I(51:55, 80:84) = 255;  % Lower arrow head

% Show original
figure('Name', 'Rotation Progression', 'Position', [0 0 1024 768]);
subplot(2, 4, 1);
imagesc(I);
colormap(gray);
axis equal; axis tight;
title('Original (0°)');

% Show rotation progression
angles = [15, 30, 45, 60, 90, 120, 180];

for i = 1:length(angles)
    J = imrotate(I, angles(i), 'bilinear');

    subplot(2, 4, i + 1);
    imagesc(J);
    colormap(gray);
    axis equal; axis tight;
    title(sprintf('%d°', angles(i)));

    % Print rotation statistics
    fprintf('Angle %3d°: size %dx%d, non-zero pixels: %d\n', ...
            angles(i), size(J, 1), size(J, 2), sum(J(:) > 0));
end

```

<img src="imrotate_1.svg" align="middle"/>
Interactive rotation visualization (Part 2)

```matlab
% Create a test image with clear directional features
I = zeros(100, 100, 'uint8');

% Add arrow-like pattern to show rotation clearly
I(40:60, 20:80) = 128;  % Horizontal bar
I(45:55, 15:85) = 255;  % Arrow shaft
I(50, 85:95) = 255;     % Arrow tip
I(45:49, 80:84) = 255;  % Upper arrow head
I(51:55, 80:84) = 255;  % Lower arrow head

% Demonstrate interpolation effects with zoomed view
figure('Name', 'Interpolation Methods Comparison','Position', [0 0 1024 768]);
I_small = I(40:70, 40:70);  % Crop a section for detailed view

methods = {'nearest', 'bilinear', 'bicubic'};
for i = 1:length(methods)
    J = imrotate(I_small, 30, methods{i});

    subplot(1, 3, i);
    imagesc(J);
    colormap(gray);
    axis equal; axis tight;
    title(sprintf('%s interpolation', methods{i}));
end

```

<img src="imrotate_2.svg" align="middle"/>

## 🔗 See also

[imresize](../image_processing/imresize.md), [imshow](../image_processing/imshow.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

## 👤 Author

Allan CORNET
