---
layout: single
title:  "Python Big Data Tricks"
date:   2018-09-15
categories: 
    - tutorials
    - best-practices
tags:
    - python
permalink: /blog/2018-09-15-python-big-data-tricks/
header:
  teaser: /assets/images/posts/efficient-big-data.png
  image: /assets/images/posts/efficient-big-data.png
---

I've done <a href="/blog/2018-09-15-how-to-read-technical-books/" target="blank">a fruitful book camp</a> recently based on the Python Tricks book by Dan Bader. There were 81 tricks that were new to me or which I found highly remarkable. It would not be very practical to list all of them down here. And it would probably not even comply with the publisher's copyright. Luckily, I had my data-driven glasses with me during the five-day book camp. 
{: .text-justify}

Dan was so good to mention from time to time which Python Tricks have an impact on memory, speed and performance when data is processed on a large scale. This is how the Python Big Data Tricks compilation was born. 
{: .text-justify}

___

## Copies
There are several ways to create a copy in python
```python
a = ['foo', foo]

b = a.copy()
c = a[:]
d = list(a)
e = copy.copy(a)
f = copy.deepcopy(a)
```
Creating deep copies is slower and requires more space. 
In this benchmark it is 270 times slower than the slice approach: 
- [How to clone or copy a list?](https://stackoverflow.com/a/2612990/5925094){:target="_blank"}

## Namedtuples
`namedtuples` are great for creating immutable classes in python and they are more space-efficient than regular classes.
```python
from collections import namedtuple
>>> Goodie = namedtuple('Goodie', [
... 'url', 
... 'followers', 
... ])

>>> goodie = Goodie('datagoodie.com', 5765776523764)
>>> goodie.followers
5765776523764
```
A beautiful benchmark on space efficiency: 
- [python: class vs tuple huge memory overhead (?)](https://stackoverflow.com/a/45123561/5925094){:target="_blank"}

## Generators
- generators work like list notations but are streams of data
- they allow for maintainable pipelines of data processing
- use generators for memory efficiency because generators produce values on the go, e.g. 
```python
>>> # use a generator to go from 
... sum(x * 2 for x in range(3))
6
```

## Iterator Chains
- create data pipelines with iterator chains ([dbader.org](https://dbader.org/blog/python-iterator-chains){:target="_blank"})

## Arrays
There is a huge variety of arrays in Python

- go for a generic array structure like a list when you begin your project and then change to a more efficient data structure as the data load get becomes critical
- use NumPy/Pandas for a great choice of fast array implementations for scientific calculations and data analysis

- use `array.array` for more space efficiency (strictly typed)
- `tuples` require less space than lists

- bytes are immutable, bytearrays are mutable. The conversion from bytearrays to bytes is super slow

- you can turn regular primitives in binary blobs with `struct.Struct`. Doing that you can keep more data in memory or send it in a package over a network. 

## Queues
- you can use lists as stacks using `append()` and `pop()` to add and remove the latest element at the end of the list
- `collections.deque` great for push/pop at the end AND at the beginning (both `O(N)`), but performs poorly at random access `O(n)` complexity
- in distributed environments queues can be used to either define elements as synchronously or asynchronously mutable
- for priority queues use `queue.PriorityQueue`. Or use `heapq` in distributed environments

## Measure Performance
- deconstruct your functions and data-structures with Python's [Disassembler](https://docs.python.org/3/library/dis.html){:target="_blank"}

___ 

Please let me know if you have other great tricks and code examples to make Big Data development with Python more efficient.

{% include mail-chimp.html %}