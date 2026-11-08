#import "nelson_help.typ": *

= Notebook cells and controls <notebook:2_notebook_cells_and_controls>

The block kinds of a Notebook and the interactive controls.

== Description

A Notebook is a sequence of #strong[blocks];. Some blocks are narrative, one runs code, and others are interactive controls that drive a variable. You insert any of them by typing #strong[\/]; in the document, or from the #strong[Insert]; menu of the toolbar.

 
#align(center)[#image("notebook_blocks.svg")]


 #strong[Text blocks];

 A #strong[heading]; and a #strong[paragraph]; hold formatted text: titles, bold and italic words, and lists. They carry the explanation around the code and never run.

 #strong[Equations];

 An #strong[equation]; block holds a LaTeX formula and renders it inline, next to your text. For example #raw("f(x) = \\sin(x)\\,e^{-\\lambda x}"); is typeset as a mathematical expression. Equations are for display only; they are not evaluated.

 #strong[Code cells];

 A #strong[code cell]; holds Nelson code. Its left margin has three run buttons: run this cell, run up to this cell, and run the section (a code cell together with the text and controls above it, up to the previous heading). The toolbar adds #strong[Run all]; for the whole document.

 When you change a cell, the cells whose result may now be out of date are marked. #strong[Run stale]; re-runs only those and the cells that depend on them, instead of the whole document. #strong[Clear]; removes every saved output.

 #strong[Live task];

 A #strong[live task]; is a point-and-click cell: you choose an operation and its inputs, and the cell writes the Nelson code for you and runs it. It is a quick way to build a step without writing the code by hand.

 #strong[Interactive controls];

 A control is bound to a workspace variable. When you move or change the control, it sets that variable and re-runs the cells that use it, so a figure updates while you adjust a value. The available controls are:

 

- #strong[Slider]; and #strong[range slider]; - a number, or a low and high pair, from a continuous range.
- #strong[Number field]; - a single number typed or stepped.
- #strong[Drop-down]; - one value chosen from a list.
- #strong[Check box]; and #strong[state button]; - a logical on or off.
- #strong[Text field]; - a short text or number.
- #strong[Color picker]; - a colour, as an RGB triplet.
- #strong[Date picker]; - a date, as text.
- #strong[File browser]; - a file path.
- #strong[Variable selector]; - an existing workspace variable, passed on under a new name.
- #strong[Button]; - runs the cells on demand, without binding a variable. For example, a slider labelled #strong[Frequency]; bound to the variable #raw("frequency"); sets that variable each time you move it, and a cell that plots #raw("sin(frequency * x)"); redraws at once.

 #strong[A shareable view];

 #strong[Hide code]; folds the code cells away and keeps the text, the controls and the output, which turns the document into a short report a reader can use without seeing the code. #strong[Outline]; lists the headings so you can move through a long document.


== See also

#nlink(<notebook:1_notebook_first_steps>)[Your first Nelson Notebook];, #nlink(<notebook:3_notebook_run_and_share>)[Run and share a Notebook];, #nlink(<notebook:nlx>)[nlx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
