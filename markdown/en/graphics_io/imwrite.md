# imwrite

Write image to graphics file.

## Syntax

- imwrite(A, filename)
- imwrite(A, map, filename)
- imwrite(..., fmt)
- imwrite(..., , propertyName, propertyValue)

## Input argument

- A - matrix: 3D for color and 2D for gray or indexed image.
- map - Colormap of indexed image:m-by-3 array.
- fmt - Format of output file: 'bmp', 'png', 'jpg', 'gif', ...
- filename - a row vector characters or scalar string: name of graphics file.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Description

<p>
            imwrite(A, filename) writes image data A to the file specified by filename
        </p>

<p></p>

<p>Property name:</p>

<p></p>

<p>
            Quality: quality of output file: scalar in the range [0, 100] (75 as default).</p>

<p>
                Alpha: matrix of values in the range [0, 1]: Transparency of each pixel.</p>

<p>
                    Comment: character vector, string scalar, cell array of character vectors or string array: Comment added to image.</p>

<p>
                        Author: character vector or string scalar: Author information.</p>

<p></p>

<p>Properties for gif format:</p>

<p></p>

<p>
                            WriteMode:</p>

<p>
                                LoopCount:</p>

<p>
                                    DelayTime:</p>

## Examples

```matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
```

gif animation

```matlab
movie_directory = [modulepath('graphics'), '/examples/', 'movie/'];
sequences = {'dance', 8; 'leap', 9};
frameIdx = 0;
filename_gif = [tempdir, 'gif_animation.gif'];
for s = 1:size(sequences, 1)
    action = sequences{s, 1};
    nb_frames_action = sequences{s, 2};

    for i = 1:nb_frames_action
        % Construct the filename for the current frame
        filename = fullfile(movie_directory, sprintf('%s_%d.png', action, i));

        % Read the image and store it in the movie structure
        [image, map] = imread(filename);
        % Read the image
        [A, map] = imread(filename);
        if frameIdx == 1
            imwrite(A,map,filename_gif,"gif", 'LoopCount', Inf, 'DelayTime', 1);
        else
            imwrite(A,map,filename_gif,"gif", 'WriteMode', "append", 'DelayTime', 1)
        end
        frameIdx = frameIdx + 1;
    end
end
if ispc()
  unix(filename_gif);
else
  unix(['xdg-open ', filename_gif]);
end

```

<img src="imwrite_gif.gif" align="middle"/>

## See also

[imread](../graphics_io/imread.md), [imshow](../graphics/imshow.md), [imformats](../graphics_io/imformats.md).

## History

| Version | Description                     |
| ------- | ------------------------------- |
| 1.0.0   | initial version                 |
| 1.13.0  | gif animation, pcx format added |

## Author

Allan CORNET
