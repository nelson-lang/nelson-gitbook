# notebook

Run a Notebook document or open the Notebook editor.

## 📝 Syntax

- notebook()
- notebook(filename)
- notebook(filename, 'edit')
- tf = notebook(...)

## 📥 Input argument

- filename - a character vector or string scalar: a Notebook document (<b>.nlx</b>) or a Notebook plain-text file (<b>.m</b>).
- 'edit' - open the document in the Notebook editor instead of running it.

## 📤 Output argument

- tf - a logical: <b>true</b> when the document ran or opened.

## 📄 Description


<b>notebook</b> runs a Notebook document without the editor: it reads the code of each code cell, in order, and evaluates it against the base workspace. Variables created in one cell are visible to the next, as when running the document in the editor. 

The native <b>.nlx</b> container (a zip holding the document) and the plain-text <b>.m</b> Notebook format are both supported; an ordinary <b>.m</b> script is run as a single cell. 

<b>notebook(filename, 'edit')</b> opens the document in the Notebook editor instead: a tab of the web desktop, or, in the Qt desktop, the Notebook window (one window, one tab per document). <b>edit(filename)</b> does the same for a <b>.nlx</b> file. Figures created by a cell are rendered in the document, not in a figure window. 

<b>notebook()</b> without argument opens a new, untitled document in the Notebook editor; the Qt desktop also offers it as the <b>Notebook</b> button of its toolbar and entry of its Window menu. Without a desktop (nelson-cli, nelson-adv-cli) opening the editor raises an error.

## 💡 Example



```matlab
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
```


## 🔗 See also

[nlx](../notebook/nlx.md), [run](../core/run.md), [edit](../text_editor/edit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
