# BookSwap

A project made by: 
* Dalton Burge 
* Christian Cmehil-Warn 
* Derek Howard 
* Jonah Zukosky

## What is BookSwap

BookSwap is a webapp for college students to give and recieve textbooks they need. Simply, create an accoun, list books you don't want, and add books to your wishlist.
If someone lists a book you want or if someone needs a book you'll have, we'll give you each other's email so you two can meet up and get and give the books you need.

##Database Schema

## Entity Relationship Diagram

![ERD](erd.png?raw=true)

## CRUD Requirements

### Create 

The webapp adds new books and users to their respective tables. The user can add books to their inventory and wishlist, adding it to the repective table. Generated matches are added to the swap table.

### Read

The webapp displays the user's wishlist and inventory and uses SELECT querys to find matches.

### Update

Whenever a match is found, the owner and recipent both confirm that they still want to give/recieve the book. When they confirm, their response is changed from `NULL` to `True` in the matches table. If a user declines a match, the match is then their response is changed to `False`.

### Delete

Users can remove books from their wishlist and inventories, which deletes them from their respective tables. After a match is made and completed, the book entries will be deleted from the inventory and wishlist tables.

## Video Demonstration

[Video Demonstration](https://youtube.com)

## Installation

Clone this repo manually or use `brunch new dir -s es6`

## Getting started

* Install (if you don't have them):
    * [Node.js](http://nodejs.org): `brew install node` on OS X
    * [Brunch](http://brunch.io): `npm install -g brunch`
    * Brunch plugins and app dependencies: `npm install`
* Run:
    * `npm start` — watches the project with continuous rebuild. This will also launch HTTP server with [pushState](https://developer.mozilla.org/en-US/docs/Web/Guide/API/DOM/Manipulating_the_browser_history).
    * `npm run build` — builds minified project for production
* Learn:
    * `public/` dir is fully auto-generated and served by HTTP server.  Write your code in `app/` dir.
    * Place static files you want to be copied from `app/assets/` to `public/`.
    * [Brunch site](http://brunch.io), [Getting started guide](https://github.com/brunch/brunch-guide#readme)

## ES-next

To use proposed JS features not included into ES6, do this:

* `npm install --save-dev babel-preset-stage-0`
* in `brunch-config.js`, add the preset: `presets: ['latest', 'stage-0']`
