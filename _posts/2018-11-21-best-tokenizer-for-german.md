---
title: "Best Way to Tokenize German texts"
toc: true
layout: single
permalink: /blog/best-german-tokenizer/
date: 2018-11-21
categories: 
    - tips
tags:
    - nlp
    - text-analysis
header:
  teaser: /assets/images/posts/christmas-bw.jpg
  image: /assets/images/posts/christmas-bw.jpg
  caption: "Photo credit: [**Designed by Freepik**](http://www.freepik.com)"
---
The landscape of NLP tools is vast. However, most of those tools still don’t work as perfectly for other languages as they do for English. Even the simplest NLP tasks as tokenization become a challenge for mainstream tools as Spacy, especially when the texts get more conversational and domain specific. 

With some search, though, you might find tools that perform much better for isolated tasks. The self-proclaimed German text state-of-the-art tokenizer SoMaJo is backed by [academic research](http://aclweb.org/anthology/W16-2607){:target="blank"} and worked very well for my highly domain specific and conversational dataset. 

## Installation and Usage
```bash
pip install SoMaJo
```

The only default you have to be aware of is that paragraphs should be separated by a new line.
If you have your separated text in a file like a `corpus.txt`, you can just get your tokens into a new file like this:

```bash
somajo-tokenizer corpus.txt > tokens.txt
```

For further functionality, like splitting XMLs or running the process on multiple processes, you can refer to the [tool's documentation](https://github.com/tsproisl/SoMaJo){:target="blank"}.

## Performance Example
```python
nlp = spacy.load('de_core_news_sm')
doc = nlp(u"""
Ca. 90min mit newmotion geladen, weil ich mit Maingau/EinfachStromLaden keine Verbindung über die App bekam. 
Säule hat keinen RFID-Leser usw.
2. Buchse seit 2 Tagen mit Kommunalfahrzeug/EWV blockiert. 
""")
for token in doc:
    print(token.text)
```

... yields these tokens:

```
Ca  
.  
90min
mit  
newmotion  
geladen  
,  
weil  
ich  
mit  
Maingau/EinfachStromLaden  
keine  
Verbindung  
über  
die  
App  
bekam  
.  
Säule  
hat  
keinen  
RFID-Leser    
usw.    
2  
.  
Buchse  
seit  
2  
Tagen  
mit
Kommunalfahrzeug/EWV  
blockiert  
.  
```

Doesn't recognize `Ca.` as one token:  
**Ca**  
**.**  

Doesn't recognize `90min` as two tokens:  
**90min**

Doesn't split  
**Maingau/EinfachStromLaden**

Doesn't recognize end of sentence  
**usw.**  

Doesn't recognize that this isn't an end of sentence and this should be 2. (like second)  
**2**  
**.**  

Besides the fact that sentences are split pretty wrong and the slashed words are not split, it gets even tougher when Spacy tries to PoS tag and `90min` is tagged as VERB...

SoMaJo handles a lot of those German and not German special cases and splits the sentences above perfectly.

## Extension 
The tool is easily extendable for special cases of your dataset. For example, you can add special cases like `E.ON` to be handled as one word to the library's `single_token_abbreviations_de.txt` file.

## Next Steps 
Unfortunately it doesn’t seem to be possible to load tokenized text into Spacy. You would rather have to train your own Spacy tokenizer to get better results with it. 

But from here you could feed your tokens to something like NLTK‘s corpus reader and do basic statistics on the texts as well as preprocessing your corpus further. Or you could tag them with Part-of-Speech tags first. The latter I will describe for German texts in one of my next posts, again using a research-proven tool from the SoMaJo creator: *SoMeWeTa*. 