# cabforum.org website

## Make and preview changes
You can make simple changes in the GitHub editor. For more advanced changes you might want to run a local copy of the website.

Some basic git knowledge is required, please check https://guides.github.com/ to get started from scratch. An editor such as [Visual Studio Code](https://code.visualstudio.com/) can help you to [simplify most of these tasks](https://code.visualstudio.com/docs/editor/github) and help you with editing the content.

1. [Install hugo](https://gohugo.io/getting-started/installing/#quick-install)
2. [Create a fork](https://guides.github.com/activities/forking/#fork) of this repository
3. [Clone your fork](https://guides.github.com/activities/forking/#clone)
2. Run `hugo server -D` in the root directory of your fork
3. Open the shown URL `http://localhost:xxxx/` in your browser to preview your local version
4. Make changes until you are satisfied; the preview will update automatically
5. [Commit and push your changes](https://guides.github.com/activities/forking/#making-changes)
6. [Create a pull request](https://guides.github.com/activities/forking/#making-a-pull-request)

## Formatting content
The content lives in `content/` and is written as markdown because of it's simple content format. We do not allow the usage of HTML, this to enforce uniform and structured content, but there are times when Markdown falls short. For some of these reusable cases you can use built-in [shortcodes](https://gohugo.io/content-management/shortcodes/) or use/create a custom [shortcode](https://gohugo.io/templates/shortcode-templates/).

- [Basic Markdown Syntax](https://www.markdownguide.org/basic-syntax/)
- [Diagrams](https://gohugo.io/content-management/diagrams/)
  - [GoAT](https://github.com/bep/goat) (rendered on server)
  - [Mermaid](https://mermaid-js.github.io/) (rendered using JavaScript on client)

You can add attributes (e.g. CSS classes) to Markdown blocks, e.g. tables, lists, paragraphs etc.

A blockquote with a CSS class:

```md 
> **Warning**
> This is an important message
{.callout-warning}
```

All [Bootstrap](https://getbootstrap.com/docs/) styles are available, to change the default table style you can use for example the following attributes:

```md 
| table header | column |
| ------------ | ------ |
| first row    |        |
| second row   |        |
{.table .table-bordered .table-striped .table-hover}
```

### HTML Content

Inclusion of HTML content within Markdown is not allowed for security and consistency reasons. If you need to include HTML content to enforce an particular formatting you can use a shortcode or create a custom shortcode.

## Shortcodes

Shorcodes are short tags that can be used in Markdown to render content. Hugo comes with a set of built-in shortcodes, see https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes. In additon to the built-in shortcodes we have added a few custom shortcodes which can be found in `layouts/shortcodes/` and are described below.

In general we try to only use shortcodes for content that is used in multiple places or that is too complex to write in Markdown.

### Listing pages

To query a list of pages you can use the `list-pages` shortcode. This shortcode supports the following parameters:

```md
{{< list-pages summary=false limit=10 type="post" tags="Ballot,Code Signing" >}}
```

- summary: true/false (default: true)
- limit: number (default: 250)
- tags: comma separated list of tags (default: all tags)
- type: 'page' or 'post' (default: all pages)

### Load external markdown content

For loading content from external sources you can use the `markdown` shortcode. This shortcode supports the following parameters:

```md
{{< markdown url="https://example.com/page.md" >}}
```

- url: URL to the markdown file

### List GitHub pull requests

To list GitHub pull requests you can use the `github-prs` shortcode. 

```md
{{< pull-requests repository="code-signing" state="open" labels="ballot" >}}
```

This shortcode supports the following parameters:

- repository: GitHub repository name
- state: 'open' or 'closed' (default: open)
- labels: comma separated list of labels (default: all labels)

### Button

To create a button you can use the `button` shortcode.

```md
{{< button link="posts/" target="_blank" type="primary" label="More posts of the CA/Browser Forum" >}}
```

This shortcode supports the following parameters:

- link: URL to the page
- target: '_blank' or '_self' (default: _self)
- type: 'primary', 'secondary', 'success', 'danger', 'warning', 'info', 'light', 'dark' (default: primary)
- label: button label

### Sub (Subscript)

To create a subscript you can use the `sub` shortcode.

```md
{{< sub >}}Some text to subscript{{< /sub >}}
```

This shortcode supports the following parameters:

- class: any additional class to add to the element

