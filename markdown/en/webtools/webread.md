# webread

Read data from RESTful web service to Nelson's variable

## 📝 Syntax

- var = webread(url)
- var = webread(url, name1, value1, ... , nameN, valueN)
- var = webread(url, name1, value1, ... , nameN, valueN, options)

## 📥 Input argument

- url - a string: URL to a web service.
- name1, value1, ... , nameN, valueN - Name-Value Pair Arguments.
- options - a weboptions object.

## 📤 Output argument

- var - a variable: content from web.

## 📄 Description


<b>webread()</b> reads content from the web to nelson's variable. 

HTTP redirects are followed by default (see <b>FollowLocation</b> in <b>weboptions</b>). 

When <b>ContentType</b> is <b>'auto'</b> (the default), the Content-Type header of the response selects the decoder: an <b>image/\*</b> response is read with <b>imread</b>, an <b>audio/\*</b> response with <b>audioread</b> and a JSON response with <b>jsondecode</b>. Other media types are detected from the content.

## 💡 Examples



```matlab
url = 'https://httpbin.org/get';
res = webread(url,weboptions('ContentType','json'));

```
More demos

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_1.m'])

```
Use function_handle with weboptions and webread

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_2.m'])

```
Read data from National Agricultural Statistics Service

```matlab
edit([modulepath('webtools'),'/examples/webread_demo_3.m'])

```


## 🔗 See also

[weboptions](../webtools/weboptions.md), [websave](../webtools/websave.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | redirects followed by default, 'auto' content type uses the response Content-Type header |

<!--
## 👤 Author

Allan CORNET
-->
