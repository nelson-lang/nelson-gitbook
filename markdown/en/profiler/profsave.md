# profsave

Save profile result to HTML format.

## 📝 Syntax

- profsave
- profsave(profile\_info)
- profsave(profile\_info, dirname)

## 📥 Input argument

- profile\_info - a struct: result of profile('info')
- dirname - a string: output directory destination.

## 📄 Description


<b>profsave</b> exports the profiling data into a series of HTML files. 

The input profile\_info is the structure returned by profile('info'). 

If unspecified, <b>profsave</b> will use the current profile.

## 💡 Example



```matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

```


## 🔗 See also

[profile](../profiler/profile.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
