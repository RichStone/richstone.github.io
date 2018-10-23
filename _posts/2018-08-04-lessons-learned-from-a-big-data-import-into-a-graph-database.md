---
layout: single
title:  "Lessons Learned from a Big Data Import into a Graph Database"
toc: true
date:   2018-08-04
categories: lessons-learned
tags: 
    - big-data
    - data-engineering
permalink: blog/lessons-learned-neo4j-big-data-import/
header:
  teaser: /assets/images/lessons-learned.jpg
  image: /assets/images/lessons-learned.jpg
---
For a data fanatic like me, my current studying semester was just perfect. I had three tremendously useful and practical courses with the topics Data Science, Machine Learning and Distributed Systems. But these were all just minor steps in my learning process compared to the semester group project, where I fought through unimaginable amount of data, together with three fellow students of mine. 
{: .text-justify}

Our mission in a nutshell: There might be quite some room for academic misconduct for authors who publish papers and academic articles. They could reference themselves or their friends too much or put their name on way more articles then they could have written or contributed to in their lifetime, just for the reason of fame and self-promotion. So we got our lap tops together and went on the adventure of scraping some huge databases full of academic publications into a graph database to research this issue.
{: .text-justify}

I was a part of setting up and maintaining a linux virtual server, building a python-based web application, tweaking the frontend with JavaScript and implement graph algorithms. But the most experience, pain and fun I got from getting the publications from A to be B. The task at hand was to download the fairly big medical database “Pubmed” from their public FTP server. And then to push everything in a graph database. Which doesn’t sound like a big thing for a fairly optimistic computer science student with some extra professional experience. What could possibly go wrong? 
{: .text-justify}

### Value the database size
When I first understood that the complete database dump that I would have to process, was about 220 Gigabyte big, I wasn’t really impressed. I mean, my wife probably generates something about that on a holiday weekend solely using her iPhone. So I just jumped into coding using an ORM to import the needed information publication by publication. At this point I probably somehow disregarded that these are 200 GB of pure text data with tens of millions of publications, authors and other interesting subjects. In a graph database all of these would be later nodes connected by many relationships. Later on I learned in several webinars, that a graph with 10 million nodes is already a solid one. If you don’t look for optimizing your import right away, you may end up like me, rewriting everything from scratch, because your import times literally explode exponentially, not to be finished before the planet sun dies out.
{: .text-justify}

So to get my import up and running in the speed of light with a new technology the next time, I would do quite a few things differently.  First, before coding, I would sit down, take some deep breathes and look for a few more articles about import best practices, success stories and also failures, just to learn from all perspectives.
{: .text-justify}

I would also take more time about learning the graph database’s specifics to draw a nice paper prototype model of the planned database, so that everybody in the team as well as the client are all on the same page about what the final database will be about. This would have saved me from having to reimport the whole database at some point.
{: .text-justify}

### Work in smaller batches right away
As a software engineer, at some point I learned to work in small batches, like proposed e.g. in the book Test Driven Development by Kent Beck. Write a small failing test, write code to fix it, run test successfully, refactor. Especially when diving into new technologies I reuse this approach very often (without testing of course). I just build a workflow to get fast feedback for the thing I am currently coding. But I didn’t seem to have had internalized it as a data engineer if I look back at the project. Especially at the beginning, I often would try things out running the whole script on a small portion of the database, instead of interacting with the database in a more direct way via iPython right away, thus taking even smaller steps. It took quite some time before I came to a very nice workflow.
{: .text-justify}

### Get feedback even before coding
Also if you face a bigger challenge like this (and you were bold enough to identify it as such one), it might be a good idea to ask right away in some expert forums like stackoverflow. For example at the beginning of our project, before we had even started researching, we could have asked something like:
{: .text-justify}

> Hey, we have a 200 GB XML dump from which we want to extract 27 millions publications and 15 millions authors with this and this relationships between them into a graph database. What would be the best way to do that using python?
{: .text-justify}

With a few more details, this would be a valid question that could also help others in the future. As a result, during and after my research I could have had validated right away if my results align with the experts’ opinions.
{: .text-justify}

### Control your data
It is tempting to write a program that imports everything directly from the raw data because it saves you a huge bunch of time to preprocess the data. However, the whole XML dump consisted of 928 files, gathered together during a few decades. How clean or consistent do you imagine such data to be? The biggest problem with that: If you just start importing from raw data, it could happen that the structure of the XML changes at file 123, 345 and 777. Now you have to rewrite your script three times. Not a big deal, you have it all in your VCS. But if for some reason you detect flaws in your script logic or the requirements for the database change drastically, how do you reimport your db? And how are future generations supposed to work with your code? 
The only correct choice here, would have been to focus from the beginning on generating my own clean “dump” in form of JSON or CSV and then feed it to the graph. I would still have to rewrite the preprocessing script a few times, but in the end I would have a piece of data with a structure that is completely predictable.
{: .text-justify}

Thanks a lot for reading! Feel free to disqus below and subscribe:
{% include mail-chimp.html %}
