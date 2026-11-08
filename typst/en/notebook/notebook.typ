#import "nelson_help.typ": *

= notebook <notebook:notebook>

Run a Notebook document or open the Notebook editor.

== Syntax

- #raw("notebook()");
- #raw("notebook(filename)");
- #raw("notebook(filename, 'edit')");
- #raw("tf = notebook(...)");

== Input argument

/ filename: a character vector or string scalar: a Notebook document (#strong[.nlx];) or a Notebook plain-text file (#strong[.m];).
/ 'edit': open the document in the Notebook editor instead of running it.

== Output argument

/ tf: a logical: #strong[true]; when the document ran or opened.

== Description

#strong[notebook]; runs a Notebook document without the editor: it reads the code of each code cell, in order, and evaluates it against the base workspace. Variables created in one cell are visible to the next, as when running the document in the editor.

 The native #strong[.nlx]; container (a zip holding the document) and the plain-text #strong[.m]; Notebook format are both supported; an ordinary #strong[.m]; script is run as a single cell.

 #strong[notebook(filename, 'edit')]; opens the document in the Notebook editor instead: a tab of the web desktop, or, in the Qt desktop, the Notebook window (one window, one tab per document). #strong[edit(filename)]; does the same for a #strong[.nlx]; file. Figures created by a cell are rendered in the document, not in a figure window.

 #strong[notebook()]; without argument opens a new, untitled document in the Notebook editor; the Qt desktop also offers it as the #strong[Notebook]; button of its toolbar and entry of its Window menu. Without a desktop (nelson-cli, nelson-adv-cli) opening the editor raises an error.


== Example

``````matlab
% build a minimal Notebook (.nlx) document and run it
d = [tempdir(), createGUID()];
mkdir(d);
fw = fopen([d, '/document.json'], 'wt');
fwrite(fw, '{"blocks":[{"type":"codecell","props":{"code":"a = 40 + 2;"}}]}');
fclose(fw);
nlx = [tempdir(), createGUID(), '.nlx'];
odir = pwd();
cd(d);
zip(nlx, 'document.json');
cd(odir);
notebook(nlx);
a
``````


== See also

#nlink(<notebook:nlx>)[nlx];, #nlink(<core:run>)[run];, #nlink(<text_editor:edit>)[edit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
