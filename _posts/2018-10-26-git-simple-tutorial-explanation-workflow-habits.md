---
title: "Git is just a Game - LEVEL 4: Good Habits and Simple Workflows"
toc: true
layout: single
permalink: /blog/git-simple-tutorial-explanation-LEVEL-4/
date: 2018-10-26
categories: 
    - tutorials
tags:
    - git
header:
  teaser: /assets/images/posts/gamification-git.jpg
  image: /assets/images/posts/gamification-git.jpg
---
This blog series is an attempt to explain git and GitHub using an analogy to games. We gamify a git tutorial here so to say. If you'd like to have a very basic introduction to git, check out [Git is just a Game - LEVEL 0: Introduction](https://datagoodie.com/blog/git-simple-tutorial-explanation-LEVEL-0/){:target="blank"}
# 🎮

## Why Habits and Workflows?
You have probably already at least some experience with git if you start thinking about workflows. Maybe when you run a bigger project, you may ask yourself if you could do it more efficiently. Or maybe you look for ways to improve the work on a project where you collaborate with others. 
{: .text-justify}

Workflows are a set of best practices to give your git game some structure and efficiency boost.

In git there is a single player mode where you tackle on projects alone. But like most games, git is best enjoyed in a party. It is a highly collaborative game [with common goals](https://datagoodie.com/blog/git-simple-tutorial-explanation-LEVEL-0/#a-game-with-a-goal){:target="blank"}
{: .text-justify}

But to be honest, every git user should learn useful workflows and habits from the beginning, even if you are hiding in the single-player mode. This will make you more productive and a more powerful git warrior from the beginning!
{: .text-justify}

<figure class="align-center">
    <a href="/assets/images/topics/octodex/luchadortocat.png"><img src="/assets/images/topics/octodex/luchadortocat.png"></a>
    <figcaption>GitHub's unbeatable <a href="https://octodex.github.com/luchadortocat" target="_blank" >warriors</a>.</figcaption>
</figure>

But first of all, what is the difference between [workflows and habits](http://calnewport.com/blog/2018/09/11/habits-vs-workflows/){:target="blank"}?

> Habits are habitual processes, that you execute mostly based on some trigger. Workflows are a set of actions to help you perform a task more efficiently. 

## Habits vs. Workflows Example 
Whenever you start any kind of a project (**trigger**), you hopefully create a git repository before writing anything else (**habit**). You always follow a certain algorithm (for example [the magic git setup](https://datagoodie.com/blog/code-sprint/#yet-another-framework-was-born-that-day){:target="blank"} ) that consists of different steps (**workflow**) to create this repository in a way that you can optimally work with it from now on (**efficiency**). 
{: .text-justify}

## Good Git Habits also known as Best Practices

### 1 - Always create a repository 
You can always follow and improve your personal coding workflow if you always start out with a git repository. Also, if you are a total computer science beginner and looking for a job as soon as possible, then there is nothing more valuable than ...
{: .text-justify}

1. ... your personality 
2. ... an active GitHub account

The code won’t be of great quality in your repositories at first but you will show that you are totally into coding (besides the fact that you are a totally great person too). 
{: .text-justify}

### 2 - Have a good commit message
Make sure you describe exactly what you have done. There are different approaches to writing commit messages but one is extremely popular and is concisely explained in [this short blog post](https://code.likeagirl.io/useful-tips-for-writing-better-git-commit-messages-808770609503){:target="blank"}. {: .text-justify}

### 3 - „Commit often, push more often“
A colleague of mine once said that this beautiful sentence. And while technically you cannot push more often than to commit, this sentence makes a great point. Everybody will only be on the same page, working on the same codebase if the repository is as up to date as possible. This can only happen if you push your finished and tested code as often as possible.{: .text-justify}

Besides that, there are many other advantages from this habit.

You will be able to "travel in time" between your last commits if you mess something up completely. 
{: .text-justify}

And you will have a nice documentation of your work in the case when you need to look something up.
{: .text-justify}

This habit will also have a great impact on your coding style. When you devote yourself to commit as often as possible, you will be more focused on working in small steps. This will ensure that you always know where you at and not digress. 
{: .text-justify}

Working in smaller isolated steps also ensures that you make fewer mistakes. And if you make them, it is much more easy to spot the source because most of the time the bug will hide in the last steps that you took.
{: .text-justify}

### 4 - Forget `git push`
Many beginners run into troubles and conflicts because they don’t incorporate a `git pull-push` habit from the beginning.

To avoid merge issues and weird git error messages you want to get the latest changes from the remote repository first before you make your changes public. 
{: .text-justify}

So, you `commit` your current changes and `pull` from the remote repo **first**. If there are no conflicts or you solved them all, you can safely push your stuff into the cloud.
{: .text-justify}

And don’t play Russian Gitoulette! Whenever you think: „Oooh, this time it’s impossible that someone pushed to the repo.“ it’s exactly the point in time where you get your headshot! 
{: .text-justify}
# 🤭

<figure class="align-center">
    <a href="/assets/images/posts/git-tutorial/dogs-playing-russian-roulette.jpg"><img src="/assets/images/posts/git-tutorial/dogs-playing-russian-roulette.jpg"></a>
    <figcaption>Russian Gitoulette Style (Source: http://azeta.com.ar).</figcaption>
</figure>

### 5 - Have a .gitignore file right away
At the beginning of my git adventure years ago, I had problems understanding where the weird `.eclipse`, `.idea`, `venv`, `.build` and `target` directories come from and why they are suddenly in my repository.
{: .text-justify}

Three years later it’s still a hassle to remove them from the repository if someone mistakenly pushed them there, this is why I always create a `.gitignore` file before my first commit to keep my game clean at all times!
{: .text-justify}

By the way, I have created an easy to install commandline tool that automates the creation of a `.gitignore` file: [la maREPOsa](https://github.com/RichStone/mareposa){:target="blank"}.

### 6 - Have a README.md right away
It’s best to have a README.md right away if you want the project to be reusable in any way. Be it for yourself or for others. Believe me, in 3 weeks you won't remember anymore, what your project was about or how to use it, although it might have been a great idea.
{: .text-justify}

([la maREPOsa](https://github.com/RichStone/mareposa){:target="blank"} also works for automating the creation of a README.md, either a blank one or a detailed/light template.)
{: .text-justify}

### 7 - Update your README.md regularly
It is best to have your README.md always open in a text editor to add important documentation there right away and not put it off for later. It's like with sports: If you don't do it early in the morning the probability that you won't do it later rises exponentially with every passing hour.
{: .text-justify}

## Bad Git Habits 
One of my great professors always followed the rule and instructed us to follow the rule to never come up with bad examples. Most of the time you can turn them into good ones and forget about the inferior stuff. If you are a bad guy or girl, just don’t do the Good Habits above and you will be full of bad habits. And every game of yours will be on the edge of game over because you reach a point where you psychologically can’t fight the conflict monsters anymore and your teammates will hate you because they don’t understand your commit messages.
{: .text-justify}

## What Are Git Workflows?
Most of the time, git workflows are about systemizing …

1. ... how you organize your branches ([What are Branches 101](https://www.atlassian.com/git/tutorials/using-branches){:target="blank"})
2. ... what is pushed when by whom to the main (master) remote repository ([What is a Remote Repository 911](https://help.github.com/articles/about-remote-repositories/){:target="blank"})
3. … which best practices are followed by the whole team (see @@@ Good Git Habits @@@ or if you want to dive very deeply read this great and highly un-gamified article: [What are Git Best Practices 187](https://sethrobertson.github.io/GitBestPractices/#panic){:target="blank"})?

## Workflow 1 - Single Player Mode
I grew up in a time and a country where the Internet was introduced much later than in other civilized parts of the world… probably at a point where Diablo 2 was not super popular anymore and WarCraft 3 was the state of the art for quite some time already.
{: .text-justify}

So I am quite comfortable with the single player mode and I would rather not dare to enjoy GTA with others in some kind of a silly multiplayer mode (for the youngsters here, GTA was a total single player game initially).
{: .text-justify}

But exactly like in single player focused games, you need a good strategy to survive in the git game too, even if you think yourself safe working all alone on your own project.
{: .text-justify}

<figure class="align-center">
    <a href="/assets/images/posts/git-tutorial/alone-at-pc.png"><img src="/assets/images/posts/git-tutorial/alone-at-pc.png"></a>
    <figcaption>Forever alone (From: thelettermmarketing.com).</figcaption>
</figure>

When you work alone you will be already doing great if you follow the Good Git Habits from above right away. If you combine all of these it will make a great workflow already.
{: .text-justify}

You will probably feel like dismissing [Habit 4 - Forget `git push`](#4---forget-git-push) but I would advise against that! Two main reasons:
{: .text-justify}

1. In our highly mobile times it is not unusual to work on your projects from your phone or from some digital nomad place, like a hotel terminal or other silly places: 
{: .text-justify}

- you can change your code in your GitHub repository directly from their homepage, www.github.com. 
- GitLab has even a tremendous online web IDE to work on your code directly from the browser.
- if you have your own server you could also log in to it from your phone or from some other device and push changes from there.

If you don’t pay attention once, the Russian Gitoulette will be on again.
# 🔫

2. It is incredibly easy to set up an alias on your system, to perform a `git push` and `git pull` automatically with a command like `git-pp` from your terminal..
{: .text-justify}

### When to branch out?
When your project starts to get bigger you will want to create branches to implement new bigger features because you want to have a stable version of your game. Either because it is a program that you use on a regular basis and you need it to be usable at any time. Or because you plan a new complex feature and fear that you might mess up everything completely.
{: .text-justify}

When a feature is finished and tested in your feature branch you will merge the branches. That's it.

## Workflow 2 - Multiplayer Light
This workflow is very simple to do for any team and is mostly used for smaller quests like prototypes in companies, semester exercises in universities or hobby projects.
{: .text-justify}

In a team, before doing everything else, it is optimal to decide together which of the Good Git Habits you want to follow and how. This set of habits will be then the first part of your workflow. 
{: .text-justify}

How you handle branching and committing to the master version will be the second part.

### Why branching?
The reason for why you need a systemized branching workflow is clear: If everyone just pushes to the master it will be much harder to spot bugs. 

Also, it will be extremely difficult to work together on the same chunk of the code without branches.

### How to branch out?
Four simple steps for every teammate:
1. Before you start to code anything you open up a branch in your terminal, e.g. with `git checkout -b new-feature-name`
2. You work in this branch according to the Good Git Habits you agreed on
3. When you are done, you test it
4. In the end, you either issue a pull request so that somebody can look over your changes and merge them to the master. Or you push to the master directly if you are confident that everything is safe

## Workflow 3 - Multiplayer MMORPG
When your git game gets so big that several teams work on different features for the same codebase, it gets more and more important to ensure that the code is of good quality. This is why you have to take additional measures before the code gets committed to the master.

In this workflow, it can already make sense to agree on a code quality manifesto that describes when your code is mature for the master. For instance, you could say that you only commit code which …

```manifesto

1. ... meets your team's clean code requirements
2. ... is 80% unit tested
3. ... works in all relevant browsers

...

```

### How to branch out?
1. Before you start to code anything you open up a branch in your terminal with `git -b new-feature`
2. You work in this branch according to the Good Git Habits you agreed on
3. When you are done you check if your code meets the manifesto
4. You submit the first pull request
5. After a quick check, a teammate will review the code with you together
6. If everything is cool, you forward the pull request to the master branch
7. At the master branch, there is an experienced gatekeeper programmer who knows the codebase very well. They will check if the changes conform to the current version of the game and merge the changes. If everything is alright, congratulations! Otherwise, consider starting with step two again.

---

Hope you were able to get a sense of how workflows and good habits work as well as of how to apply them. Remember that there are as many workflows as there are teams and that every workflow and habit is just basis to start with that should be adjusted to the needs of the team.
