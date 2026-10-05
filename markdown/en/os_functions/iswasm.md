# iswasm

Checks if version is for WebAssembly platform.

## 📝 Syntax

- s = iswasm()

## 📤 Output argument

- s - a logical: true if it is a WebAssembly platform.

## 📄 Description


<b>iswasm</b> checks if it is a WebAssembly platform. 

It returns <b>true</b> when Nelson runs from a WebAssembly build (in a browser or a WebAssembly runtime), and <b>false</b> otherwise.

## 💡 Example



```matlab
if iswasm
  disp('Your platform is WebAssembly')
else
  disp('Your platform is not WebAssembly')
end
```


## 🔗 See also

[ispc](../os_functions/ispc.md), [isunix](../os_functions/isunix.md), [ismac](../os_functions/ismac.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
