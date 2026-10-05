# urlencode

Replace special characters in URLs with escape characters.

## 📝 Syntax

- new\_url = webread(url)

## 📥 Input argument

- url - a string: URL to a web service.

## 📤 Output argument

- new\_url - a string: encoded url.

## 📄 Description


<b>urlencode</b> replaces special characters in URLs with escape characters. 

Special characters in URLs need to be replaced with escape characters. For example, spaces should be replaced with '%20'.

## 💡 Example



```matlab
url = 'https://httpbin.org/get?query=hello world';
res = urlencode(url)

```


## 🔗 See also

[webread](../webtools/webread.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.11.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
