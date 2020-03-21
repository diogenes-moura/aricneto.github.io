---
title:  "Twisty Timer 3.0.0b1 update!"
categories: [twisty timer, update]
comments: true
---
After almost 9 months of no updates, **Twisty Timer** is back with a brand-new, out-of-the-blue update!

The main focus of this update was improving the layout of the two pages that needed it the most: Settings and Statistics. Along with it, we also added some small but very useful features, like inspection alerts for 8 and 12 seconds, average record highlights, and two new stats!  
I'll break it down one by one so you can see what's changed.

<!--more-->

## Layout improvements

### Statistics page

The previous statistics page was quite a mess. On high DPI devices, the text became too spaced out and small, making it very hard to read at a glance. On low DPI devices, it consumed almost the entire screen, obscuring the graph. In both cases, the unecessary padding, along with strings that, when localized, sometimes became too big and filled a third of the stats card, showed that the whole thing had to be redone.

| Old | New | New |
| :---: | :---: | :---: |
| ![Old](http://i.imgur.com/0sQQcCI.png) | ![New (collapsed)](http://i.imgur.com/LBocDW6.png) | ![New (expanded)](http://i.imgur.com/iHOZgdB.png?1) |


On remaking the layout, I focused on three things: give the graph more space for users on portrait mode, omit redundant information, and make localization easier.  
As you can see, the graph is now much more prominent, and the table is clearer and easier to read, with different colors for each row so you are able to locate everything at a glance. The column captions became icons that, hopefully, should be clear enough to show what each table represents. Either way, you can long-press them to see the full captions.

>**But why icons? Isn't the table supposed to be clearer now? Won't icons just add another layer of having to figure out what stuff means?**  
Yep. I really didn't want to put the icons initially, but it's the only way I found to keep the table layout the same regardless of localization. "Best" can easily fit within the small space available for column title, but you'll have a hard time fitting "Najlepszy" (Polish for "Best") on that space, specially in low-dpi devices.

Statistics have also been moved to three different "categories": Improvement, Average, and Other.  
"Average", as the name would suggest, shows all your averages. "Other" shows a mix of other useful statistics. "Improvement", on the other hand, doesn't have any unique statistics. It is simply a list of stats that I find best represent your speed: Deviation, Ao12, Ao50, Ao100, Best and Count. This list is very subjective, and I'm willing to change it depending on user feedback.  


>**Why add that tab then? It doesn't show anything new.**  
Whenever I see a Twisty Timer screenshot, 9 times out of 10 it is of the stats page. I know people like to see their stats all on one page, and I was afraid moving the stats card down to make space for the graph, and separating it in tabs would take some of the convenience of just being able to see it all. The improvements page is, at its heart, basically a "screenshot mode". If you pull it up, you still have a clear view of the graph, along with what I think are the most relevant statistics (again, this is highly subjective).  
Anyway, tell me what you think. This is a beta anyway :)

Here you can also see the two new statistics: "Deviation" and "Total time"!  
**Total time** shows you the sum of all your times in a given category, giving you a rough estimate of how much time you spent practicing.  
**Deviation** shows you the Sample Standard Deviation of all your solves in a given category. That is, how much your times deviate from the mean. The lower it is, the more consistent you are.  


### Settings page

By far the one that most needed a change. The old settings page was ugly and confusing. The settings were all scattered around and hard to find. For an app that focuses on customization, this is an issue that definitely needed to be fixed. To tackle it, I wrote all the existing preferences into a [Trello table](http://i.imgur.com/0uJKuI7.png), and reorganized and regrouped them until I felt it flowed well. Applying them to the app afterwards was much easier, since I already knew where each piece would go.

| Old | New | New
| :---: | :---: | :---: |
| ![Old](http://i.imgur.com/lrsy6Ys.png?1) | ![New](http://i.imgur.com/dQ7PXZs.png?1) | ![New](http://i.imgur.com/fP7G2JN.png?1) |


## New features

### Inspection Warning

This feature was introduced by [aswna](https://github.com/aswna) on Github!
{:.success}

The timer can now alert you when your inspection time is running out! By default, it'll alert you at the 8 and 12 seconds marks, but if you have a custom inspection time, it'll automatically adjust to alert you when 50% and 80% of the time has passed.  
This feature is off by default. You must enable it by going to Settings -> Inspection behavior.

### Best average highlight

This feature was introduced by [druidalek](https://github.com/druidalek) on Github!
{:.success}

You'll now be notified whenever you hit a personal best average when timing!  
![Average best](http://i.imgur.com/UBOdpNw.png?2)

## Bug fixes and minor improvements

* Rotating the screen no longer resets the scramble
  * Thanks to [freundTech](https://github.com/freundTech) on Github
* Fixed an issue where layout would look wonky in devices with RTL languages
* Make app movable to SD card
* Fixed 4x4 and 5x5 showing BLD scrambles
* Fixed leftover inspection +2 bug
* Back button behaviour can now be toggled off in settings
* You can now choose which sides you want the cross hints to show.

*Reports of my death have been greatly exaggerated.*
