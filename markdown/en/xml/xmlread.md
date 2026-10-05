# xmlread

Read an XML file as a document object

## 📝 Syntax

- doc = xmlread(filename)
- [doc, parser] = xmlread(filename)
- doc = xmlread(filename, name, value)

## 📥 Input argument

- filename - a string: path to the XML file.
- name, value - optional pairs: 'AllowDoctype' or 'XMLEngine'.

## 📤 Output argument

- doc - a Nelson xmlDocument object.
- parser - an empty placeholder kept for parser compatibility.

## 📄 Description


xmlread parses an XML file and returns a Nelson xmlDocument object that can be passed to xmlwrite or xslt. 

The object also provides a small DOM-style access layer: getDocumentElement, getElementsByTagName, getTagName, getNodeName, getTextContent, getAttribute, hasAttribute, getLength, and item. 

The returned object is not a complete external DOM implementation. The optional second output is currently an empty parser placeholder.

## 💡 Example

Read an XML document and access its content with DOM-style methods.

```matlab
xml_filename = [tempdir(), 'xmlread_books.xml'];
xml_text = ['<catalog>', ...
            '<book id="b1"><title>Numerical Methods</title><year>2026</year></book>', ...
            '<book id="b2"><title>Signal Processing</title><year>2025</year></book>', ...
            '</catalog>'];
filewrite(xml_filename, xml_text);
doc = xmlread(xml_filename);
root = doc.getDocumentElement();
root_name = root.getTagName()
books = doc.getElementsByTagName('book');
count = books.getLength()
first_book = books.item(0);
book_id = first_book.getAttribute('id')
book_text = first_book.getTextContent()
xmlwrite(doc)
```


## 🔗 See also

[xmlwrite](../xml/xmlwrite.md), [readstruct](../xml/readstruct.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
