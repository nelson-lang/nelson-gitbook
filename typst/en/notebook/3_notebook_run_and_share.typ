#import "nelson_help.typ": *

= Run and share a Notebook <notebook:3_notebook_run_and_share>

Run a Notebook without the editor, and export or import it.

== Description

A Notebook document is more than an editor view. The same file runs from the command line, saves and travels as one portable file, and converts to and from other formats.

 
#align(center)[#image("notebook_workflow.svg")]


 #strong[Run without the editor];

 #strong[notebook(filename)]; runs a document without opening it: it reads the code of each code cell, in order, and evaluates it against the base workspace, exactly as the editor would. #strong[run(filename)]; on a #strong[.nlx]; file does the same. This is how a document runs from nelson-cli or in a batch job, where no editor is available. The text blocks, headings, equations and controls are skipped; only the code cells run.

 #strong[The .nlx container];

 The native #strong[.nlx]; file is a zip container. It keeps the source (#strong[document.json];), the saved output (#strong[output.json];) and the figures (#strong[media\/];) apart, so the source stays small and reads cleanly, while the saved figures travel with it. The #strong[nlx]; reference page describes every entry.

 #strong[The plain-text .m form];

 A Notebook can also be saved as a plain-text #strong[.m]; script, where each block is written under a #raw("%% [kind]"); marker (for example #raw("%% [code]"); or #raw("%% [text]");). This file opens in any text editor and runs as an ordinary script. An #strong[.m]; file with no such marker is treated as one single code cell and run whole.

 #strong[Export and import];

 From the #strong[Export]; menu a document is written as #strong[HTML];, #strong[Markdown];, #strong[Word (.docx)]; or a #strong[Jupyter notebook (.ipynb)];, and #strong[Save as Script]; writes the plain-text #strong[.m]; form. #strong[Open]; reads a #strong[.nlx]; document, a plain #strong[.m]; script or a #strong[.ipynb]; notebook back into the editor.

 #strong[Check that a document runs top to bottom];

 A document is reliable when it runs from an empty workspace, in order, with no error. Because the cells share the base workspace, a variable left over from an earlier session can hide a missing step. To check, run the document in a fresh session, for example with #raw("nelson-cli"); and #strong[notebook(filename)];; if a cell fails, the run stops with the error. This same check fits a continuous-integration job.

 The example below builds a minimal #strong[.nlx]; document and runs it without the editor.


== Example

Build a Notebook (.nlx) document and run it headless.

``````matlab
% write the source of a one-cell document
d = [tempdir(), createGUID()];
mkdir(d);
fw = fopen([d, '/document.json'], 'wt');
fwrite(fw, '{"blocks":[{"type":"codecell","props":{"code":"answer = 6 * 7;"}}]}');
fclose(fw);
fw = fopen([d, '/manifest.json'], 'wt');
fwrite(fw, '{"format":"nelson-notebook","version":1}');
fclose(fw);
% pack it as a .nlx container
nlx = [tempdir(), createGUID(), '.nlx'];
odir = pwd();
cd(d);
zip(nlx, '*.json');
cd(odir);
% run it: the code cell evaluates against the base workspace
notebook(nlx);
answer
``````


== See also

#nlink(<notebook:1_notebook_first_steps>)[Your first Nelson Notebook];, #nlink(<notebook:2_notebook_cells_and_controls>)[Notebook cells and controls];, #nlink(<notebook:notebook>)[notebook];, #nlink(<notebook:nlx>)[nlx];, #nlink(<core:run>)[run];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
