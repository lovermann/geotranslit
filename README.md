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
|      1     | eng_default       | q'vela adamiani ibadeba t'avisup'ali da t'anastsori t'avisi r'irsebit'a da up'lebebit'. mat' minich'ebuli ak'vt' goneba da sindisi da ert'manet'is mimart' unda ik'ts'eodnen dzmobis suliskvet'ebit'.     |
|      2     | eng_ISO_9984      | qvela adamiani ibadeba t̕ avisup'ali da t̕ anascori t̕ avisi ġirsebit̕ a da up'lebebit̕ . mat̕  miničebuli ak'vt̕  goneba da sindisi da ert̕ manet̕ is mimart̕  unda ik'c'eodnen żmobis suliskvet̕ ebit̕ .  |
|      3     | ru_custom         | к''вэла адамиани ибадэба т'ависуп'али да т'анасцори т'ависи г'ирсэбит'а да уп'лэбэбит'. мат' миничэбули ак'вт' гонэба да синдиси да эрт'манэт'ис мимарт' унда ик'ц'эоднэн дзмобис сулисквэт'эбит'.   |
|      4     | eng_national      | q'vela adamiani ibadeba tavisup'ali da tanasts'ori tavisi ghirsebita da up'lebebit. mat minich'ebuli akvt goneba da sindisi da ertmanetis mimart unda iktseodnen dzmobis sulisk'vetebit.
 |
