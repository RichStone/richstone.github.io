---
layout: single
title:  "The moderate rise and tragic fall of a Graph Database Importer"
date:   2018-08-12
categories: import
permalink: blog/the-moderate-rise-and-tragic-fall-of-a-graph-database-importer/
header:
  teaser: /assets/images/posts/rise-and-fall/norman-filmplakat-cut.jpg
  image: /assets/images/posts/rise-and-fall/norman-filmplakat-cut.jpg
---

This title of mine could sound familiar to you. [Norman: The Moderate Rise and Tragic Fall of a New York Fixer](https://www.imdb.com/title/tt4191702/) , it’s not a very mainstream or blockbuster-like movie. I still liked it very much, probably because of the act and because the story was told in an interesting way: It's about Norman, an older guy, who is trying his whole life as hard as he can to get very successful and popular in the rushing Wallstreet business. And he even reaches his goal at some point with a little bit of luck. But because he is not very wise, at the end, he loses it all (or maybe not, won't spoiler this one here for you ;-)
{: .text-justify}

I experienced a similar scenario with my first Big Data import, but I hope that I got much wiser throughout the process, as described in my very first blog post - [Lessons Learned from a Big Data Import into a Graph Database](http://datagoodie.com/blog/lessons-learned-neo4j-big-data-import). This post here will take a more narrative way to describe everything I went through and especially to depict the many hardware limitations that I experienced. After reading this post, you will probably also pay more attention to tiny details with your next import. Unless you are a seasoned professional, then you will just have something to laugh about. Sure thing for me is, I saw many many ups and downs. Whenever I thought I got it, something new came up and I had to rethink, revert, rewrite, reimport, recap ...
{: .text-justify}

## The Beginning 
Our project started all easy going. I wrote the python code to collect the 928 XML files from the medical publications portal "pubmed". Each file was from 10 to 40 MB. As they had be downloading to my local machine, I wanted to start playing with it. I unpacked the .zip archive, and surprise-surprise, a few MB of a zipped XML resulted in a few hundreds of Megabytes of unzipped XML data. It's very kind of my Macbook to have a ~~nice big~~ SSD flash drive, but we all know it's not getting to be more than a 100 Gigabyte free space on it. So first side quest: 
{: .text-justify}
> "Get yourself a hard drive, bro.."

![test](/assets/images/posts/rise-and-fall/film1720-norman-1.gif)

Ok, driving on. By the time the pubmed dump got downloaded and unzipped on my new shiny hard drive, I had my first import script ready. I was very excited to finally get this thing going. The first file was imported in a matter of a few minutes. 
{: .text-justify}

Great! 🎉

Just let it run overnight and let the computer do the work for you while you are sleeping. Isn’t that what all importers dream about? After a few hours of sleep, all excited about my new fresh database, I saw that ten files were done. This got me thinking of course, but I hoped that Mr. Maccie MacBook or rather the database was just exhausted from its prior work and hung up at some point. So I wrote some time tracking code and started it over again. When I was back home in the evening, I understood that my import times exploded exponentially after a few imported files. My fancy import code using an ORM would take years to finish!
{: .text-justify}

![test](/assets/images/posts/rise-and-fall/041417gere005.jpg)

## The Ongoing 
So I dove deeply into research. Reading articles. Exploring tutorials. Writing questions and posts. And of course trying things out. During this time we had an interesting threesome: I was a slave of my laptop always having him with me and waiting for an import error at XML file number 563 or whichever. Lappy, on the other hand, was a slave of the hard drive, where all the dump files where. Together we built an unseparable blockchain at day and at night. I dreamed of sheeps and imports. 
{: .text-justify}

To keep my mac importing all the time I shuffled nasty apps into it like Coffeine, Amphetamine and Insomnia. Poor boy…
{: .text-justify}

<figure class="align-center">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/images/rise-and-fall/posts/slaves.jpg" alt="">
  <figcaption>You never pause as a big data importer O.O </figcaption>
</figure>

After some blood, sweat, tears and rewrites I finally had it! The import ran through in a few days, all 928 were imported. No pain and no slaves anymore. I was also half through the project timeline at this point and was happy to now be able to fully focus on the rest of it. But a vague feeling creeped up on me. Some unfulfilled requirements or something like that. And yes, actually at some point I realized that the project had a merge or two too much and that data gets lost in the process. Fixing that wouldn’t be a great deal but with the changes followed some errors on the data preprocessing site, because the 928 XML files have a changing structure over time. The project deadline was approaching with huge steps now. 
{: .text-justify}

## The Final
Once again, I was sure that I finally got it. The import itself feeled quite good now. I had full control over the preprocessed data, a much better understanding of the graph query language I was using for the import and I saw the expected data being imported. I left it run at home alone with the hard drive. When I came back, with depleted ego after all this hassle in the last few months, I was wondering which little nasty error might  have appeared this time. Was it KeyError? NoneType Error, WrongType Error, GoHome Error, ImportError... or my favorite one by Neo4j: "An unknown error has occurred”© ? But what I found has bombed all of my expectations completely. Nothing worked anymore at all. I mean, I could see my desktop, but that was practically it. Everything was super slow, no application was opening. Besides the good old terminal. After a few moments it revealed the reason for this funny behavior. Somehow, my newest implementation imported really really delligently, way more data than I ever expected. This filled my hard drive up until the last bit. How thrilling. 
After thinking very hard where else I could store the database, I found a solution that was NEARER THEN I EXPECTED. I got rid of my Windows partition for 50 GB extra space and decided to try it one more time, rigorously controlling the database size. Worked for a final DB of 80 GB size, which then magically went down to 40 GB as it was running for a few hours. 
{: .text-justify}

<figure class="align-center">
  <img src="{{ site.url }}{{ site.baseurl }}/assets/images/posts/rise-and-fall/norman-2016-film.jpg" alt="">
  <figcaption>The magic shoe moment. </figcaption>
</figure>

## The Reward
In the end of the story everything went quite OK. I experienced all kind of hardware limitations and got a feeling of what Big Data is. I learned the power of controlling and cleaning the data and the necessity of serious research before diving into big projects. Not to speak of the improvement of my technical skills and the achievement of getting a huge powerful database together. So huge and powerful, that nobody could have thought about one tiny detail: Seemingly, you need a much stronger computational machine than my MacOS Pro. Unless you want just run aggregation functions on it like count() and mean().
{: .text-justify}

![Fall.](/assets/images/posts/rise-and-fall/tragic-fall.jpg)

{% include mail-chimp.html %}