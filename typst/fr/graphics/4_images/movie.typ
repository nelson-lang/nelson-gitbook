#import "../nelson_help.typ": *

= movie <graphics:4_images.movie>

Jouer des séquences d'images enregistrées (movie).

== Syntaxe

- #raw("movie(M)");
- #raw("movie(M, n)");
- #raw("movie(M, n, fps)");
- #raw("movie(h, ...)");

== Argument d'entrée

/ M: Tableau de structures : tableau d'images du film.
/ n: Valeur scalaire numérique : nombre de répétitions du film (par défaut 1).
/ fps: Valeur scalaire numérique : nombre d'images par seconde (par défaut 12).
/ h: Handle d'objet graphique : par défaut gca()

== Description

#strong[movie(M)]; joue une fois les images stockées dans le tableau M. Pour capturer une image de film depuis la figure ou les axes courants, utilisez getframe.

 #strong[movie(M, n)]; rejoue le film n fois. Si n est un tableau numérique, le premier élément détermine le nombre de répétitions, les éléments suivants définissent la séquence d'images à afficher.

 #strong[movie(M, n, fps)]; définit la vitesse de lecture à fps images par seconde.

 #strong[movie(h, ...)]; affiche le film centré dans la figure ou les axes spécifiés par h, en ajustant la taille du film à l'espace disponible.


== Exemples

``````matlab
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
``````

``````matlab
examples_directory = [modulepath('graphics', 'root'), '/', 'examples/'];
edit([examples_directory, 'movie/demo_movie.m']);
run([examples_directory, 'movie/demo_movie.m']);
``````


== Voir aussi

#nlink(<graphics:4_images.getframe>)[getframe];, #nlink(<graphics:4_images.imshow>)[imshow];, #nlink(<graphics:4_images.im2frame>)[im2frame];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [version initiale],
)

// Auteur: Allan CORNET
