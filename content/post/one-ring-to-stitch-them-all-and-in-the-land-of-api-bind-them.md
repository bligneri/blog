+++
categories = ["medium", "Import 2023-06-01 01:13"]
date = 2019-12-26T06:01:01Z
description = ""
draft = false
image = "__GHOST_URL__/content/images/max/800/1-lmxgumd0phybvfjazbkukw.jpg"
slug = "one-ring-to-stitch-them-all-and-in-the-land-of-api-bind-them"
summary = "One Ring to Stitch Them All and in the Land of API Bind Them. GraphQL schema stitching for platform or API PM"
tags = ["medium", "Import 2023-06-01 01:13"]
title = "One Ring to Stitch Them All and in the Land of API Bind Them"

+++


#### From product to platform: a PM journey

### Context

As a former technical founder, CEO and CTO interacting mainly with B2B and mature technological stacks, I did not focus my time and energy on GraphQL.

I had lots of experience designing and integrating with REST API and always had no experience with GraphQL beside a REACT tutorial and then techno-drink I attended. It was early GraphQL days, the tooling was not mature, and the examples I did were not able to convey why this Facebook invented technology was so great.

#### Example REST APIs working “together”

{{< figure src="__GHOST_URL__/content/images/max/800/1-iifnkw3i1ayvivqzmp-lfg-2x.jpg" caption="Example in REST: multiple queries to get a simple&nbsp;answer" >}}

#### Irreversible decision

From a PM point of view, your product/platform API protocol (GraphQL or REST) is an archetypal irreversible decision (Type I decision in Besos mental model). This decision has a substantial short-term (development), medium-term (support cost) and long-term (value creation by [the platform partners](https://medium.com/swlh/from-product-manager-to-platform-manager-the-partners-impact-1-5-c906bdb1dcd0)) impact.

It was healthy to examine alternatives and spend some time to gather information and agree on this decision.

In this short blog, I do not intend to detail the differences between REST and GraphQL. I will focus on a single element that is extremely useful for platforms and their partner ecosystem (see the [from product to platform](https://medium.com/swlh/from-product-manager-to-platform-manager-the-partners-impact-1-5-c906bdb1dcd0) series)

### Thrive on change: GraphQL at Shopify

Shopify decided to adopt GraphQL way before I joined. However, at Shopify, the product teams are not simple delivery teams. Each team is empowered to make its own decision based on its product context. So even with a strong GraphQL direction, we met with the platform team and considered the possibility to ship a REST API mainly because we were replacing a read-only REST API by a newer and expended version.

#### Learning GraphQL

While I do not have an engineering role, I am an engineer by trade with a Ph. D. physics & postdoc in high-performance computing. I believe that PMs are making better decisions when they understand the underlying technologies’ principles. Then PMs can speak the language of the engineers. And the same is true for UXers, data scientists, C-Level: this is the T-shape skillsets of product management.

I followed some tutorials and was able to rapidly grasp the power of GraphQL as well as the significant design differences with REST API.

I sat down with engineers, with a developer advocate from the platform team. I started to collect GraphQL queries and mutations. Then [GraphiQL](https://github.com/graphql/graphiql) became for a while my best friend: a Web IDE for GraphQL queries with autocompletion and all.

I did not go very deep (as is often the case with PM!) but enough to be able to test our product development, run some queries and mutations and also interact with other areas of the Shopify platform.

#### Platforms + GraphQL = Super Power

After talking with a partner who was doing multiple REST calls to multiple Shopify endpoints. I realized that with GraphQL, this partner could make a single GraphQL query!

The light went on: my awakening to GraphQL schema stitching superpower!

#### GraphQL Superpower: Schema Stitching

I believe this is one of the main drivers for GraphQL adoption: GraphQL schema stitching delivers incredible value to partners. Multiple teams can grow several API sections, and GraphQL will magically unify them.

> One API call to rule them allA customizable payload to returnPaginated, containing only the expected valuesTo, in the land of GraphQL, bind them

As a platform grows in scale and capabilities, REST becomes incredibly costly and hard to understand, scale, maintain and … use. The main reason is that each team is shipping its API without a strong consideration for what all the other groups are doing. Concepts within various teams in charge of multiple parts of the API become slowly but surely misaligned and more and more complex as the platform scale. API versioning is also more complicated and not breaking apps become an art much more than a science.

GraphQL example

{{< figure src="__GHOST_URL__/content/images/max/800/1-umgp3teudc8gage7ki2arg-2x.jpg" >}}

Schema for multiple the same query as the REST example above : more elegant, less bandwidth used and … easier to understand!

#### Considered scenarios and impact of each of them

Because this technology helps both the product teams and the partner community, partners create more value faster. It is also cheaper to implement and maintain at scale. GraphQL has become a vital component of the platform flywheel and growth: as partners learn about it and transition their apps because of the GraphQL benefits.

As the quality and scope of the GraphQL API expand, partners can quickly improve their apps. It lowers the cost for partners to explore all the platform capabilities and allow them to retrieve only the required information (more efficient, faster and more scalable).

Long live GraphQL.

Note: schema stitching is dead! it has been replaced with “[federations](https://blog.apollographql.com/apollo-federation-f260cf525d21)”. Don't worry: same concept and even more flexibility to organize and adopt a micro-service architecture!

Many thanks to [Nicolas Lupien](https://medium.com/u/ca4d76503477) for early feedback and fact checking ;-)

#### Feedback is gift

* What do you dislike about GraphQL?
* Do you use GraphQL for your product / platform. Why and … why not ?

