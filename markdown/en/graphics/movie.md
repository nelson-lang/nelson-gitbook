# movie

Render recorded movie frames.

## Syntax

- movie(M)
- movie(M, n)
- movie(M, n, fps)
- movie(h, ...)

## Input argument

- M - structure array: Array of movie frames.
- n - numeric scalar: Number of times to play movie: default 1.
- fps - numeric scalar: Frames per second : default 12.
- h - Graphics object handle: default: gca()

## Description

<p>
            movie(M) plays the frames stored in the array M once. To capture a movie frame from the current figure or axes, use getframe.</p>

<p>
                movie(M, n) replays the movie n times. If n is a numeric array, the first element determines the number of repetitions, while the remaining elements define the sequence of frames to display.</p>

<p>
                    movie(M, n, fps) sets the playback speed to fps frames per second.</p>

<p>
                        movie(h, ...) displays the movie centered within the figure or axes specified by h, adjusting the movie size to fit the available space.</p>

## Examples

```matlab
% Create a figure
fig = figure('Visible', 'off');

% Number of frames
numFrames = 20;

% Preallocate an array of movie frames
clear('M');
M(numFrames) = struct('cdata', [], 'colormap', []);

% Generate frames with a moving circle
theta = linspace(0, 2*pi, numFrames); % Angle for movement

for k = 1:numFrames
    % Clear the figure
    clf;

    % Plot a moving circle
    x = cos(theta(k));
    y = sin(theta(k));
    plot(x, y, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');

    % Set axis limits
    axis([-1.5 1.5 -1.5 1.5]);
    axis equal;
    grid on;

    % Capture the frame
    M(k) = getframe(fig);
end
close(fig);

% Play the recorded movie 3 times at 10 frames per second
figure();
movie(M, 3, 10);
```

```matlab
examples_directory = [modulepath('graphics', 'root'), '/', 'examples/'];
edit([examples_directory, 'movie/demo_movie.m']);
run([examples_directory, 'movie/demo_movie.m']);
```

## See also

[getframe](../graphics/getframe.md), [imshow](../graphics/imshow.md), [im2frame](../graphics/im2frame.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.13.0  | initial version |

## Author

Allan CORNET
