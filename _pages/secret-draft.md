---

permalink: /secret-draft/
title: "How To Get You Started With The Amazing Process Of Test Driven Development"

---

I love job interviews. Honestly. Of course, don’t get me wrong, I hate them too, as probably the majority of the Earth population. But I have many reasons to love them as well. Job Application season, for me, is the time to reflect on your life, your thoughts, your abilities. But even more exciting is the learning process. Learning about companies,  about yourself, about people. But that’s not all there is. There was this one interview some time ago that changed my life because, without it, I probably wouldn’t write this article here right now. 
It was a sunny day and I got by bus to Berlin’s Silicon Valley, also known as “Dreilinden”. After a few talks with some developers, as it is the custom at eBay, I got to speak to the product owner of my potential future team. But this guy wasn’t just a product owner, he was a real developer in his heart. We spoke for quite some time about learning, programming and ideas. He then said the following: 
{: .text-justify}

> ”If you take anything away from this talk here, it shall be that you **must** read Kent Beck’s Test Driven Development book. It will change your life!”

I always laughed about the “change your life” part, but here I am, just having finished [my first side project using TDD](datagoodie.com/blog/introducing-data-collection-tool){:target="_blank"}. And to be honest, I almost never have had that much fun coding.
{: .text-justify}

## Test-Driven Development For Beginners
I had read the book right away. I loved the Java examples and didn’t understand the python examples. After all, I was quite at the beginning of my understanding of how programming works and I never wrote tests before. After a few attempts to do some TDD with Java, I finally gave up. As an aspiring coder, tests can add quite some frustration to your programming experience. It might be hard to try to master the TDD approach and at the same time to try to understand how unit tests actually work. If you never really tested anything before, better start with learning about unit tests in general. And by learning, I mean actually to write some unit tests for an existing little application. Maybe you already have some project up and running that you haven’t tested yet at all. Or there is some little app or module that you always wanted to understand. To write unit tests for that is as great as writing them as a debugging method. If you still don’t know what to test, take a look at [Advent of Code 2017](http://adventofcode.com){:target="_blank"}. Take on a challenge, finish it and test it. 
If you are confident enough to try TDD right away, it will only benefit you! I was amazed by how much I still remembered from the book and from my initial attempts with TDD two years ago. All the effort wasn’t wasted, it was still in my brain somewhere and after a few blog posts about TDD, I was in a good test-driven mode.
Another really cool thing will be to get into object-oriented programming and into clean code before you dive into TDD. Then you will truly understand, why TDD is so powerful. For clean code, I highly recommend [Clean Code ](https://www.amazon.de/gp/product/0132350882/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0132350882&linkCode=as2&tag=datagoodie-21&linkId=7742c71da1d3158a51294e7d1f026a24){:target="_blank"} by Robert C. Martin which is a real timeless treasure (at least, still timeless after 10 years). It will change your life! ;-)
By the way, you can unit test almost anything. Just make sure to start out small and test little functions.
One last thing: this is just my experience. If you are a beginner and really want your project to be TDD right away, do it! I am sure you will make it happen if you really want. 
{: .text-justify}

## Test-Driven Development For Advanced Devs
So you have gained knowledge about OOP, Clean Code, unit testing and you have some proficiency in a programming language? That is to say, you have done a few projects with it, maybe even a [“real life project”](datagoodie.com//blog/lessons-learned-neo4j-big-data-import){:target="_blank"}? Then you can consider yourself an advanced developer in terms of being prepared for TDD. You will have it much easier to dive into this programming technique. Simply because you won’t get frustrated with little details and you will be able to fully focus on mastering the TDD loop.
{: .text-justify}

But first things first. Make sure you think about the goal of your project before you do anything else. Although it is one of the core ideas of TDD, that development and design are driven by the tests, you should still write down what functionality your end product should possess so that you don't get lost on the way. Too many developers, including me, sometimes make the mistake to jump right into coding, without thinking beforehand. My big goals for the tool were:  
{: .text-justify}

- make it as simple as just issuing one terminal command
- you should pass an URL in the command and be able to specify dynamic parts of the URL (e.g. changing text parts, up-counting file index)

Fairly simple, for a simple tool. 

Next step was to define the next steps. Best done using an extendable TODO list. Such a list also keeps you focused during development. Something pops into your mind, you write it down and continue with the task at hand. 
{: .text-justify}

I remember from the TDD book that Kent Beck made fun of himself, how he feels super old-school because he still was using pen and paper for his TODOs. And this he wrote 16 years ago! So, now in the age of digital natives, probably the vast majority would not write a TODO list by hand. It's not synced, it's not properly tracked, it's not nicely editable and your handwriting is probably unreadable. This is why I liked to note down my next TODOs as skipped tests directly inside my test class. For example, I wrote this test early on in the project but finished the production code for it at the very end:
{: .text-justify}

```python
@unittest.skip_test('do it when downloader class is finished')
def test_downloader_should_pass_gracefully_when_url_not_downloadable(self):
    pass
```
Be aware though, to focus on the heart of your application from the start, I fell several times into the trap of one of the extreme programming principles:
{: .text-justify}

> YAGNI (You Ain’t Gonna Need It)

After the first part of my project was finished, I realized that I don't even have a use case to test dynamic text parts in the URL so that I dropped this feature for now ... YAGNI!
{: .text-justify}

## Mastering The TDD Loop
1. Write a test
2. Run the test to see it fail
3. Write the smallest possible change to get the tests to pass (like hard-coding values)
4. Run the tests to see them pass
5. Refactor

How did this flow work out for me? 

### Write a test
I followed this one through almost all the time. I asked myself: What is the next thing that I want to achieve? What result do I want to have? E.g. very first test was:
{: .text-justify}
```python
Example
```

### Fail the test
I skipped this one a lot because I knew that it will fail. But this is still an essential step most of the time because you make sure your test suite works properly. It's also important because of the iterative nature of the next step:
{: .text-justify}

### Make the smallest possible change
Now in your production code, you will go ahead and make a tiny change, e.g. hard-coding the needed value for the test to turn green. I tried to make small changes but I rarely used any hard-coding. Maybe because of some kind of impatience. I totally can imagine, that this will improve the design of my future projects immensely. It forces you to make clear what is the minimum requirement for the test to pass. This is a successful example of making tiny changes first vs writing methods right away to make your test pass: 
{: .text-justify}

```python
Example
```
This is the step I will focus on most on my next TDD project. 

### Pass the test
Well done, coding hero! 

### Refactor
But don't open the Champagne yet. The fun part is just about to begin. Your tests pass, but your code as it is makes no sense: it probably suffers from duplication, bad naming and non-existent abstraction. You probably hardcoded stuff after all! Now is the time to get rid of all the bad parts and make your code beautiful. At one point, somewhere the middle of the project, shortly after I introduced the second of my two classes, I noticed that something is badly wrong. I got out my refactoring double shotgun and annihilated everything that stood in the way of my code being nice, for a total of [2 changed files<img src="/assets/images/icons/external-link-alt-solid.svg" width="16px">](https://github.com/RichStone/data-collection-download-tool/commit/9d8c3d5a6dc3a177d5a4c959a39e2a0ef3e399cd){:target="_blank"} with **86 additions** and **42 deletions**. changes. If you have never made a major refactoring, you can't imagine the wonderful feeling of safety when you make changes, when your code is completely tested. Also after you think that you are done, the tests will turn red and point out to you some issues that you forgot about. Without the tests, you would notice those little things much later. Maybe when your code is public and somebody reports a weird error, aka da Bug. 
{: .text-justify}

In the end, I had two classes, nicely separated, developed completely independent from each other. It was a pleasure to bring them together and to see that everything just works, backed up by the evidence of the test harness. When you finish a programming project it's a great feeling. When you finish a programming project that is fully tested it's this feeling times 10. So join the club!
{: .text-justify}
___
Check my project out for some additional information and my coding metrics here:
[Introducing Data Collection Tool](datagoodie.com/blog/introducing-data-collection-tool){:target="_blank"}

Or on GitHub:
<div style="display: block; text-align: center;">
    <a href="https://github.com/RichStone/data-collection-download-tool" target="_blank">
        <img src="/assets/images/logos/GitHub-Mark.png" width="128">
    </a>
</div>
If you liked this article, you should definitely check out the books I mentioned (Amazon links):
- [Test Driven Development: By Example (Kent Beck)<img src="/assets/images/icons/external-link-alt-solid.svg" width="16px"> ](https://www.amazon.de/gp/product/0321146530/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0321146530&linkCode=as2&tag=datagoodie-21&linkId=512fcb13e5ddf072c1e1e729aec4eccf){:target="_blank"}
- [Clean Code: A Handbook of Agile Software Craftsmanship (Robert C. Martin)<img src="/assets/images/icons/external-link-alt-solid.svg" width="16px">](https://www.amazon.de/gp/product/0132350882/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=0132350882&linkCode=as2&tag=datagoodie-21&linkId=008a33b35d3ec4c81c384fe65175e99a){:target="_blank"}

If you don’t insist on having a fresh paperback copy or a Kindle version, you can just google for the books and they should be freely available as PDF downloads because they seem to be kind of open source (Don’t take my word for granted on this one, though).
{: .text-justify}

Get passionate about TDD and share this treasures of knowledge with others as well!
