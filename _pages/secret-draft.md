---
title: "Git is just a Game - A Simple Tutorial Explanation"
layout: single
permalink: /secret-draft/
date: 2018-09-30
---

I believe that knowing git is one of the most essential skills for an aspiring engineer nowadays. 
I had the luck that back in 2015 a selfless developer(thank you [Jimmy](https://github.com/alcesleo){:target="_blank"}!) devoted his time to teach this skill in a workshop to a group of students, including me. 
This had a serious impact on my career. But still, this technology can feel like a mystery, even to experienced engineers if they have never dealt with it before.
{: .text-justify}

> But in reality git is just like a game.

And I mean like a real game. Like games were before Candy Crush and Farmville. And admittedly after Pong and Tetris. 
That is to say a game, where you have a deep flow going on and you feel the urge to hit the quick save hotkey from time to time. 
Or where you perform a named save at some point to try things out. In a nutshell, git is like a game with clear-cut states.
{: .text-justify}

But no worries, even if you are just hooked up on Candy Crush but still want to understand git, this tutorial should fit your needs.
{: .text-justify}

Game on!

## Perequisites
- You never worked with git before or you still don’t get it
- You know what a command line or a terminal is and you want to use it during this tutorial 
- You have [git installed](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git){:target="_blank"}

## Game logic
Now, if you have git installed, you already made the first step into the game. 
This installation puts all the game logic onto your computer and makes the existing git commands available to you.
{: .text-justify}

For example your computer should now know the following git command
```bash
user:~$ git —-version
git version 2.17.0
```
If this works, then nothing can stop us anymore!

## A game with a goal
Every game has some kind of a goal. Your playing figures with git will be files and directories. You will write code, data and documentation into files and organize them in directories. It is your mission to:
{: .text-justify}

- provide an understandable and reusable history of your work
- protect your code from permanent loss
- work with others on the same code efficiently

If you ever wondered what "Version Control" means, this is it.
{: .text-justify}

## git init - Start a fresh game
Let's imagine you want to create your own new project. This is just like starting a whole new game. In git you do that every time in the following manner:
{: .text-justify}

1. Create a new folder for your game by typing the following in your cmd(Windows)/terminal (macOS, Linux)
```bash
user:~$ cd ~
user:~$ mkdir git-game
user:~$ cd git-game/
```
2. Start the git game with:
```bash
user:~$ git init
Initialized empty Git repository in /Users/user/git-game/.git/
```

Great! 

With the command `git init` the game logic creates an invisible directory with the name `.git`. 
This is like creating a fresh new copy of a game. 
This `.git` directory contains all the known game states for that particular game; it's like the memory of your game.
{: .text-justify}

## git add - Prepare for a quick save
If you ever played real computer games, then you are probably aware of the quick save hotkey which mostly defaults to F5 on your keyboard. 
Hitting F5 can become a quirk in highly suspense-packed games. These quick saves in git are the bread and butter of git's game logic.
{: .text-justify}

While notorious quick saving in games can make your playing kind of boring, there cannot ever be too many quick saves in git! 
This beautiful feature ensures that you reach all of your game goals mentioned above most efficiently.
{: .text-justify}

But before you can save the current state of your code, you need to tell git, which files exactly you want to ingest into memory forever. 
This step is also called "staging". You bring the files that you like to the stage so that you can save them in the next step.
{: .text-justify}

Let's play this one through creating an example python file.

1. Create a new file in your git-game folder via this terminal command
```bash
user:~$ touch player.py
```
2. Write this into your new file
```python
name = Frodo
weapon = Ring
level = 1
```
3. Prepare for the quicksave
```bash
user:~$ git add player.py
```

And this is it! I know, you can't wait for the next step, so let's move quickly.

## git status - Check the game progress
After the last command git will know that you want to save the changes of `player.py` into its memory.

You can and you should always check what git is currently "thinking" about the state of your game:
```bash
user:~$ git status

On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)

	new file:   player.py
```

As you can see, our `player.py` is ready to commit. "Committing" is another git slang and it means...

## git commit - Quick save

When you commit your code via git, you are practically saying:

> 1. Now I like the current state of my code because I've done what I planned.
> 2. I would like to remember this state.
> 2. I might come back to this state if I mess something up later.
> 3. I will give my changes a name so that other developers can figure out quickly, what I have done in this step.

The only difference between a quick save is: 
Here you want to provide a short and significant message, so that other people know what you have done in this step.
{: .text-justify}

```bash
user:~$ git commit -m"add player"

[master (root-commit) eaf27a5] add player
 1 file changed, 3 insertions(+)
 create mode 100644 player.py
```
Please always follow this conventions when you write your git messages: [Git Commit Message Best Practices](https://chris.beams.io/posts/git-commit/#seven-rules){:target="_blank"}
This will make the collaboration much easier in the long term.
{: .text-justify}

Good, your game is now saved. Congratulations!
But so far everything is happening on your computer only. Your colleagues and friends won't see your code anywhere online. 
It's time to get public.
{: .text-justify}

## Next in this tutorial: 
- what is GitHub
- difference Git and GitHub
- git push - make your game public
### Branches
- branches - start a parallel game
- make changes
- switch between the games
- try to merge and generate merge conflict
### Conflict with Remote
- git clone
- change something
- I change remotely 
- commit
- pull - like a game sync between different players 
- conflict
- Resolve