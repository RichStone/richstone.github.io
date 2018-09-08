---
layout: single
title:  "A Legal Data Collection Tool For Your Next Big Data Dump"
date:   2018-08-30
categories: tools
tags: code-metrics
permalink: /blog/introducing-data-collection-tool/
header:
  teaser: /assets/images/posts/data-collection-banner.jpg
  image: /assets/images/posts/data-collection-banner.jpg
gallery:
  - url: /assets/images/posts/data-collection-introduction/raw-metrics-downloader.png
    image_path: /assets/images/posts/data-collection-introduction/raw-metrics-downloader.png
    alt: "Raw Metrics Downloader"
    title: "Raw Metrics Downloader"
  - url: /assets/images/posts/data-collection-introduction/raw-metrics-parser.png
    image_path: /assets/images/posts/data-collection-introduction/raw-metrics-parser.png
    alt: "Raw Metrics Parser"
    title: "Raw Metrics Parser"
  - url: /assets/images/posts/data-collection-introduction/complexity.png
    image_path: /assets/images/posts/data-collection-introduction/complexity.png
    alt: "Cyclomatic Complexity"
    title: "Cyclomatic Complexity"
  - url: /assets/images/posts/data-collection-introduction/maintainability.png
    image_path: /assets/images/posts/data-collection-introduction/maintainability.png
    alt: "Maintainability Index"
    title: "Maintainability Index"
---

Whether you are a data professional preparing for your next project or just somebody who wants to have fun with the treasures of the internet, it all starts with data. 
If you already found your data source you might find my new generic and fairly flexible download script useful. I wrote it with Python using a test-driven development approach. 
(If you are interested in TDD, check out my blog about the amazing TDD process I went through when I programmed [the tool](/blog/data-collection-tool-tdd-process) )
{: .text-justify}

The usage is as easy as to say ...

>"Download it baby"

```bash
python3 download.py https://xkcd.com/++1**2000++
```
This will download every xkcd HTML page from 1 to 2000 to your local machine.
I took xkcd just as a simple example to make clear, how the tool works. If you want all xkcd images scraped from the website, 
you would rather use a library like BeautifulSoup to get them on the fly, without downloading the HTML first. 
However, there are use cases when you want to have all the HTML locally, e.g. to have a snapshot of the data on a website or when you run a lot of complex scrapings on the page.
{: .text-justify}

For more detailed examples and tool download, head over to my GitHub repo. You can also just give it a star so that you have it ready for later use:
<div style="display: block; text-align: center;">
    <a href="https://github.com/RichStone/data-collection-download-tool" target="_blank">
        <img src="/assets/images/logos/GitHub-Mark.png" width="128">
    </a>
</div>
The tool, for now, covers just a few use cases, but I would love to hear about your use case and adjust the tool to make it work. Of course, you can work on it too and submit a pull request.
{: .text-justify}

## Why a data collection tool?
The idea for this tool was born during my first Big Data import. I initially had to download the whole dump to my machine. 
So I wrote a script for that. Then I remembered that I already did something like this before in another program, using Java back in the days. 
I also realized that I came across the fact that a lot of people need from time to time to download some HTML for professional purpose or just to play around with stuff.
Sure there are crawler tools and similar, that will do this job as well, but I am not sure if you get them for free limitlessly.
{: .text-justify}

## Is massive content download legal?
Some don’t care, others think of it in the very first moment. As you may know, the legal system is, similar to psychology, 
sociology and other humanities, a very wooly and hairy subject matter. I'm am not a lawyer and I won’t give you any legal advice here. 
But from my experience and reading, it starts to get important as soon as you use some extracted data publicly. 
The site’s owners often have different restrictions on different use cases, often for educational and commercial usage. 
If that is your case, you will need to read the owner’s terms and conditions or get in contact with them.
{: .text-justify}

## Metrics: 
<img src="/assets/images/posts/data-collection-introduction/time-spent.jpg" />

- a bunch of best practices (Python, OOP) learned and internalized
- 23 Github commits
- lines of code
- 1 major refactoring with with **86 additions** and **42 deletions**
- 2 classes, 23 methods, 20 tests

### Complexity, Lines of Code / Raw Metrics, Maintainability Index
{% include gallery caption="powered by radon python metrics tool" %}


Do you know somebody who could use this tool? Then just share this article with that person, it will save them some time :)
{% include mail-chimp.html %}
