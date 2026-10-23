# nlx

The Nelson Notebook document format (.nlx).

## 📄 Description


A <b>.nlx</b> file is the native Nelson Notebook document. It is a <b>zip</b> (OPC-style) container that keeps the source, the saved results and the figures apart in one portable file. 

The container has these entries: 

<b>manifest.json</b> - the format marker: <b>format</b> (<b>nelson-notebook</b>) and <b>version</b>. 

<b>document.json</b> - the source: an object with a <b>blocks</b> array (the ordered content of the Notebook). This part stays small and diffs cleanly, and the headless reader parses it directly. 

<b>output.json</b> - the saved results: for each code cell, its last text output, error and figure references, keyed by block id. It is regenerable by re-running the document, and kept apart so it never pollutes the source. 

<b>media/</b> - the figures a code cell produced, extracted as image files (for example <b>media/fig0.png</b>) so the JSON parts stay small and the images round-trip losslessly. 

Each entry of <b>blocks</b> is an object with a <b>type</b> and a <b>props</b> object: 

<b>heading</b> / <b>paragraph</b> - formatted text (a heading carries <b>props.level</b>). 

<b>codecell</b> - a Nelson code cell; <b>props.code</b> is the code. Its results live in <b>output.json</b>, not in the cell. 

<b>equation</b> - a LaTeX equation (<b>props.latex</b>). 

the interactive controls (slider, drop-down, check box, ...) and live tasks - stored with their bound variable and value in <b>props</b>. 

Only the <b>codecell</b> blocks are executable. <b>notebook</b> and <b>run</b> evaluate their <b>props.code</b> in order against the base workspace; <b>edit</b> opens the document in the Notebook editor. 

A Notebook can also be saved as a plain-text <b>.m</b> file, where each block is written under a <b>%% [kind]</b> marker, so it opens in any editor and runs as an ordinary script.

## 💡 Examples

The entries inside a .nlx container.

```matlab

manifest.json
document.json
output.json
media/fig0.png

```
A minimal document.json.

```matlab

{
  "blocks": [
    { "type": "heading", "props": { "level": 1 }, "content": "My Notebook" },
    { "type": "paragraph", "content": "A short description." },
    { "type": "codecell", "props": { "code": "x = linspace(0, 1, 10);\nplot(x)" } }
  ]
}

```


## 🔗 See also

[notebook](../notebook/notebook.md), [run](../core/run.md), [edit](../text_editor/edit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
