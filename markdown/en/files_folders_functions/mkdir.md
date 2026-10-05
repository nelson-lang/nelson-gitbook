# mkdir

Creates a new directory.

## 📝 Syntax

- mkdir(dirname)
- mkdir(parentdir, dirname)
- status = mkdir(dirname)
- status = mkdir(parentdir, dirname)
- [status, msg] = mkdir(dirname)
- [status, msg] = mkdir(parentdir, dirname)
- [status, msg, msgID] = mkdir(dirname)
- [status, msg, msgID] = mkdir(parentdir, dirname)

## 📥 Input argument

- dirname - a string: directory name to create
- parentdir - a string: a directory in which the dirname directory will be created

## 📤 Output argument

- status - a logical true or false
- msg - a string: error message
- msgID - a string: message identifier

## 📄 Description


Creates a directory named dirname in the directory parent. 

If no parent directory is specified the present working directory is used. 

If directory is created or already existing, status is true, otherwise it will be false.

## 💡 Example



```matlab
mkdir(tempdir(), 'subdir_example')
if isdir([tempdir(), 'subdir_example'])
	disp('OK')
else
	disp('NOT OK')
end

```


## 🔗 See also

[isdir](../files_folders_functions/isdir.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.4.0   | input arguments support scalar string array type |
| 2.0.0   | msgID output argument added. |

<!--
## 👤 Author

Allan CORNET
-->
