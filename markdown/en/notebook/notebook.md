# notebook

Run a Notebook document.

## 📝 Syntax

- notebook(filename)
- tf = notebook(filename)

## 📥 Input argument

- filename - a character vector or string scalar: a Notebook document (<b>.nlx</b>) or a Notebook plain-text file (<b>.m</b>).

## 📤 Output argument

- tf - a logical: <b>true</b> when the document ran.

## 📄 Description


<b>notebook</b> runs a Notebook document without the editor: it reads the code of each code cell, in order, and evaluates it against the base workspace. Variables created in one cell are visible to the next, as when running the document in the editor. 

The native <b>.nlx</b> container (a zip holding the document) and the plain-text <b>.m</b> Notebook format are both supported; an ordinary <b>.m</b> script is run as a single cell.

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
