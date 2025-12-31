---
title: Blocking homepages to reclaim screen time
live: true
date: 2025-12-30
layout: ../../layouts/MarkdownLayout.astro
---
Navigating the tradeoff between the value that technology provides and the attention that it steals is a defining struggle of our time. 

I've tried different strategies to curtail my unintentional screen usage over the years: setting my screen to black and white, blocking certain websites, and using specific tools to replace certain phone functionality. Long-term success at reducing screen-time has been poor, but recently read a [review](https://pubmed.ncbi.nlm.nih.gov/41231585/) on the effects of short form video (SFV) consumption and have renewed motivation to try again.

My main problem was the information I intentionally wanted to consume, often specific YouTube videos and Reddit posts, live one click away from endless-scroll dopamine black holes. In a moment of high willpower, I'd block all `reddit.com` and `youtube.com` urls on my devices. Sometime later, I'd encounter a thread or reference to a YouTube video or Reddit post that seemed genuinely interesting. To view that link, I'd remove the block, forgot to reinstate it, and then would leave `reddit.com` open for the scrolling once again.

Two free browser extensions, [LeechBlock](https://www.proginosko.com/leechblock/) and [ivBlock](https://apps.apple.com/us/app/ivblock-website-blocker/id6749312487), address this problem. Within the extensions, I am able to configure specific url strings and _substrings_. My configuration is as follows: 
```
+reddit.com/r/*
+youtube.com/@
+youtube.com/channel*
+youtube.com/playlist*
+youtube.com/watch*

reddit.com/
youtube.com/
youtube.com/shorts/
```

What this says is "block links that start with `reddit.com, youtube.com, youtube.com/shorts` but allow links that begin with a `+`". As an example, if I mindlessly open a new tab and type "red" (this happens with embarrassing frequency), which autocompletes to `reddit.com`, I'll hit the block. However, subreddits and individual reddit posts are of the form `https://www.reddit.com/r/whatsthisrock/` , which begins with `reddit.com/r/*`, an explicitly allowed path. 

Since using these extensions, my consumption of both Reddit and Youtube content has been more intentional and satisfying. I'll continue to refine the configuration and look into tools like [`pi-hole`](https://pi-hole.net/) or private DNS instances to set up network wide safeguards with the same intention.