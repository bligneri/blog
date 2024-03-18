+++
date = 2019-11-28T15:01:01Z
description = ""
draft = false
featured_image = "/images/max/800/1-dqhi0lynno_d7gd6ipvyrw.jpg"
slug = "from-product-to-platform-platform-mental-models-3-5"
summary = "The journey of a Product manager: from product to platform.\n\nUseful mental models to better understand platforms: Superset of knowledge, Ecosystem, Infinite Game, Compounded interest"
tags = ["Product Manager", "Platform"]
title = "From Product to Platform — Platform Mental Models (3/5)"

+++


#### The journey of a Product manager: from product to platform.

In the [first post](from-product-manager-to-platform-manager-the-partners-impact-1-5.md), I described the importance of the partners in a platform world. In the [second post](from-product-to-platform-increased-complexity-2-5.md), I described why a platform is more complex. This third post is about mental models.

The Product Manager role is abbreviated as PM while the Platform Product Manager one is abbreviated as PPM

### Mental models

We will review four mental models that I have consistently found useful when thinking about platforms.

Those are practical models that can also be useful for PM as lots of successful products share some commonalities with platforms.

I will use this mental model to highlight the main differences between a platform and a product. This will help me establish my main thesis: platform development is more unpredictable than product development.

#### Platform: Increased unpredictability

A key component of the PM role is to increase predictability. This is done using two main tools:

1. by helping each team member to grow and make better decisions;
2. by providing guidance and a framework to help the team make a great decision quickly (start with why, prioritized roadmap, rituals, debate, decision log, etc.).

Let’s start with the first mental model.

### Partners knowledge is a superset of the platform team knowledge

The notion of subset and superset is a mathematical concept that applies to pretty much anything. For instance, we have seen above that the world includes all the mental models and much more: real living beings, planets, stars and so on.

We can apply this model to the partner ecosystem (see the next platform mental model) as represented below.

{{<figure src="/images/max/800/1-k8dzkc18xo1mbramjc1i8q-2x.jpg" caption="Naive representation of the partner ecosystem diversity: colour is country, size is revenue, the shape is type of business (five partners, one platform)." >}}

All partners know about the platform. Quite often, the platform is what connects them together in the set theory: they need to have some sort of knowledge intersection with the platform. The platform is really the only universally shared knowledge among all partners.

Now, most of the partners do not know each other and operate using very different business models (shape) in various domains, industries, countries that do not intersect with each other (colours, position in space). Each of the partners has developed deep domain expertise and is in direct contact with a subset of the platform customers. Some partners are larger (more revenue, more customers) than the platforms while others are operating at a local scale and are super-specialized: let’s assume that the area of each set represents the size (revenue) of the partner.

Some partners are competitors: their domain expertise overlaps with each other’s while some of them operate in completely different business areas and have no shared knowledge.

{{< figure src="/images/max/800/1-hy8dasj9juk9loofp1lmya-2x.jpg" caption="Partners, in aggregate, have a superset of the platform knowledge." >}}

If we could map all knowledge from all partners of the platform, it is my belief (validated with experience!) that the aggregated knowledge of partners represents a super-set of the platform knowledge.

Here is a tentative demonstration: As the number of partners grows and as the value created by the partner ecosystem surpass the value created by the platform. So does the partner knowledge.

In other words, partners have more direct knowledge and context of the problem they are trying to solve than the platform.

How to use this mental model as a PPM?

**Working with partners is indispensable**. Contrarily to a singular product organization in which a PM goal is to become a domain expert, with the user research team, and to collectively know more about the problem space than most participants (users/customers, partners), this goal is not even worth pursuing as a Platform PM. As the number of partners grows, their aggregated knowledge will always be a superset of the platform available knowledge.

As a consequence, user research, API roadmapping and API development should never be done in isolation. As a PPM, you have to engage with partners and involve the partners at every step: ideation, testing and delivery. This is also where the magic happens: partners are passionate about their domain of expertise and they are eager to find the best possible solution. As you engage and connect with partners, you will be able to leverage the impressive mass of knowledge.

This reinforces the need for PPMS to build a network of trust outside of their organizations as this is the most efficient way for us, humans, to exchange information, knowledge and ideas. By leveraging partners’ super-set of knowledge PPMS can now super rapidly test futuristic ideas (ideation), explore/define the problem space and solutions space, validate the riskiest assumption of any new endeavour.

In this context, the main goal of a PPM should be to abstract all the partners’ current and future needs. What is shared between all partners and should be built as a service inside the platform? What will remain true in 10 years? (at Shopify we even ask ourselves will this be true in 100 years as we want to build a 100-years company ;-).

Everything that is common to lots of partners, which has a long term future and is valuable, feasible and desirable should build inside the platform and build for the long term.

Everything else should be built as an API that partners can now leverage to create value in their own domain and compete with each other to offer the best possible value to the platform customers.

### Platforms are an ecosystem

A product can be seen as a plant which is growing on a certain are on planet earth. A platform is similar to a complete ecosystem operating on the same planet. Each partner is now a plant or an animal operating in this ecosystem. Some of the platform partners will become their fiercest competitors, some are already a competitor, others are contributing to multiple ecosystems helping users to switch from one ecosystem to the other, etc.

{{<figure src="/images/max/800/1-ganikicyj5jrqkim_mvs_g.png" caption="Source (Gartner)[https://blogs.gartner.com/smarterwithgartner/files/2017/06/BusinessEcosystem_Infographic.png]" >}}

If we follow this analogy, it is clear that the platform team has way less control of who is using their API and what their goal or business model is.

For instance, some partners specializes in `deplatforming` a customer from one platform to another. Others will add tremendous value and help the platform grow.

While we often complain, as a product manager, how users ‘hack’ our products, without an API, what they can do is easier to control than a platform API.

With a platform, the variety of how a partner can use an API is infinitely more complex … and unpredictable. This is unpredictable because partners are expert in an area that the product or platform team are often completely unaware of.

This unpredictability makes defining the success as well as the planning/roadmap activities way harder: your success depends on partner success! While your API will provide huge leverage to partner, ultimately, this is not something you can contribute directly. The best way to have successful launches is really to build a strong partner community ([see part 1/5: the partners](from-product-manager-to-platform-manager-the-partners-impact-1-5.md)).

In the ecosystem mental model, the PPM role is very alike to the role of a gardener. He needs to provide all the key vital elements (sun, soil, water, etc.) to each partner species and help them thrive. The PPM does not control mother nature and events outside of the PPM control zone will cause serious damage in part of the ecosystem very much like a drought.

The ecosystem mental model is also quite interesting when considering the yearly and quarterly business cycles. The season's analogy should be used by the PPM in order to plan the year ahead. I recommend defining what needs to be shipped in order to launch at the annual developer conference. The PPM can now use this fixed date as a forcing function inside his own organization to get alignment and have well-identified key milestones.

### Finite game vs infinite game analogy

{{<figure src="/images/max/800/1-6btgveqcjih39w5yesq8tg.jpg" caption="Image from [The Planning Center](https://www.theplanningcenter.com/)" >}}

Some games are finite. Good examples include Asteroid, Tetris, Donkey Kong and more generically games with fixed gameplay and with a clear and singular goal. One can progress and become more and more proficient at these games however, the end game, winning, is known in advance and does not evolve. This would be a good analogy for a singular product.

{{<figure src="/images/max/800/1-b6f6imgovzfuejqclx-v1w.jpg" caption="Inspired by [The Planning Center](https://www.theplanningcenter.com/)" >}}

Compare these games to something like Minecraft where players can contribute to the world, define a new world with completely different rules and where winning is not even defined!

Developers and hackers are providing extensions, contributing, along with the editor to this infinite evolution using every possible extension available and, in certain cases, hacking the system to add additional extension points in order to deliver the experience of their dreams.

This analogy helps better define platform-based product management. **** The platform main role is to define the rules of the world and help the players create new and exciting things and … have fun in the process.

Of course, in the business world, a powerful alignment tool is … money. It is used to incentivize each partner to have fun and continue to play, create value, enrich the ecosystem, generating more value and having new players join the ecosystem and … repeat the process.

Another powerful tool used by the platform is the API as well as the intrinsic API limits that players can use. These APIs define the boundaries between the world and the players. The API limits are not only technical. They include numerous dimensions: legal, commercial, data, service level agreement, etc.

### The compounded interests analogy

As platform mature and gather user demand, this stimulates more partners to join the platform. Each of these partners is providing value and extracting good revenue in return.

{{<figure src="/images/max/800/1-zjz2kvs05kd8qei9cdfp9w.jpg" caption="Value creation as compounded interest from a platform user using three different partner&nbsp;apps." >}}

For instance, in the schema above, particular user benefits from three different apps. Each app is installed at a different point in time. Each app is its own product and provides additional value as new functionalities are added to these apps to better fit their customer needs. The platform capture also a share of the value but, ultimately, a platform redistribute the value to partners more and more, capturing less value than the aggregated partners.

In opposition, a product wishing to provide the same value would have to develop incredible expertise in lots of product areas or geographies. This can be a real daunting task as the product want to scale globally and to different markets. This is a lot of pure developer talent! In fact, lots of these developers main identity is an entrepreneur and not a developer. It would be almost impossible to attract these talents inside a large scale platform-type organization.

A great example would be the iOS or Android platform. Users do not even pay for the operating system on a monthly basis. For all-purpose, the platform cost for the users is in fact zero. However, these users install between 50 and 100 apps on their devices and sometimes pays additional services to the platform operator (Apple or Google). The platforms capture between 20% and 30% of the direct value created by each partner.

Each partner is on its own compounded interest trajectory where they try to maximise value creation and minimize the cost. The platform is a broker whose goal is to generate even more partner engagement and value creation via improvements to the platform itself.

In this model, the PPM main role is to maximize value creation. As this is a financial mental model, a PPM success in launching or iterating on a new API call or a brand new API can easily be measured by counting the total revenue generated by partners. This can be super granular, down to each API call. As partners grow and use multiple API (especially in the case of GraphQL and Schema stitching,) causality becomes harder to establish as partners will create huge value by using multiple sections of the API. This is a super helpful model when financial metrics are needed: it can really stimulate investments into the API and partner ecosystem.

### Complete series: 
1. [Platform Product Manager: Partner (1/5)](from-product-manager-to-platform-manager-the-partners-impact-1-5.md)
1. [Platform Product Manager: Complexity (2/5)](from-product-to-platform-increased-complexity-2-5.md)
1. [Platform Product Manager: Mental Models (3/5)](from-product-to-platform-platform-mental-models-3-5.md)
1. [Platform Product Manager: Revolution and Evolution (4/5)](from-product-to-platform-platform-revolutions-4-5.md)
1. [Platform Product Manager: Conclusion (5/5)](from-product-to-platform-conclusion-5-5.md)

{{% feedback-en %}}

