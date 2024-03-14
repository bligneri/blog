+++
categories = ["medium", "Import 2023-06-01 01:13"]
date = 2020-01-17T10:10:01Z
description = ""
draft = false
image = "https://radicaloptimist.org/content/images/max/800/1-pudyupwucaq1i5pcjeexlg-2x.jpg"
slug = "the-abuse-of-tech-debt"
summary = "There is nothing unique about tech debt: just change. A tech debt classification and initial root-cause analysis."
tags = ["medium", "Import 2023-06-01 01:13"]
title = "The Abuse of Tech Debt"

+++


#### What is tech debt?

Tech debt is a term which uses is very common in the tech and start-up ecosystem. “_It is a concept in software development that reflects the implied cost of additional rework caused by choosing an easy (limited) solution now instead of using a better approach that would take longer_.” ([Wikipedia](https://en.wikipedia.org/wiki/Technical_debt#cite_note-Girish_2014-1)).

The analogy with debt is linked to compounded interests. For instance, with time, a 5% tech debt will compound into a super costly and hard-to-maintain product. In a way, the system becomes more and more brittle, and more and more expensive to maintain and change.

#### In real life

In real life, tech debt is quite often a concept that is abused. I will use “tech debt” to identify the abused concepts.

In the modern world, “tech debt” tends to be, in essence, like a magic incantation used by engineers to prioritize some work before anything else. It sends the wrong signals to the rest of the team (product, UX, data): “_Sorry, you can not understand why, it is too complex, but we have to do it_”.

* Is all “tech debt” created equal?
* In 2020 and beyond, is it true that we can have engineering-only projects that do not create business value?

Let’s examine these questions by looking at some real-world “tech debt” abuses.

> There is nothing unique about tech debt, just change.

### “Tech debt” as a consequence of unfinished sprints

In the agile world, we try to build a complex product in multiple iterations. If you have unfinished sprints … you should not start a new one before you finish this sprint!

> Thank you old code for all your efforts in sustaining our company for the last 5 years.

If you encounter this type of problem on a regular basis, you should stop your current sprint and use any incident/event as a good opportunity to improve your agile process.

Use recent incidents and problems to do a root-cause analysis and if this is linked to past sprint(s), you have to dig deep with the team and change your definition of one from now on.

Users are directly impacted. The value of not doing this project should be easy to materialize and prioritize accordingly.

### “Tech debt” as a changing definition of done

For instance, the current page speed load time is five seconds. Today senior leadership decided that the page load speed has to be less than one second.

Is less than one second even a realistic goal for this page? If the answer is no, engineering should not even try to tackle this project! The engineering-only solution may be super hard and costly to implement, but as a product team, we can do better! Involve UX and product, look for efficiencies and what is causing the page to slow down. Use this to improve your user metrics, prototype and test your improvement ideas! What about the progressive loading of the page? Prioritization of what is loaded according to the user’s interest? How are we going to measure success?

With the whole team involved, this project has to be prioritized like any other. It will compete with further improvements to improve your users’ life and create business value.

### “Tech debt” as unfinished business

As your product grows both in adoption and usage, it is tempting to call “tech debt” a bunch of technical issues or tickets remaining on the board. These stories/functionalities were not deemed critical enough to ship to the user for the initial release. Like any other UX and product gaps, they should be part of your regular backlog grooming exercises. No special treatment here.

It may be tricky to find business value for these issues, but it should be done. For instance, if the main impact of these issues is to improve resiliency, it can be presented as a business impact: fewer support costs and higher availability for the product. If needed, define a new metric, look for the current status of this metric and put it on your KPI dashboard.

Now you can start evaluating the impact of these issues/stories from a business point of view. Once the business value has been determined, use the prioritization framework your team is comfortable with.

### “Tech debt” as re-architecture projects

This one is quite fun. You learned that this particular technology is now end-of-life inside your organization. All teams have to transition by Sept 21st. But rest assured, this is a purely engineering project and it will have no impact whatsoever on the user experience.

Change is part of life. But don’t be naive. It is extremely rare that any major change inside the architecture will have zero impact on your user experience.

Some examples:

* do we need to update the docs: where are the logs?
* Should we produce a new support doc and retrain all our support staff? Do they need to learn an entirely new system to support our users?
* Transition: is it a big-bang roll-out, progressive roll-out, what about support for the two systems now? Do we need two sets of docs? Is there a planned outage?
* Any unit conversion, change in how we represent numbers, units, strings, etc.? Any new encoding that could derail the system?
* How will we test it beforehand and ensure it is working fine?

This should be managed as a complex, high-risk project. It is a high risk for two reasons:

1. it is mandated by a top-level executive,
2. it has a hard deadline. Most of the time, for valid business reasons: legal or financial reasons

### “Tech debt” as unmaintained systems

This one is quite common. There is a saying in product management: a product is never complete; we simply stop caring for it.

For instance, you discover that in addition to your “regular API,” you also offer a “legacy API” and even “legacy-legacy API. “ Partners and users can access three technological layers with different pricing and functionality!

Unmaintained systems are problematic. They stopped growing long ago. However, their business value did not decrease with time. Or it did not decrease enough to mandate their disposal: the current users may well be your more valuable customers. Moreover, the organizational knowledge about them tends to disappear as employees move on to other roles, teams or companies.

The root causes tend to be one of these:

1. The organization does not celebrate killing products/people are only evaluated based on what they ship. This is a toxic culture that will create, again and again, unmaintained products.
2. Unclear business value for this functionality. Abandoned products tend not to generate enough revenues, or their business value is super hard to quantify.

With this in mind, you should assess the business value of current and legacy systems and make decisions regarding killing it, leaving it as-is or investing heavily in it to produce a new version.

As a Product Manager, you should aim to kill products at least once a year or every quarter. Make it clear that removing an old functionality is part of the team's success. Make sure it is on the performance report of everyone involved. Help materialize the value of killing old products, old code, old blogs, and old documentation.

You should organize a ceremony for this, Marie Kondo style. “Thank you, old code, for all your efforts in sustaining our company for the last five years”. Ensure to thank every active contributor and make it official that it is good to delete code and kill products.

If you don’t, you will have to live with the consequences: fewer resources for your products or a difficult situation for your replacement if you move to something else.

Once again, this type of tech debt mandates a full-fledged project (killing an old functionality) and, most certainly, two if your organization decides to invest in a new version.

### Conclusion

While I do not deny the existence of tech debt per se, I don’t think “tech debt” should be used as an engineering incantation to prioritize projects and work in a silo.

The software does not change with time. From a technological point of view, running old software becomes more and more costly with time: libraries, OS, language,  tooling, dependencies, lost organizational knowledge, etc. However, bytes assembled ten years ago operate identically from the first day they were released to the world!

Our business environment: team structure, partners, technology, value-chain and customer expectations change. These changes can cause previously created software to be ineffective, unreliable and deliver less value over time.

These changes should be managed like any other change within your development process and prioritization framework.

> There is nothing unique about tech debt: just change.

### Feedback is a gift

* Any experience with “tech debt” abuse in your organization?
* Other typical abuse of the “tech debt” concept?
* Is tech-debt still a thing with agile methodologies that promote just in time (but reusable) code?

Thanks to [Nicolas Lupien](https://medium.com/u/ca4d76503477) and [Andy Dent](https://medium.com/u/922d4b8e7d17) for early feedback, ideas and reviewing efforts.

