# cabforum.org website

> [!TIP] 
> For more detailed instructions please see the wiki: https://wiki.cabforum.org/books/forum/chapter/website

## Adding new post such as ballots and minutes

It's easy to add pages, posts or upload files video the online editor provided by GitHub. 

The editor is located at github.dev, this links brings you directly in the directory to create posts such as for ballots and minutes:  
https://github.dev/cabforum/cabforum.org/blob/main/content/posts/

Navigate to the appropiate folder or file using the Explorer. Right click on or in the folder and choose `New file...` or `New folder...` if you post will also includes new attachments. 

Name the file or directory so that it's easy to identify, for example `2024-01-01-ballot-smc00-subject`, use the extention `.md` for files. If you created a directory for your post call the file `index.md`.

> [!IMPORTANT] 
> Always use lowercase filenames and don't include andy spaces or other special characters.

### Preview

To preview your changes right click the filename in the tabs on the top of your screen and click `Open Preview`. You can also press the `CRTL`+`SHIFT`+`V`.

You can drag the tab to the side of your screen to get a live preview, showing the changes directly when working in the document.

### Ensuring well formatted content

To ensure well formatted markdown you can ask the editor to format your document, to do this you press `F1` and select `Format Document`. You can also press `SHIFT`+`ALT`+`F`.

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

### Templates

Some tempaltes can be found in the [archetypes](archetypes) folder.

```md
---
author: Your name
date: 2024-01-01 00:00:00
tags:
# Remove this comment and the lines/tags below that are not applicable
- Code Signing
- Forum
- Network Security
- Server Certificates
- S/MIME
- Ballot
- Minutes
- Face-to-Face
title: Some title
summary: |
  A good summary helps site visitors to find the right content. This could for example state the purpose of the ballot, and is shown in the preview when listing multiple pages. 
type: post
---

## Section title

The page title is included by default, this is the title of the section.


## Formatting

Try to use lists such as:

- One
- Two
    - Sub of two
- Three

Or 

1. One
1. Two
    1. Sub of two
1. Three

Not everything needs to be **bold** or _italic_, but you can use Markdown formatting.

### Links

To create a link you can use the following format [Link title](https://cabforum.org)

### Images

Images can like any other file be uploaded in the same folder (or subfolder) of your post. If your post is not in it's own folder create a folder 'name-of-your-post' and name the post file index.md inside that folder.

Now load images like:

![Example image](image.png)
```

## Shortcodes

Shorcodes are short tags that can be used in Markdown to render content. Hugo comes with a set of built-in shortcodes, see <https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes>. In additon to the built-in shortcodes we have added a few custom shortcodes which can be found in `layouts/shortcodes/` and are described below.

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

### Link to a ballot

Lookup a page with the tag `ballot` and the string `SC000` in the title. Returning a string `SC000` linking to the first matching page.

```
{{< ballot name="SC000" >}}
```
 
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

## Advanced changes

You can make simple changes in the GitHub editor as described above. For more advanced changes you might want to run a local copy of the website.

Some basic git knowledge is required, please check <https://guides.github.com/> to get started from scratch. An editor such as [Visual Studio Code](https://code.visualstudio.com/) can help you to [simplify most of these tasks](https://code.visualstudio.com/docs/editor/github) and help you with editing the content.

1. [Install hugo](https://gohugo.io/getting-started/installing/#quick-install)
2. [Create a fork](https://guides.github.com/activities/forking/#fork) of this repository
3. [Clone your fork](https://guides.github.com/activities/forking/#clone)
2. Run `hugo server -D` in the root directory of your fork
3. Open the shown URL `http://localhost:xxxx/` in your browser to preview your local version
4. Make changes until you are satisfied; the preview will update automatically
5. [Commit and push your changes](https://guides.github.com/activities/forking/#making-changes)
6. [Create a pull request](https://guides.github.com/activities/forking/#making-a-pull-request)

### Setting the version of Hugo to use

The HUGO_VERSION environment variable in `.github/workflows/.env` controls the version of Hugo used for the various Github Actions workflows.
