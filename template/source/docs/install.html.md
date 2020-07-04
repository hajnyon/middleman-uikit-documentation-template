---
title: Installation
order: 1
---

# Installation

## Prerequisites

If you are new to using Middleman or Static Site Generators generally I suggest you to start at [Middleman documentation](//middlemanapp.com/basics/install).

In short you will need Ruby and RubyGems to install Middleman:

```bash
gem install middleman
```

## Init project with a template

To start a project using this template simply run:

```bash
middleman init MY_PROJECT_FOLDER -T hajnyon/middleman-uikit-documentation
```

All it essentially does is, that it copies contents of `source` folder (layouts, styles, javascript, content), `data` folder (configurable options) and config files.

After successful initialization you can start edit the content files or tweak the theme. More about it in [usage section](/docs/usage).
