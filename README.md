# HappyPDF API Schema

[<img src="https://secure.travis-ci.org/happypdf/happypdf_json_schema.png?branch=master" alt="Build Status" />](http://travis-ci.org/happypdf/happypdf_json_schema)

Our API (objects,resources) is described with JSON Schema (http://json-schema.org).
Each Object has its own description, with those top-level keys:

  {
    "name": "pdf",      // object type
    "properties": { .. },   // field descriptions
    "links": [ .. ]         // CRUD actions, relationships to other resources
  }

Look into the /schema/ folder for the resources schema-files
For ruby pirates this project is available as gem. It provides some utility
methods to read the schema files and convert objects to their schema notation.
See [/lib/happypdf/schema.rb](https://github.com/happypdf/happypdf_json_schema/blob/master/lib/happypdf/schema.rb)

Other languages should take advantage of the raw json files.

## Field types & formats

Most of the fields are of type 'string'. Their format(espacially date fields)
is casted on our side. We try to go with the [formats](http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23) and [types])http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1) defined by JSON-Schema

All text MUST be UTF-8 encoded.

*Text-Format* length varies, between ~16,000 to 65.535, with the occurence of non-ASCII Characters [see this post on stackoverflow](http://stackoverflow.com/questions/4420164/how-much-utf-8-text-fits-in-a-mysql-text-field)


## Install

    gem install happypdf_json_schema

## Test

Tested with [travis-ci](http://travis-ci.org/happypdf/happypdf_json_schema), but of
course you can run them too. Install required gems with bundler and go for it:

    # git clone
    bundle install
    rake spec


Copyright (c) 2012-2013 Georg Leciejewski, released under the MIT license
