# isMATLABReleaseOlderThan

Compare current release to a MATLAB release.

## 📝 Syntax

- tf = isMATLABReleaseOlderThan(release)
- tf = isMATLABReleaseOlderThan(release, 'update', n)

## 📥 Input argument

- release - a release name of the form <b>'RYYYYa'</b> or <b>'RYYYYb'</b>, such as <b>'R2023b'</b>.
- n - a nonnegative integer: update number.

## 📤 Output argument

- tf - a logical: <b>true</b> when the current release is older than the requested one.

## 📄 Description


<b>tf = isMATLABReleaseOlderThan(release)</b> compares the current release to <b>release</b>. 

Nelson emulates a recent release, so checks against older releases resolve to <b>false</b> and compatibility code takes its current path.

## 💡 Example



```matlab
tf = isMATLABReleaseOlderThan('R2020b')
```


## 🔗 See also

[verLessThan](../core/verLessThan.md), [ver](../core/ver.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
