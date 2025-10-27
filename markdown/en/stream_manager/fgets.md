# fgets

Read string from a file, stopping after a newline, or EOF, or n characters have been read.

## 📝 Syntax

- res = fgets(f)
- res = fgets(f, n)

## 📥 Input argument

- f - a file descriptor
- n - a scalar: number of characters

## 📤 Output argument

- res - a string or -1

## 📄 Description

Read string from a file, stopping after a newline, or EOF, or n characters have been read.

If there is no more character to read, fgets will return -1.

If n is omitted, fgets reads until the next newline.

characters encoding uses <b>fopen</b> parameter.

## 💡 Examples

```matlab
  fid = fopen([nelsonroot(), '/etc/startup.m']);
  tline = fgets(fid);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid);
  end

  fclose(fid);
```

```matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

  tline = fgets(fid, 5);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid, 5);
  end

  fclose(fid);
```

## 🔗 See also

[fclose](../stream_manager/fclose.md), [fopen](../stream_manager/fopen.md), [fgetl](../stream_manager/fgetl.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
