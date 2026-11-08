#import "nelson_help.typ": *

= Your first Nelson Notebook <notebook:1_notebook_first_steps>

Create, run and save your first Notebook document.

== Description

A #strong[Notebook]; is a single document that holds formatted text, Nelson code and the output of that code, in the order you arrange them. It is built from #strong[blocks];: a heading, a paragraph, a code cell, an equation or an interactive control. Running a code cell shows its text output and its figures just below the code, so the explanation, the computation and the result stay together.

 All the code cells of one document share a single workspace, the same base workspace used at the command line. A variable created in one cell is visible to the cells that run after it. This tutorial creates a document, runs it and saves it.

 #strong[Open the editor];

 The #strong[notebook]; function opens the Notebook editor:

 

- #strong[notebook()]; with no argument opens a new, empty document.
- #strong[notebook(filename, 'edit')]; opens an existing document, and #strong[edit(filename)]; does the same for a #strong[.nlx]; file. On the Nelson desktop you can also use the #strong[New Notebook]; button of the toolbar, or the #strong[Window]; menu. The editor opens as a tab of the web desktop, or, on the Qt desktop, as the Notebook window (one window, one tab per document). Without a desktop (nelson-cli, nelson-adv-cli) the editor cannot open and the call reports an error.

 The editor shows a toolbar at the top and the document below. A new document already contains a short example you can run and edit.

 
#align(center)[#image("notebook_editor.png")]


 #strong[Add text and code];

 Click in the document and type to write text. Press #strong[Enter]; to start a new block. To insert anything other than a paragraph, type #strong[\/]; at the start of a line and pick an item from the list, or use the #strong[Insert]; menu of the toolbar. Choose #strong[Code cell]; to add a cell and type Nelson code in it, for example:

 #raw("x = linspace(0, 2 * pi, 200);");

 #raw("plot(x, sin(x))");

 #strong[Run a cell];

 Each code cell has a run button in its left margin. Click it to run that one cell, or click #strong[Run all]; in the toolbar to run every code cell from top to bottom. The text output appears under the cell, and any figure the cell draws is shown inline, in the document, instead of a separate figure window.

 #strong[The shared workspace];

 Because the cells share one workspace, you can split a computation across several cells. The value set in an earlier cell is used by a later one:

 

+ First cell: #raw("N = 200;");
+ Second cell: #raw("x = linspace(0, 2 * pi, N);");
+ Third cell: #raw("plot(x, sin(x))"); What matters is the order in which the cells run, not their position on the page. If a later cell reports an unknown variable, run the earlier cells first, or use #strong[Run all];.

 #strong[Save your work];

 Use #strong[Save]; in the toolbar to write the document as a #strong[.nlx]; file, the native Notebook format. The #strong[.nlx]; container keeps the text, the code, the saved output and the figures together in one portable file. You can also save the document as a plain-text #strong[.m]; script with #strong[Save as Script];. Reopen a saved document with #strong[Open];, with #strong[edit(filename)]; or with #strong[notebook(filename, 'edit')];.

 #strong[What next];

 The next tutorials describe the block kinds and the interactive controls, and how to run or share a document without the editor.


== See also

#nlink(<notebook:2_notebook_cells_and_controls>)[Notebook cells and controls];, #nlink(<notebook:3_notebook_run_and_share>)[Run and share a Notebook];, #nlink(<notebook:notebook>)[notebook];, #nlink(<notebook:nlx>)[nlx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
