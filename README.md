# Universal transliterator from Georgian language
Utility provides transliteration of a georgian text into cyrillic and latin letters.

# Usage
You should provide a file (.txt format) with text in georgian language and then choose a mode
```julia
julia geotranslit.jl --file sourcefile.txt --mode number
```

# Modes
Here you can find examples of transliteration using different modes
Original text:
```
ყველა ადამიანი იბადება თავისუფალი და თანასწორი თავისი ღირსებითა და უფლებებით.
მათ მინიჭებული აქვთ გონება და სინდისი და ერთმანეთის მიმართ უნდა იქცეოდნენ 
ძმობის სულისკვეთებით.
```
|    mode    |   Description     |   Example                    |
|:----------:|------------------:|:-----------------------------|
|      1     | eng_default       | q'vela adamiani ibadeba t'avisup'ali da t'anastsori t'avisi r'irsebit'a da up'lebebit'. mat' minich'ebuli ak'vt' goneba da sindisi da ert'manet'is mimart' unda ik'ts'eodnen dzmobis suliskvet'ebit'.                              |
|      2     | eng_ISO_9984      |                              |
|      3     | ru_custom         |                              |
|      4     | eng_national      |                              |
