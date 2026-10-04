# ctfroot

Root of the extracted application archive.

## 📝 Syntax

- directory = ctfroot()

## 📤 Output argument

- directory - Absolute path as a character vector.

## 📄 Description

<b>ctfroot</b> returns the private temporary directory into which the launcher extracted the application archive. It remains available in graphical callbacks and does not depend on a mutable environment variable.

The function raises an error outside deployment. Use <b>isdeployed</b> to choose between development and application paths. The compiler module is not required at runtime.

The current format stores application files under <b>roots/N</b>, according to the manifest search roots. No executable-name folder is added. For a resource beside a function, prefer <b>fullfile(fileparts(mfilename('fullpath')), 'data.txt')</b>. Explicitly include computed resources with <b>-a</b>.

This directory is removed after normal application shutdown. Do not use it for persistent output.

## Used function(s)

isdeployed

## 💡 Example

```matlab
if isdeployed()
  directory = ctfroot()
end
```

<!--
## 👤 Author

Allan CORNET
-->
