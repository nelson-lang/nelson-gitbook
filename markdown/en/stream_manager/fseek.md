# fseek

Set the file pointer to a location.

## 📝 Syntax

- fseek(fid, offset, origin)
- status = fseek(fid, offset, origin)

## 📥 Input argument

- fid - an integer value: file descriptor
- offset - an integer value: number of bytes to move from origin.
- origin - an integer value or a string: location in the file.

## 📤 Output argument

- status - an integer value: 0 or -1 if there is an error.

## 📄 Description


<b>fseek</b> moves the file pointer to the location<b>offset</b> within the file <b>fid</b>. 

origin can take as value: 

'bof' or -1 : beginning of file. 

'cof' or 0 : current position in file. 

'eof' or 1 : end of file. 

<b>offset</b> may be one of the predefined variables<b>SEEK\_CUR</b> (current position, or 0),<b>SEEK\_SET</b> (beginning, or -1), or<b>SEEK\_END</b> (end of file, or 1).

## 💡 Example



```matlab

fileID = fopen([tempdir(), 'fseek.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
fseek(fileID, SEEK_CUR, 'bof');
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'fseek.txt'])
```


## 🔗 See also

[frewind](../stream_manager/frewind.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
