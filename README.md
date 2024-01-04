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
