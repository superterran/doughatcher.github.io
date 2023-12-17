---
title: "Untangling Adobe's API Mesh"
date: 2023-03-14T15:40:24+06:00
# publication thumb
image : "images/publications/pub2.jpg"
# author
author : "Doug Hatcher"
draft: false
# description
description: "This is meta description"
# links
links:
  - label : "Blue Acorn Blog"
    link : "https://www.blueacornici.com/blog/untangling-adobes-api-mesh/"


draft: false
slug: "untangling-adobes-api-mesh"
tags: ["adobe", "commerce", "mesh"]
# series: ["Publications"]
# series_order: 13
---


Adobe’s API Mesh offering is pretty neat. It allows you to take any group of micro-services and knit them together into one cohesive API. You can then use this API for your whole storefront or app. Adobe’s API Mesh delivers all this API goodness in one easy-to-read GraphQL endpoint, even if your microservices use other API technologies!

API Mesh brings many useful advantages when it comes time to take Adobe Commerce headless or to build that highly available PWA everyone dreams of having. So it’s no wonder why they made API Mesh an internal part of Adobe Experience Cloud and their App Builder offering. App Builder and its API Mesh are starting to light the path to highly performant and scalable enterprise offerings.

## API Mesh in Detail 

At its core, Adobe’s API Mesh is a reverse-proxy and API Gateway. It’s intended to sit between your presentation layer and the many microservices a storefront may have behind the scenes. Like a universal translator, it can accept connections from a variety of backends speaking service languages like GraphQL or OpenAPI. These connections can be set up fairly quickly with minor configuration, which a development team can adopt and roll into their process without missing a beat. Once in place, it gives you that single GraphQL endpoint that “meshes” all these APIs into one cohesive API for your presentation layer. From here, you are free to extend the APIs using transforms which allow you to manipulate API requests and responses in transit.

One big thing to know is that it acts as a reverse proxy. This means that when you send a GraphQL request intended for Adobe Commerce to the API Mesh, it routes it for you transparently. If you already have a headless frontend leveraging GraphQL, you can configure it to send requests to the mesh and it will just work. Then, when you attach other microservices or solutions from the Adobe Exchange Marketplace to the mesh, you can get right to work putting that data to use without needing to figure out how to get it to flow into your frontend. It also means that if you have a mix of frontends, they can all do their work over the same API Mesh, allowing you to unify everything. 

Although you can simply leverage the mesh as a reverse proxy, things get more interesting when you investigate how you can leverage Transforms to modify things in transit. Transform lets you manipulate schemas and control the content of your GraphQL requests and responses. This includes simple transforms like Encapsulate, which lets you take an API endpoint and encapsulate its calls into its own root field. Filter Schema provides a useful way to filter out and remove fields from responses so you can limit what info is exposed. Transforms let you invoke serverless functions and change casing on fields. There’s even a federation transform that allows you to define subgraphs.  

Technically, Adobe’s Mesh solution draws heavily from The Guild’s GraphQL Mesh, and they even reference The Guild in their documentation. The Guild has a number of offerings around open source API management. GraphQL Mesh offers the same basic features as Adobe’s offering, but The Guild offers more Source Handlers. This gives you a sense of where Adobe may be headed with this offering and what API Mesh could ultimately give us. With The Guild’s Mesh, you could connect it to a database with something like the @graphql-mesh/mysql handler. You could define the structure of your database, establish some constraints and cascades, and allow the API Mesh to convert your database into a headless backend. This ability to quickly bootstrap microservices out of little more than sticks and mud could really come in handy, and it gives us a taste of what Adobe likely has in store for this product down the line.

## Looking Toward The Future 

We think API Mesh begins to shine when companies start to move towards Composable Commerce and MACH Architectures. We feel strongly that major brands want to have customer experiences that are built for purpose and interwoven with the cloud services end users care about. If you have a customer profile service, you don’t want to duplicate this data into a commerce backend; you want the source data at your fingertips. As we start building these new highly scalable customer experiences, our ability to quickly fetch and cache this data within the mesh will allow us to move away from the Magento Monolith and into Static Site Generation and PWAs.

We can reduce the load to Adobe Commerce servers and even improve the customer experience at scale by leveraging one of the headless frameworks that are coming into fashion. There are many of these–GraphCommerce, Vue Storefront, GatsbyJS, and Adobe’s own Venia Storefront all come to mind. Many of these are powered by ReactJS frameworks that take advantage of Static Site Generation. SSG means that pages are built ahead of time and served from edge servers and CDNs for improved scaling without the need to call the server for information. Dynamic content is then fetched through JavaScript when the browser needs it. This means that Adobe Commerce servers are only performing the work needed to generate a specific result instead of building the entire page on top of that, too; this can account for seconds of page load time. These headless frontends are typically more efficient and cacheable, and Adobe’s App Builder can host them.

We think this will lead to a paradigm shift in how we view Adobe Commerce in our architecture. Traditionally, Commerce sat in the middle as the “Monolith,” containing most of the moving pieces and basically did everything from running crons to building web pages. We can now start to move away from this and begin framing it as a commerce microservice. This microservice manages aspects of the catalog, customers and orders but is only invoked when needed. This means that the PWA can handle more of the work, and if we want to introduce another service to manage a concern, we don’t necessarily have to integrate that with Adobe Commerce directly. Instead, we can take a far easier path by integrating it with our PWA, where its data is already in the mesh.

So we see this as a huge time saver but also as a means to build API-based applications without having to worry about building extensions and server-side logic. For instance, take a highly available API like a subscription service. Traditionally, an architect may feel compelled to make that subscription service a first-class commerce citizen, where we develop a payment method, shipping method, and the ability to perform some online management actions through the order in the admin; not to mention also all the user interface elements for customers to manage and place orders. In a PWA model, you may decide that leveraging a NodeJS library and building a presentation layer for the API might be better, as you can just build an interface directly for your APIs and side-step hundreds of hours grafting the functionality onto Adobe Commerce.

We think there’s a lot to Adobe’s API Mesh and how it positions us to build more modern customer experiences, and we believe we’re just starting to scratch the surface. We’re very excited to see this product come into maturity, and we’re already beginning to leverage it and test its limits. Contact the Blue Acorn iCi team today to learn more about this technology.