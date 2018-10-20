---
title: "Code Sprint"
layout: single
permalink: /blog/code-sprint/
date: 2018-10-20
header:
  teaser: /assets/images/posts/code-sprint/animal-sprint.jpg
  image: /assets/images/posts/code-sprint/animal-sprint.jpg
---

Programmers, coders, hackers, developers, call us how you like but we are all creative people. Because like writers, musicians, filmmakers, and other artists we create new stuff, with our hands.
{: .text-justify}

Probably every individual of this techie species had a dream, an idea or at least a wish about a software piece to produce. 
{: .text-justify}

I know many developers who always want or wanted to craft a script that will automate their current work, build an app (be it useful or fun) or finally find some time to publish a blog.
{: .text-justify}

Often we are trapped in thinking that we need to wait for some time window that will magically free up time for us.
{: .text-justify}

<figure class="align-center text-center">
  <img src="/assets/images/posts/code-sprint/galas-magic-time-window-censored.jpg" alt="magic time window">
  <figcaption>The Magic Time Window</figcaption>
</figure>

Whether this time window exists somewhere in the future or not does not really matter. If you are really super busy, you have basically 3 major options at this point.
{: .text-justify}

1. *Do nothing and wait a bit more.* 
The project will then be forgotten or forever remembered in vain or done by someone else at some point.
{: .text-justify}

2. *Start building your project with tiny little steps today.*
I am a big proponent of small changes. Like of [30-day challenges](https://thoughtbrick.com/lifestyle/hundred-30-day-challenge-ideas/){:target="_blank"} and of doing taking mini steps that improve your life and skill considerably, like writing at least [one sentence or one line of code per day](https://dariusforoux.com/daily-writing-habit/){:target="_blank"}. These habit building techniques are invaluable.
{: .text-justify}

3. *Give your project a huge kickstart creating it in one day*
You can also find a short-term time window where you create the first version of it. The Minimal Viable Product of your project in just one day - in just one session: The Code Sprint
{: .text-justify}

In this post, I want first to show you, how I came to do a Code Sprint. After that, you will find a Code Sprint template for your next awesome project. In the end, I will show an example of how I called a new pretty useful project into life: [la maREPOsa](https://github.com/RichStone/mareposa){:target="_blank"}.
{: .text-justify}

If you don’t care about long stories and want to get into it immediately, just scroll to the bottom where you will find a checklist to get you started.
{: .text-justify}

## Yet another framework was born that day
When I start any new project that involves coding, I literally always follow this sort of algorithm because I am a heavy git and GitHub user:
{: .text-justify}

(if you don’t understand the code, no worries. It’s just to make the point that there are a lot of steps involved)

```bash
# 1. - go to GitHub.com
# 2. - create remote repository

# 3. - go to local file explorer
# 4. #
mkdir new-project
# 5. #
cd new-project
# 6. #
git init

# 7. #
touch README.md
# 8. - look for a README template
# 9. - copy/paste the template into my local README.md

# 10. #
touch .gitignore
# 11. - go to https://gitignore.io
# 12. - generate a `.gitignore` file
# 13. - copy/paste generated `.gitignore` to my local `.gitignore`

# 14. #
git add .
# 15. #
git commit -m"start project"
# 16. #
git remote add origin https://github.com/RichStone/new-project.git
# 17. #
git push -u origin master
```

Wow, writing it down already took quite a few minutes.

I searched a lot, for automated git init and automated GitHub project initiators. I found a few sources with fairly short scripts but no full-fledged repository builder.
{: .text-justify}

Aren’t we developers supposed to be lazy in a good sense, so that we automate things? And still millions of us follow the algorithm above.
{: .text-justify}

I decided that it’s time for me to get lazy then. Someday I would get this project going, I said. But being lazy as a developer is the same as being lazy on passive income. It doesn’t work in a way that you are constantly lazy and suddenly you lie on the beach and drink your Piña Colada. 
{: .text-justify}

Instead at some point you push really hard, create something and then you can lean back to watch your bits and bytes shifting automatically. 
{: .text-justify}

The Code Sprint is probably perfect for you to do if you have at least one full day of time completely free of distractions and you want to realize a software project (probably it works for a lot of other types of projects too). Maybe a project you have thought about for quite some time now.
{: .text-justify}

This was actually my situation. Unexpectedly I got a Saturday freed up and it struck me in the evening before this magic day that I could do this one little project tomorrow.
{: .text-justify}

I didn’t hesitate because I knew that if I won’t get it done, I would at least lay a really good foundation to continue on later. I also will have fun and I will learn something. Seemed like a no-brainer.
{: .text-justify}

I researched for a few hours that same night about how I could realize the project. I also started thinking about how I could conduct this little hackathon of mine in a more engaging and fun way than just unstructured coding.
{: .text-justify}

This is what I came up with:

A [hackathon](https://www.quora.com/What-is-a-hackathon-What-do-you-do-in-it-Is-it-a-team-event-If-yes-what-are-team-sizes?ch=10&share=0b396b00&srid=hTDHj){:target="_blank"} turned out to be always a team event.

That’s is why, obviously enough, I needed to develop my own framework…

# Code Sprint Framework
The Code Sprint recklessly steals the most valuable parts of other successful frameworks like Hackathon, Design Sprint, lean start-up, OKRs and many more 😇
{: .text-justify}

The end product, a sorted salad of best practices, looked for me like the list below and I used it almost exactly like this. I already created it in mind that I could reuse it in the future, maybe to do a Code Sprint with friends or colleagues.
{: .text-justify}

You may use it as a checklist for your personal Code Sprint and redefine it as you see fit. I will be very happy to hear about your experiences with that.
{: .text-justify}

## Prerequisites
- A project that you want to do really badly
- One full day free of distractions
- Ideally, at least a few hours the day before and the day after (it doesn’t have to be the exact days before and after but it will be most effective that way)
- Pencil and paper
- Timer or time tracking app with an alarm function (I use [ATracker](http://www.wonderapps.se/atracker/){:target="_blank"} at the moment)

## Preparation Day: Research and Plan

It might seem like a lot on the first glance, but depending on how much of an understanding you have about how to realize your project, you might be done with the preparation within a few hours. 
You could tackle it in that particular order for best results:
{: .text-justify}

### do research about your favorite topic
[ <input type="checkbox" name="vehicle1"> ]<br>
*You may have even done quite some research in the past months or years already. But this final research includes to come to a rough understanding of how you will create your project tomorrow.*
- decide on the tools/libraries you will use
- gather links and resources like blogs, docs, and tutorials that could be useful tomorrow in a separate favorites folder

### set your sprint goals
[ <input type="checkbox" name="vehicle1"> ]<br>
*How should your MVP look like in the end? What will be the end to end experience for the user? What can you realistically achieve? How can you measure it? Could you set some beautiful one-day [OKRs](https://7geese.com/okr-7-tips-on-setting-your-objectives-and-key-results/){:target="_blank"}? Write this down concretely.*

### create a project outline
[ <input type="checkbox" name="vehicle1"> ]<br>
*Bring your project to paper. Draw a diagram, sketch classes, write down methods of your MVP. Emphasize on those which seem most important. This will be your guide tomorrow. Having the outline on paper, you can place it in a very visible spot. This way you will be always reminded of your main path even if you get off track at some point because you suddenly decide that  you need to fix your python2.7 installation right now for some reason.*

### define how you will reward yourself
[ <input type="checkbox" name="vehicle1"> ]<br>
*What will you do after you have achieved your goals? It’s best you have something that you can do, listen, buy, go to, eat, watch the same evening of your success. Should you not get all of your goals on time, you can postpone your reward to the day when you finish everything.*

### organize the team
[ <input type="checkbox" name="vehicle1"> ]<br>
*It was fun for me alone, I imagine that it can be even more fun with someone else to work on the same idea for a day. It depends on your mood and how focused the team can work together.*

### abolish possible distractions
[ <input type="checkbox" name="vehicle1"> ]<br>
*Turn off your phone or the notifications on your phone. Buy your spouse and kids tickets to visit Grandma and Grandpa. Or book a quiet place in a co-working space. Go to a library. Or to a hostel? There must be some quite place around you.*

### get good food
[ <input type="checkbox" name="vehicle1"> ]<br>
*Get healthy, fresh and light food. Prepare everything in a way that you won’t have the decision of were, when and what to eat*

### plan the dev day
[ <input type="checkbox" name="vehicle1"> ]<br>
*Plan which step you will finish at what exact time to reach your defined goals. You will have a harder time doing it if you normally don’t track your time, but then this will give you a good kickstart to start doing it.*
- don’t fill the whole day with your plan. Let yourself a buffer for the evening, you may get stuck a few times more than you expect. Also, humans tend to overestimate what they can achieve in the short-term (you might have heard that already from some motivational guru)
- choose a working technique that you will follow. The [“Pomodoro” Technique](https://en.wikipedia.org/wiki/Pomodoro_Technique){:target="_blank"} is very popular nowadays. But you can do your own Pomodoro, with any time slots that are comfortable to you. Just decide for one, it will have a huge impact. If you are in kind of a flow, don’t let any timer distract you. 
- track your hours and minutes! Reflect on them later.

## Development day: Crush it!
### revise your plan and project outline
[ <input type="checkbox" name="vehicle1"> ]<br>
*Yesterday you made kind of a preparation sprint to conduct a Code Sprint. After some hours of sleep, you might have creative ideas on how to make it better or what you should focus on most. Go through your plan and through your project outline, make changes if you like*

### have a coffee or whatever drug you like most in the morning
[ <input type="checkbox" name="vehicle1"> ]<br>
*Start as planned yesterday. If you woke up much earlier than planned because of your burning motivation, start earlier, you will need and enjoy the extra time. Don’t worry if you didn’t have “enough” sleep, your determination will carry you through and you still can get a nap in one of your breaks that day if necessary.*

### do it and stick to the plan 🚀🚀🚀
[ <input type="checkbox" name="vehicle1"> ]<br>
*You will wonder how good you planned it out. You may get something done earlier and you will have unforeseen challenges but in general, it will add up to some reasonable approximation of your plan. If you get stuck somewhere completely try to think how you could get the development moving forward and still produce your MVP.*
- take notes for documentation along the way
- note possible future features
- write down questions for future users

### test it
[ <input type="checkbox" name="vehicle1"> ]<br>
*You probably have tested it along the way a little bit. But take the time to go through all the steps a few times. You will still have bugs and mistakes here and there but try to eliminate as much as possible*


### reward yourself
#  🎨 🎮 🧘🏽‍♂️ 🍒 🐝

## Aftermath: Test & Feedback

Your project is probably still quite a mess. It's time to take some steps and organize everything.

### test it again
[ <input type="checkbox" name="vehicle1"> ]<br>
*You surely have more bugs in your software. Go through them one more time. Now is also some nice and quiet time to write unit tests if you haven't done yet.*

### document
[ <input type="checkbox" name="vehicle1"> ]<br>
*If you wrote documentation along the way, you will have a much easier time to finish your docs today. I really like to use [this template from GitHub](https://github.com/RichStone/readme-template){:target="blank"} for my docs.*

### get feedback
[ <input type="checkbox" name="vehicle1"> ]<br>
*If everything is settled get the message out to the public, address your target users or give it at least to some friends or family for a little biased feedback.*

### look into the future
[ <input type="checkbox" name="vehicle1"> ]<br>
*Decide now how you will procede with the project.*

# True Story Example
## Nice Results

And this is the result of this funny Code Sprint.
The new algorithm to create a repository:

```
# 1. - Write a terminal command. 
# 2. - Press enter.
# 3. - Enjoy. 
```

Quite some improvement since the last time. We got rid of basically all extra steps except for a single important one: `Write a terminal command`

Check the repository if you’d like to get started:
[maREPOsa repository on GitHub](https://github.com/RichStone/mareposa){:target="_blank"}

Now, I have spent approx. 15 hours for this little project distributed over 3 days. Was it worth it you may ask? 

As I have quite some experience in repository creation by now, it roughly takes me plus minus 5 minutes to get everything settled as described in the old algorithm. So I would need to set up 180 projects to get break even. Not too unrealistic in a developer’s lifetime.

But of course the challenge was worth it and I learned about quirky stuff that you normally only see appearing for whatever reason on your terminal when you install something, like setuptools, sdist and weird files like .pypirc. 

And I also have my first package on PyPI! It’s incredible to know that I have a cool tool in some repository somewhere, that I can get to work anywhere in the world by doing `pip install mareposa`. And it just works.

But back to the math: if I need 5 minutes for the repo setup, probably other developers do too. Imagine now if 100 developers do 10 projects with it, then I saved quite some struggle and time for humanity which is great. Sounds like a good deal? Then share it! 😜🚀
([maREPOsa repository on GitHub](https://github.com/RichStone/mareposa){:target="_blank"})

## The process in more detail for the several phases

### Phase “define how you will reward yourself“

You can even start the whole with setting the reward if it motivates you very hard.

I had set the following rewards in case that I get everything done what I have planned:

- Finish a Fallout 4 quest that I started like several months ago...
# 🔫
- Have a duck for dinner...
# 🦆
- Watch a movie from the watchlist...
# 🔮
These are pretty boring things to do by the way. Please choose something more exciting. 
But for me at that point, it was something really motivating. It always depends. 
I waited for the next day to redeem the rewards because the project got quite late that evening.

### Phase “do research about your favorite topic”
and 
### Phase “set your sprint goals”

I did both in two hours during spontaneous impulsive reading the evening before. You have to know though, that I had a good idea already, what I will be doing.

### Phase “create a project outline”

After my research and goal setting I came up with this outline that guided me through the dev day:

<figure class="align-center">
    <a href="/assets/images/posts/code-sprint/initial-mareposa-draft-s.jpg"><img src="/assets/images/posts/code-sprint/initial-mareposa-draft-s.jpg"></a>
    <figcaption>Draft after research and goal setting phase.</figcaption>
</figure>

I did not follow it in detail because technically it was better to change things at some point, but overall I always had some reference to get back to, when I felt lost or unfocused.

### Phase “plan the dev day”

I derived the “exact” time plan from my outline which then looked like this:
+ 8:30 - place mini MVP into PyPI
+ 11:00 - finish MVP
+ 13:00 - start ignorer feature
+ 15:00 - start README feature
+ 17:00 - test
+ 19:00 - communicate it

I referred to this time plan as well during the dev day, even when I was behind schedule, just to see if I am able to catch up. At the point that my schedule was really messed up in the late evening, I gave it up. But this plan served its purpose very well until then.

### Step “do it and stick to the plan 🚀🚀🚀”

Nothing easier than that, the dev day went totally according to plan:

<figure class="half text-center">
    <a href="/assets/images/posts/code-sprint/detail-view-dev-day-process.png"><img src="/assets/images/posts/code-sprint/detail-view-dev-day-process.png"></a>
    <a href="/assets/images/posts/code-sprint/time-process-mareposa-dev-day.png"><img src="/assets/images/posts/code-sprint/time-process-mareposa-dev-day.png"></a>
    <figcaption>The development day - pomodoro by pomodoro.</figcaption>
</figure>

I had not quite make it on time as you can see in the overview. Still, I had a lot of fun and quite a result at the end.

Don't forget that it's just a framework that has to be tested a lot more.
Feel free to change, criticize or tear it apart. But let me know, I'd love to hear the story! 

---
---

What do you think about conducting a project kickstart in this manner? 
Speak up if I can assist you with your code sprint. 
Or, who knows, maybe we can even run a Sprint together?

{% include mail-chimp.html %}