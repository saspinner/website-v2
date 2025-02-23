---
layout: "../../layouts/MarkdownLayout.astro"
title: 'How This Website Came To Be'
date: "2025-02-20" 
live: true
---

## It lives!

The bulk what you see on this page right now was coded up using the [Astro JS](https://astro.build) framework on a ~9 hour plane ride from Tokyo Narita Airport to SFO. I'm sure there's a better method for combatting jet lag, but my approach has always been to stay awake on both the plane and at my final destination until it gets dark. We departed from Tokyo at 9pm, so that meant a night of having to greatly upset my circadium rhythm. Enter the blue light of a laptop screen. 

While this website is a [queen of the night](https://en.wikipedia.org/wiki/Epiphyllum_oxypetalum) in execution, it is _also_ and _more importantly_ the product of multiple years of indecision, abandoned repositories, expired and untouched domains, and just general CS-novice foot-gunning through half-understood stack overflow threads and w3school tutorials. If any of that sounds familiar, you're in luck! Assuming that you are still on the quest to create a personal website without using industry standard, tried-and-tested tools like Wordpress, Squarespace, or any of the esteemed LLM offerings, here is a (probably?) faithful recounting of the steps I took to make what you see before you now. Best of luck :) 

## Get by with a little help from your friends

The #1 most important thing I did to create a personal website was to befriend someone who already had one of their own. I badgered them with questions during random hours of inspiration and eventually blatantly ripped off their website's design to get my own off the ground. All kudos to [Sidney](https://sidney.com)!

If none of your friends have personal websites, what a great opportunity for a shared project! Fire up YouTube tutorials, dive into stack overflow, and make an occasion of it. Like a caring for a communal pet or going in together on a joint lease agreement, pushing git commits with your companions is a surefire path to making lifelong memories.   

## Hosting - Cloudflare Pages to the rescue

I use Cloudflare Pages to host this website for the following reasons:
1. The functionality supported at the free tier is incredibly generous and [intentional](https://developers.cloudflare.com/fundamentals/concepts/free-plan/) 
2. The workflow was familiar and straightforward-> git push code, watch it appear on the internet
3. Sidney recommended it

The totality of resources I used to do this are [here](https://developers.cloudflare.com/pages/framework-guides/deploy-anything/), [here](https://developers.cloudflare.com/pages/framework-guides/deploy-an-astro-site/), and [here](https://docs.astro.build/en/guides/deploy/cloudflare/).

You'll also need to get a domain name, it should cost like ~$20 per year, you can get it through Cloudflare like I did, but I've [read](https://den.dev/blog/be-a-property-owner-not-a-renter-on-the-internet/) that's less optimal than purchasing the domain on a third party source and then registering it in Cloudflare. 

If for some reason Cloudflare doesn't work for you, [Github Pages](https://pages.github.com/) is my other recommendation, and what I used in my first few attempts at making a personal site. 

## Framework - Why I chose Astro JS

Websites are the combination of three things: HTML, CSS, and Javascript. Frameworks (React, Vue, Astro, Next) provide ways to easily work with these three ingredients. Whatever you do in one framework or language can be achieved in another- but it might need to be accomplished in a different way. From what I've gathered from the front-end wizards in my life, React, Next, and SvelteKit are the most popular frameworks today. You should probably make your website using one of those! 

When looking at the [list of popular JS frameworks that Cloudflare supports](https://developers.cloudflare.com/pages/framework-guides/), my eye was drawn to *Astro simply beccause it's the name I go by at the summer camps for which I volunteer*. A big part of my identity and personality responds when it hears this name. It was also a framework I hadn't heard of before, so I thought it could be edifying to learn something a little off the beaten path. 

I think it's quite important to chase these tiny joys when working on personal projects. For my previous attempts at making a website I tried pure HTML/CSS, React, and NextJS. All projects fell to the wayside, for a myriad of reasons that are all just different ways to say that I did not prioritize them. But on this attempt, I relished and was motivated by the day I would be able to write this sentence: Astro made a website in Astro! 

## Know-how - make small changes to already-built systems 

Finally, the main reason I was able to accomplish most of this in a night/morning is thanks to being forced to learn the same principles that comprise this site at my workplace. I recently switched into a full-stack role after being entirely backend/data focused and began making frontend components for the first time. Importantly, I was not building anything at work completely from scratch- I benefited from reusing well established patterns and examples already present in my work's codebase. 

Making small changing to "complete" entities is beneficial because it compartmentalizes the scope of the work and allows you to measure how closely your mental model of how something works aligns with reality. 

When building a website from scratch, there are dozens of things to consider at once. It's easy to get lost in the weeds when deciding what to build and quite difficult to track down _why_ something isn't working in the way a tutorial, youtube video, or stack overflow comment claims it should. 

But when making small changes to something that already lives and breathes, it's immediately clear when your change has worked, failed, or crashed the just-working app altogether. It's an instructive game of operation. 

For this reason, if you find yourself without knowledge of HTML/CSS/JS, I'd recommend watching or [reading](https://web.stanford.edu/class/cs193x/reference.html) tutorials for 15 minutes to get familiar with the basics, and then downloading a complete website's codebase to run locally and begin making small changes:
- Can you change the color of certain segments? 
- Can you change the URL route that a link redirects to when clicked? 
- Can you add or remove content?
- Can you significantly change the the layout while keeping it visually appealing?

In doing this, you'll progressively gain the skills to build exactly what you'd like. Oh! Also use the Elements tab of the [inspector](https://developer.chrome.com/docs/devtools/overview#elements) for visual debugging.


## What now?

I hope to continue writing, sharing, and enjoying life with the help of this evolving site. Thanks for reading! 








