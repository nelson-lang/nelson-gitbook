# nelson.htmlviewer.htmlviewer

Handle to a Nelson HTML viewer window.

## 📝 Syntax

- h = nelson.htmlviewer.htmlviewer()
- h = nelson.htmlviewer.htmlviewer(input)
- htmlText = getHTMLText(h)
- close(h)

## 📥 Input argument

- input - a string: local file path, file URL, or text URL.

## 📤 Output argument

- h - HTML viewer handle.
- htmlText - current HTML document text.

## 📄 Description

The <b>nelson.htmlviewer.htmlviewer</b> class represents an HTML viewer window. Its public properties are <b>Input</b> and <b>Visible</b>.

## 💡 Example

Display HTML and read the document text.

```matlab
h = nelson.htmlviewer.htmlviewer('text://<html><body>Hello</body></html>');
txt = getHTMLText(h);
close(h);

```

## 🔗 See also

[web](../webview/web.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
