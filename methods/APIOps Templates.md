# APIOps Cycles Templates

## Information Architecture

[Templates](https://www.apiopscycles.com/information-architecture)

### Data Requirements Canvas

#### Top 5 Concepts

Top 5 concepts are logical concepts, usually nouns, that make up the core of the API under design. For example, products, customers, ingredients and locations are core concepts for a food delivery API.

Sometimes you will notice at this stage, what you though would be one API or one endpoint, is actually splitting into several.

After you have the initial core concepts, start working your way clockwise in the template.

#### "What questions the API consumers need answers to?"

Write down questions like "What products can be delivered to my location in under 30 minutes?". These will form the bases of your GET-requests, in this case for "products" -resource aka. endpoint. Your variables will be location (possible address or geolocation) and delivery time (in minutes). Your response will contain a list of products, that you have to identify somehow.

#### "International, national, industry specific or company wide data standards?"

You already identified products, location and time as concepts. What regulations or standards are related to these, for example ISO-standards or legal requirements? Good starting point are the schemata in schema.org where most concepts have been described as a ready made schema with examples and proper standards.

Products is a notoriously tricky concept for standards, because each industry has it's own set of standards for products, even though there are some globally standard identifiers.

#### "Common identifiers and required attributes?"

The products and locations need to be identified, for sure. But how? Location for example can be stored as co-ordinates or with address schema containing street address and ISO code for country.

Which attributes do you have to really have to ask the question? Do you always have to give location? Probably. But what about the delivery time? Is some default time used, if it isn't given?

What about the response? What is the minimum information needed about products in this case. Is it enough to return identifier, or should you also include product name in the response to make it easier to the client consuming the API. This is ok for GET requests, but do we also offer an API endpoint for creating products or orders? What are the minimum requirements then?

#### "How fresh the data needs to be?"

How fresh is fresh data is always a relative question. In this example case all we know is that the food delivered as a result of the API must be fresh. The list of products might be quite stable, but the availability and queue size of orders waiting to be delivered might vary. Is 5 minutes enough or should it be 30 seconds or 5 seconds? All of these options have different requirement on integrations, humans updating the information or processing the queue and the customer experience.

### API Design with requests and responses

* The request
* The response
* Perform request
* Response values

### API Design with events (push)

* Request subscription
* Register subscription
* Process event
* Triggering event - Trigger & send event
* Request subscription removal
* Remove subscription

## Business Impact

[Template](https://www.apiopscycles.com/business-impact)

### Business impact (risk) mitigating activities

Interview:

* customer service, account manager, partner manager
* business (process) owners
* project manager
* service manager to understand the real impact and possibilities to mitigate.

Impact if:

* API becomes unavailable (1 min, 1 hr, 1 day...) - architecture risks
* API security fails (3rd party gets access or user gets too much access) - security risks
* API works incorrectly (incorrect, missing, too old, too recent, partly working) - quality risks

## Capacity

[Template](https://www.apiopscycles.com/capacity)

### Capacity

* How many business events per day
    * Times per day, max times per minute
    * Peak times, special times

Mathematically calculate capacity requirements based upon business events.
