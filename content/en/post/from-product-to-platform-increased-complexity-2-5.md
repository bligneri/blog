+++
date = 2019-11-25T15:01:01Z
description = ""
draft = false
featured_image = "/images/max/800/1-s9paqi7p7-qwolgbb2ylna.jpg"
slug = "from-product-to-platform-increased-complexity-2-5"
summary = "Journey of a Product manager, from product to platform: complexity!\n\nPlatforms are more complex than products. This post highlight the specific domains where platforms are more complex than products."
tags = ["Product Manager", "Platform"]
title = "From Product to Platform — Increased Complexity (2/5)"

+++


## Introduction

In the [precedent post](from-product-manager-to-platform-manager-the-partners-impact.md), I described the importance of the partners in a platform world. Now let's have a look at complexity, once again, trying to highlight the differences between product and platform development.

The Product Manager role is abbreviated as PM while the Platform Product Manager one is abbreviated as PPM

## Technology

{{ < figure src="/images/max/800/1-xxi-kg18lipn4xcfzmoqqq.jpg" caption="Code complexity / Photo by [Chris Ried](https://unsplash.com/@cdr6934)" >}}

As a Platform Product Manager, you will need to interact with a more diverse engineering team because usually API design and development is quite different than front-end/user-facing development. Example of new specialties: API designer, API developer and then you also have multiple flavors to work with mainly REST and GraphQL these days.

Typically, it means that you should be more on the technical side of things. You need to understand rate limits, complexity limits, query cost, and basic distributed system architecture. Other useful notions include synchronous/asynchronous calls, Webhooks, subscription services as well as key elements like the source of truth, integrity and backward compatibility.

You should be able to read/parse JSON, make read/write REST and GraphQL queries and mutations. If possible, with a developer, you should also build an app and be able to consume and teso that you can.

## API first?

While this approach could make sense for a product, I am not sure this is recommended for a platform. A platform is a complex set of API(s) and features. Not being able to experience the UI as you use a brand new API will most certainly create misalignment and generate poor quality feedback from partners.

Said differently, a published API without any corresponding UI artifacts can be very abstract and quite hard to understand both for partners and for the product team.

### Gather partners' API feedback instead

Even if API first is not an option, the API first principle can be respected. You absolutely should prototype your API and engage with partners before engaging with your users. You could also provide a simple pdf document with the planned API calls and payload. Ultimately, publishing a developer preview version of your queries (read-only API) will also make it more concrete and testable for partners. As soon as it is reasonably bug-free and functional (even if with limited scope), releasing an alpha and then the beta version of the API is recommended.

Feedback gathering on the API will allow you to create a more compelling vision of the API + product as well as clearly delineate what are the platform functionalities are, what functionalities are shared with partners and which one are exclusive to partners.

### Backward compatibility

One of your primary responsibility, as a PPM, is to remain backward compatible. If you can not achieve backward compatibility, this could create chaos among your partners. An unknown number of apps could fail, causing a massive loss of trust (and value!) between the partners, the users and the platform.

Backward compatibility is not guaranteed even if the API does not change! An API is only an expression of a broader, more in-depth social contract between the partners and the platform. Lots of assumptions exist on the platform side as well as on the partner side.

For instance, you inherited a great project: in certain circumstances, by doing two external calls to partners instead of one, you could improve the user experience and solve a sturdy business problem. The team can ship this project during a two-week sprint.

{{<figure src="/images/max/800/1-wdfdueoz6lc2kbjke6ua-g.jpg" caption="Image by (Gerd Altmann)[https://pixabay.com/users/geralt-9301/]">}}

The product team develops and test it on a small scale (1% of the calls). When you roll-out, this causes a massive outage and lots of partners apps immediately stop working. After long hours of problem-solving, bug fixing and a massive revert of all the changes, you discover the root cause. Some partners were using a security tool to prevent denial of service attacks. The two calls that happened in a short interval triggered the security measure — the platform IPs were blocked for 1 minute. The platform retried the API call on average every 30s. The partners’ production engineering team did not even manage the security equipment!

A simple behavior change can have dramatic consequences. Be super mindful of areas like unit conversions (measure, weight, currency), internal changes of some unused data structure, removal of hidden fields, broadening or specialization of internal concepts.

Quite often, these risks are in the blind spot of your engineers: they did not even change the API. Why bother with partner and risk analysis?

Some risk mitigation strategies you could use:

* Be in constant contact with your partner community even for so-called `minor changes` as soon as it is in the same domain-area
* Ship the updated API one partner at a time and monitor the roll-out
* Have a documented and tested roll-back plan

### Product launch is more complex

When new functionalities in the platform have launched that overlap with the partners offering, the PPM has to make sure that partners will adopt new API.

A useful model to use is the carrot and stick model from the psychological theory of motivation. The stick should be your last resort weapon. As a PPM, you can deprecate an API version and, at some point, stop providing the service. Using the stick approach causes your relationship with a partner to weaken and add friction to the value creation. Not a great way to build an open and trustful partner community!

As a PPM, if you have to use this, it is a clear sign that the newly launched API does not create enough value for your partners to invest in it and migrate. The best solution would be to identify these API gaps and make sure the new API addresses them.

The carrot is my favorite approach. As a PPM, your goal should be to make the new version of the API so desirable that it is adopted right away by some key partners. They adopt it because you engaged with them and made sure that the API was a great answer to their business needs. Once a few significant partners have adopted, you can now leverage them as an example, do case studies and special events with these early adopters. Make sure you give early adopters more visibility (case study, developer conference) because they create value faster than the other partners. At this point, the main driver for API adoption is competition.

The platform must handle each partner with equanimity. Make sure you support and engage all other partners. Be super explicit about the timeline for launch, early adoption and offer all partners the possibility to shine and be an early adopter.

### Legal and financial complexities

API usage requires a social contract to be signed between the platform and the partners building apps using the new or updated API. Each API is not created equal in terms of monetization, revenue-sharing, and even business model. This can create headaches and complexity and even kill projects as legal agreements are rejected by both parties. This can affect the entire feasibility of a new API because of the regulation or the inability to find a revenue-sharing agreement with partners.

Once an app is shipped and used, loopholes can be discovered linked to the revenue sharing terms between the platform and the app. Some apps, with a large user base, can now impose their will and hold lots of power because they own a large component of the user experience (for some users). This context has to be perfectly understood by the PPM especially if she/he plans to iterate/change this API. Most of the time, this means meetings with the finance team, the commercial team, doing thorough business and market analysis as well as numerous alignment and negotiation rounds with partners.

### Partner/platform team:

UX teams are not necessarily eager to consider partner research as their core responsibility. This can be even more acute in organizations with a “platform team” or “partner team” who own the relationship between the platform and the partners.

As always, a PM must use their judgment before deciding what is best for the project. A bit of key advice for a new PPM or when iterating on a new product area would be to always do your own research: learn about the larger partners, meet 1:1 with the key partner's managers, ask the platform team to help you set up 1:1 meetings with key partners, etc.

Form your own opinion on who can help you the best to understand the problem space and do not hesitate to reach out directly to partners. As we will see in the next section (mental model), they have much more knowledge than you do in their own field of expertise.

### Business metrics and internal alignment

When a partner/platform team exists, this team will tend to centralize the revenues from the partners. It can then become super hard to obtain funding because on one end the product team is building new API that will generate new revenues and on the other hand the platform team is considering these revenues part of their revenue stream. This could create a vicious circle because product team will then stop investing into the platform and only focus on actions that impacts their revenues and profitability.

{{<figure src="/images/max/800/1-irck0htmemanrab3hvezag.jpg" caption="Image by [Santa3](https://pixabay.com/users/Santa3-3503898)" >}}

Lots of commercial teams and product organization to not have a strong platform muscle. They are well versed in the direct revenue model and prefer to contract partners directly using a 1:1 approach, not an API with a revenue share approach.

This is even more critical if you plan to change the revenue-share agreement with the partners vs maintaining the status-quo of the current API. In this case, the PPM will have to make sure that all the interests are aligned. You may have to reach out outside of the product team: GM, finance team, commercial team. For key areas, this can, of course, escalate up to the CFO/organization leaders as well.

Don't wait for these events to happen: define the financial impact early on and work with these teams to make sure your assumptions and modeling are correct. Have a deck ready to explain all this in 5 minutes with a clear recommendation that you can deliver while in an elevator.

### More complex stakeholder management

The PPM operates in an imposed environment. The product team are users and not owners of the API technological layer, API tooling, API release, and approval processes, API go to market, the acceptable term of use, API limits, agreement with partners, etc.

Any API change and behavior change that can impact a partner will increase the number and type of stakeholders. More often than not this will add at least three stakeholders dimension to your workspace: a representative of the partner (platform/partner team), a representative of the API process and release, an API go to the market specialist.

All these new players and approval processes can cause setbacks and delays. This is especially critical when the launch date is fixed. Typically the yearly developer conference. As often, don't wait: be pro-active, engage with these stakeholders early on, find them, build a meaningful relationship with them and establish trust even before the project has started.

### Complete series: 
1. [Platform Product Manager: Partner (1/5)](from-product-manager-to-platform-manager-the-partners-impact-1-5.md)
1. [Platform Product Manager: Complexity (2/5)](from-product-to-platform-increased-complexity-2-5.md)
1. [Platform Product Manager: Mental Models (3/5)](from-product-to-platform-platform-mental-models-3-5.md)
1. [Platform Product Manager: Revolution and Evolution (4/5)](from-product-to-platform-platform-revolutions-4-5.md)
1. [Platform Product Manager: Conclusion (5/5)](from-product-to-platform-conclusion-5-5.md)

{{< feedback-en >}}

