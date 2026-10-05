#import "nelson_help.typ": *

= markdowndisp <help_tools:markdowndisp>

Affiche du texte Markdown rendu.

== Syntaxe

- #raw("markdowndisp(textToRender)");

== Argument d'entrée

/ textToRender: une chaîne scalaire ou un vecteur ligne de caractères : texte Markdown à rendre.

== Description

#strong[markdowndisp]; rend du texte Markdown et des équations LaTeX dans la fenêtre de commande GUI.

 Lorsque Nelson ne s'exécute pas avec la fenêtre de commande GUI, #strong[markdowndisp]; affiche le texte d'entrée avec #strong[disp];.


== Exemples

``````matlab
markdowndisp('**texte gras** et $E=mc^2$')
``````

``````matlab
mdText = sprintf([ ...
    '## Test de rendu LaTeX\n\n', ...
    '**Fraction et exposant :**\n\n', ...
    '$x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$\n\n', ...
    '**Somme :**\n\n', ...
    '$\\sum_{i=1}^{n} i = \\frac{n(n+1)}{2}$\n\n', ...
    '**Intégrale :**\n\n', ...
    '$\\int_{0}^{\\infty} e^{-x^2}\\,dx = \\frac{\\sqrt{\\pi}}{2}$\n\n', ...
    '**Matrice :**\n\n', ...
    '$A = \\begin{bmatrix} a_{11} & a_{12} \\\\ a_{21} & a_{22} \\end{bmatrix}$\n\n', ...
    '**Limite et lettres grecques :**\n\n', ...
    '$\\lim_{\\theta \\to 0} \\frac{\\sin\\theta}{\\theta} = 1, \\quad \\alpha + \\beta = \\gamma$\n\n', ...
    '**Équation inline :** l''énergie $E = mc^2$ et l''identité d''Euler $e^{i\\pi} + 1 = 0$.\n' ...
]);

markdowndisp(mdText)
``````


== Voir aussi

#nlink(<help_tools:markdown>)[markdown];, #nlink(<display_format:disp>)[disp];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
