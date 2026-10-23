#import "nelson_help.typ": *

= nlx <notebook:nlx>

The Nelson Notebook document format (.nlx).

== Description

A #strong[.nlx]; file is the native Nelson Notebook document. It is a #strong[zip]; (OPC-style) container that keeps the source, the saved results and the figures apart in one portable file.

 The container has these entries:

 #strong[manifest.json]; - the format marker: #strong[format]; (#strong[nelson-notebook];) and #strong[version];.

 #strong[document.json]; - the source: an object with a #strong[blocks]; array (the ordered content of the Notebook). This part stays small and diffs cleanly, and the headless reader parses it directly.

 #strong[output.json]; - the saved results: for each code cell, its last text output, error and figure references, keyed by block id. It is regenerable by re-running the document, and kept apart so it never pollutes the source.

 #strong[media\/]; - the figures a code cell produced, extracted as image files (for example #strong[media\/fig0.png];) so the JSON parts stay small and the images round-trip losslessly.

 Each entry of #strong[blocks]; is an object with a #strong[type]; and a #strong[props]; object:

 #strong[heading]; \/ #strong[paragraph]; - formatted text (a heading carries #strong[props.level];).

 #strong[codecell]; - a Nelson code cell; #strong[props.code]; is the code. Its results live in #strong[output.json];, not in the cell.

 #strong[equation]; - a LaTeX equation (#strong[props.latex];).

 the interactive controls (slider, drop-down, check box, ...) and live tasks - stored with their bound variable and value in #strong[props];.

 Only the #strong[codecell]; blocks are executable. #strong[notebook]; and #strong[run]; evaluate their #strong[props.code]; in order against the base workspace; #strong[edit]; opens the document in the Notebook editor.

 A Notebook can also be saved as a plain-text #strong[.m]; file, where each block is written under a #strong[%% \[kind\]]; marker, so it opens in any editor and runs as an ordinary script.


== Examples

The entries inside a .nlx container.

``````matlab

manifest.json
document.json
output.json
media/fig0.png

``````

A minimal document.json.

``````matlab

{
  "blocks": [
    { "type": "heading", "props": { "level": 1 }, "content": "My Notebook" },
    { "type": "paragraph", "content": "A short description." },
    { "type": "codecell", "props": { "code": "x = linspace(0, 1, 10);\nplot(x)" } }
  ]
}

``````


== See also

#nlink(<notebook:notebook>)[notebook];, #nlink(<core:run>)[run];, #nlink(<text_editor:edit>)[edit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
