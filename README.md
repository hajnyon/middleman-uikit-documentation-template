# Middleman UIkit documentation template

Template for documentation pages styled with UIkit for Middleman.

Check [demo](https://hajnyon.gitlab.io/middleman-uikit-documentation-demo/) or learn about customization and usage in [documentation](https://hajnyon.gitlab.io/middleman-uikit-documentation-demo/docs/usage/).

![Screenshot of docs](./screenshot.png)

## Instalation

```bash
middleman init MY_PROJECT_FOLDER -T hajnyon/middleman-uikit-documentation-template
```

## Configuration

**data/config.yml** - basic site configuration

```yml
repository: https://git.fiedler.corp/software/documentation/cloud # repository for gitlab static site editor
site_name: 'Documentation Template' # site name displayed in logo, titles and links
```

**data/footer_links.json** - social links in footer

```json
[
    {
        "url": "//github.com",
        "label": "GitHub",
        "icon": "github"
    },
    {
        "url": "//twitter.com",
        "label": "Twitter",
        "icon": "twitter"
    }
]
```

**data/navigation_links.json** - links displayed in top navigation (2 levels supported)

```json
[
    {
        "url": "/docs/index.html",
        "label": "Docs",
        "sub": [
            { "url": "docs/install", "label": "Installation" },
            { "url": "docs/usage", "label": "Usage" },
            { "url": "docs/showcase", "label": "Showcase" }
        ]
    },
    {
        "url": "about",
        "label": "About"
    }
]
```

## Content

-   **source/index.html.md** - landing page content
-   **source/about.html.md** - about page content
-   **source/docs** - content of documentation itself
-   **source/partials/\_hero.erb** - edit to customize landing page hero

## Layouts

-   **home** - landing page
-   **contents** - documentation contents list
-   **documentation** - default documentation layout (sidebar and breadcrumbs, default for `docs/*`)

For more visit [documentation](https://hajnyon.gitlab.io/middleman-uikit-documentation-demo/docs/usage/).
