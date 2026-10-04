# readstruct

Read XML data as a structure

## 📝 Syntax

- s = readstruct(filename)
- s = readstruct(filename, name, value)

## 📥 Input argument

- filename - a string: path to the XML file.
- name, value - optional pairs: 'FileType', 'StructNodeName', 'StructSelector', 'ImportAttributes', 'AttributeSuffix', 'RegisteredNamespaces', or 'DateLocale'.

## 📤 Output argument

- s - a structure, scalar value, cell array, or structure array depending on the XML content.

## 📄 Description

readstruct reads XML elements into Nelson values. Attributes are imported by default with the suffix 'Attribute'.

## 💡 Examples

Read XML data into a Nelson structure.

```matlab
filename = [tempdir(), 'readstruct_books.xml'];
xml_text = ['<catalog source="local">', ...
            '<book id="b1"><title>Numerical Methods</title><year>2026</year></book>', ...
            '<book id="b2"><title>Signal Processing</title><year>2025</year></book>', ...
            '</catalog>'];
filewrite(filename, xml_text);
s = readstruct(filename);
s.sourceAttribute
s.book(1).idAttribute
s.book(1).title
s.book(1).year
```

Read one selected XML element with an XPath selector.

```matlab
filename = [tempdir(), 'readstruct_selected_book.xml'];
xml_text = ['<catalog>', ...
            '<book id="b1"><title>Numerical Methods</title></book>', ...
            '<book id="b2"><title>Signal Processing</title></book>', ...
            '</catalog>'];
filewrite(filename, xml_text);
book = readstruct(filename, 'StructSelector', '//book');
book.idAttribute
book.title
```

## 🔗 See also

[writestruct](../xml/writestruct.md), [xmlread](../xml/xmlread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
