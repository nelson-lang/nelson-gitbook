#import "nelson_help.typ": *

= markdowndisp <help_tools:markdowndisp>

Display rendered Markdown text.

== Syntax

- #raw("markdowndisp(textToRender)");

== Input argument

/ textToRender: a string scalar or row character vector: Markdown text to render.

== Description

#strong[markdowndisp]; renders Markdown text and LaTeX equations in the GUI Command Window.

 When Nelson is not running with the GUI Command Window, #strong[markdowndisp]; displays the input text with #strong[disp];.


== Examples

``````matlab
markdowndisp('**bold text** and $E=mc^2$')
``````

``````matlab
mdText = sprintf([ ...
    '## LaTeX Rendering Test\n\n', ...
    '**Fraction and exponent:**\n\n', ...
    '$x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}$\n\n', ...
    '**Sum:**\n\n', ...
    '$\\sum_{i=1}^{n} i = \\frac{n(n+1)}{2}$\n\n', ...
    '**Integral:**\n\n', ...
    '$\\int_{0}^{\\infty} e^{-x^2}\\,dx = \\frac{\\sqrt{\\pi}}{2}$\n\n', ...
    '**Matrix:**\n\n', ...
    '$A = \\begin{bmatrix} a_{11} & a_{12} \\\\ a_{21} & a_{22} \\end{bmatrix}$\n\n', ...
    '**Limit and Greek letters:**\n\n', ...
    '$\\lim_{\\theta \\to 0} \\frac{\\sin\\theta}{\\theta} = 1, \\quad \\alpha + \\beta = \\gamma$\n\n', ...
    '**Inline equation:** energy $E = mc^2$ and Euler identity $e^{i\\pi} + 1 = 0$.\n' ...
]);

markdowndisp(mdText)
``````


== See also

#nlink(<help_tools:markdown>)[markdown];, #nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
