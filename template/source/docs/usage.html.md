---
title: Usage
order: 2
---

# Usage

In this section you will learn how are files structured in folders, what config options can be changed and which layouts are available.

## Folder structure

This template of course uses the default middleman structure. If you want to learn more about it please follow official [documentation](https://middlemanapp.com/basics/directory-structure/) as in this article we will only focus on parts that this template uses.

So we will go through all of the files that this template uses. You can see all the parts in the following schema.

```txt
mymiddlemansite/
+-- Gemfile
+-- Gemfile.lock
+-- config.rb
+-- source
    +-- index.html.erb
    +-- javascripts
        +-- site.js
        +-- ...
    +-- layouts
        +-- contents.erb
        +-- ...
    +-- partials
        +-- _breadcrumbs.erb
        +-- ...
    +-- stylesheets
        +-- site.css.scss
        +-- ...
```

### Config files

All files in the root are familiar to you if you used Middleman or any Ruby project before. `Gemfile` specifies used **gems** and that is from `bundle install` takes what it should install. `Gemfile.lock` just keeps additional info about installed **gems** such as versions and other.
