---
date: "2018-10-28"
title: "Automated Show Downloader"
portfolioCover: "projects/web-scraping/cover.jpg"
tags: [python, torrent, plex]
---

My mom was a fan of a Taiwanese show, but the YouTube channel got geoblocked overnight. There were two solutions:
1. Purchase a VPN
2. Torrent the episodes

Unfortunately, Taiwanese VPNs were pretty expensive (I don't think the major VPN companies like PIA had servers in that region). I also had to have a Raspberry Pi route internet to the smart TV as mom wanted a frictionless experience, which was a little bit outside of my skillset at the time.

Armed with my grade school level Chinese, I managed to find a torrent site that had the episodes! Why not try my hand out at web scraping? I already had a Plex server running, and it wasn't much effort to interface with qBittorrent as there was already a Python library for it.

After a look around, `Beautiful Soup`[^1] was what people recommended. It was pretty pleasant to use! I used `Requests` to grab the search page, scraped the links, then grabbed all the links and scraped them for the magnets, using a text file to figure out what I'd already scraped. Then I just popped them off to qBittorrent and it worked!

Now to schedule it. I didn't quite have much Linux experience at this point either so the simplicity of cron was great for beginner me. I made a bash script to call my python script once a day and it ran like clockwork.

The torrent site died after a few months, unfortunately, and I couldn't manage to find another source.

All things considered, this was a pretty fun experiment in scraping and basic cron scheduling! It got several months worth of shows for my mom so the effort was worth it.

Check the repo out [here](https://github.com/shanscendent/python-scrapers)

[^1]: The Alice in Wonderland illustration in the cover is from BS4