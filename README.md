# Universal transliterator from Georgian language
Utility provides transliteration of a georgian text into cyrillic and latin letters.

# Usage
You should provide a file (.txt format) with text in georgian language and then choose a mode
```
julia geotranslit.jl --file sourcefile.txt --mode number
```
|    mode    |   Description     |   Example                    |
|------------|:---------------- -|:----------------------------:|
|      1     | eng_default       |                              |
|      2     | eng_ISO_9984      |                              |
|      3     | ru_custom         |                              |
|      4     | eng_ISO_9984      |                              |
