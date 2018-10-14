---
layout: single
title:  "Agile Transformation for Data Teams"
date:   2018-10-14
categories: 
    - methodologies
tags:
    - data-science
    - data-engineering
    - big-data
    - agile
    - scrum
permalink: /blog/2018-10-14-agile-transformation-for-data-teams/
header:
  teaser: /assets/images/posts/agile.png
  image: /assets/images/posts/agile.png
---

Is agile transformation of data teams different from “regular” software engineering teams?

Next year the agile manifesto is getting 18 years old or in other terms: of legal age.

But I haven’t met an organization so far that does not have teething problems with becoming agile. Statistically, most have rather major puberty problems if not much worse.

But no matter what kind of challenges, failures or successes they find on their path, a transformation is always a great endeavor to learn from.

Recently I visited an incredibly insightful [GOTO meet-up](https://www.meetup.com/de-DE/GOTO-Nights-Berlin/events/254552617/){:target='blank'} in Berlin where an SAP transformational agile team shared with us their experiences and lessons learned from the last 12 years of attempting to transform a part of a large German-based SAP department full of developers.

They described the common challenges, which probably any transformation team faces. But how different are those challenges for data teams? By data teams I mean those brave warriors in data labs, that consist of data scientists, data engineers and maybe even DevOps unicorns. It’s fun enough to transform a bunch of software engineers to agile, but does the process follow similar rules for the data crew?

## Get a Scrum Team going
For every company, this is a juggling game with resources: How do you make most of Scrum with least spending?

A classic Scrum team consists of a bunch of Team Members AKA developers, a Scrum Master and a Product Owner. Most companies try to beat the juggling game by assigning the last two roles to the Team Members. This approach has a negative impact on the workflow because it’s always difficult to switch roles consistently and stay focused on your tasks. This one may be even more difficult for a data team. Nowadays a data scientist or a data engineer may be switching between tasks already: working on a visualization task in the morning and tweaking the data platform in the evening.

## Getting Lean
Also, how do you start to change the thinking process from requirements first to product first?
Although incorporating lean principles into the transformation will never be easy, I believe that doing this with data teams can be even more difficult.
When the software engineers develop their product, it’s mostly clear what they are doing and what kind of MVP they can come up with and how they can increment it.
With data projects, it can be more difficult because the end product is often more abstract. For example, what’s an MVP for a Machine Learning model? If you’d like to go deeper into this, I suggest that you start with this article: [What is Minimum Viable (Data) Product? – idealo Tech Blog – Medium](https://medium.com/idealo-tech-blog/what-is-minimum-viable-data-product-49269e338d85){:target='blank'}

## Use agile to enhance the code quality
There are a lot of agile techniques for improving the code quality like TDD or pair programming.
Two major issues exist for the data folks here: Most data scientists are not explicitly Extreme Programmers and very often they are from an academic background. So, if even regular software engineers still struggle to write tests these days, you can imagine that it won’t be different for the data teams, if not even more laborious. For more XP advantages and disadvantages read this article:
[Why Extreme Programming can be an asset or a liability for data scientists - TechRepublic](https://www.techrepublic.com/article/why-extreme-programming-can-be-an-asset-or-a-liability-for-data-scientists/){:target='blank'}


## How do you measure success?
It is extremely difficult to measure success or abstract concepts, like productivity or velocity. How do you define reasonable KPIs for those? How do you measure motivation or alignment? Mostly because no project is the same or even comparable. This white paper tries to tackle these issues:
[THE DATA-DRIVEN AGILE TRANSFORMATION](https://www.agilecockpit.com/wp-content/uploads/2017/09/data-driven-agile-transformation.pdf){:target='blank'}

## A common motivation for the transformation
In most companies, the main reason for transformation comes top down. Then managers often say: The developers are not productive enough and don’t do the best possible work in terms of quality, we need to change something.

In data teams, it’s not different and these vague assumptions are then the basis for motivating people to do agile. How motivating can this be for the developers!?

I was wondering if it is possible to induce a change bottom up? Could you establish a company culture with a different understanding of transformation?

One could say that transformation is not just about solving problems like low productivity. But the transformation is rather a solid part of how the IT lifecycle goes.

Probably you could compare a company’s lifecycle to an engineer’s career cycle. Those engineers who stop learning completely, i.e. stop transforming, get sorted out at some point. Do you see the parallel? Or do you know of any tech company that plays a vital part in the economy and doesn’t change much over the years?

What would happen if management would rather focus on how beneficial the transformation will be for the company and for the individual in the long run? In this mysterious company culture the full emphasis would be on the benefits of agile transformation:

- The quality of the code will get better
- We will have fewer bugs to fix
- We will have less extra hours
- We learn new skills together
- We have a happier work environment
- The company has more success and acknowledges the employees for that

You can extend this list as you wish and some of these points are even fairly measurable.

This approach will work great with data teams. The Homo Data Scientiust is known for his understanding of the importance to transform to a better version of himself to survive in his rapidly changing data jungle environment. The same goes for the d-engineers and d-analysts by the way.

The SAP team gave away a few golden nuggets at the end of the presentation and shared with us their biggest takeaways so far. These takeaways can be applied in data teams perfectly since they are quite general:

1. Don’t be dogmatic about doing agile. Use agile tools as a toolbox, according to your use case and derive your own best practices.
2. Work hard to have management fully on board to stand on your side and to support the transformation.
3. If you want to incorporate a new agile best practice, think about the best strategy first: Is it maybe better to “just do it” without announcing the buzzing buzzwords you want to work on? Or do you want to have endless discussions about what “Continuous Control” really is about? (I have not made this one up by the way. You will find some information on CC at the end of this post of mine: [Mind Transforming Conferences and Meet-Ups](https://datagoodie.com/blog/2018-09-12-mind-transforming-conferences-and-meetups.md/){:target='blank'})

As some last resources, I want to share an article with you that also deals with agile transformation for data teams but mentions additional points to be aware of, like communication, infrastructure and more KPIs:
[Using agile to accelerate your data transformation](https://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/using-agile-to-accelerate-your-data-transformation){:target='blank'}

Talking of KPIs, I have just read a great article about how useful OKRs for Data Science are. Applied with discipline they can play an impactful role on your transformation: [The Power of Goal-Setting in Data Science](https://towardsdatascience.com/the-power-of-goal-setting-for-your-data-science-project-9338bf475abd){:target='blank'}

Wow, this was a lot of information and links. Feel free to share this post if it was of any help for you. 🚀