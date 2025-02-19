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

If none of your friends have personal websites, what a great opportunity for a shared project! Fire up YouTube tutorials, dive into stack overflow, and make an occasion of it. Like a caring for a communing pet or going in together on a joint lease agreement, pushing git commits with your companions is a surefire path to making lifelong memories.   

## Hosting - Cloudflare pages to the rescue

I use Cloudflare pages to host this website for the following reasons:
1. The functionality supported at the free tier is incredibly generous and [intentional](https://developers.cloudflare.com/fundamentals/concepts/free-plan/) 
2. The workflow was familiar and quite easy -> git push code, watch it appear on the internet
3. Sidney recommended it

The totality of resources I used to do this are [here](https://developers.cloudflare.com/pages/framework-guides/deploy-anything/), [here](https://developers.cloudflare.com/pages/framework-guides/deploy-an-astro-site/), and [here](https://docs.astro.build/en/guides/deploy/cloudflare/).

You'll also need to get a domain name, it should cost like ~$20 per year, you can get it through Cloudflare like I did, but I've [read](https://den.dev/blog/be-a-property-owner-not-a-renter-on-the-internet/) that's less optimal than purchasing the domain on a third party source and then registering it in Cloudflare. 

## Framework - Why I chose Astro JS

Websites are the combination of three things: HTML, CSS, and Javascript. Frameworks (React, Vue, Astro, Next) provide ways to easily work with these three ingredients. Whatever you do in one framework or language can be achieved in another- but it might need to be accomplished in a different way. From what I've gathered from the front-end wizards in my life, React, Next, and SvelteKit are the most popular front-end frameworks today. 

When looking at the [list of popular JS frameworks that Cloudflare supports](https://developers.cloudflare.com/pages/framework-guides/), my eye was drawn to Astro simply beccause it's the name I go by at the summer camps for which I volunteer. A big part of my identity and personality responds when it hears this name. It was also a framework I hadn't heard of before, so I thought it could be edifying to learn something a little off the beaten path. 





