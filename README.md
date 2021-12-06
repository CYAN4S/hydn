# hydn

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "hydn"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: hydn
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install hydn
```

## Contents At-A-Glance

Hydn has been scaffolded by the `jekyll new-theme` command and therefore has all the necessary files and directories to have a new Jekyll site up and running with zero-configuration.

### Layouts

Refers to files within the `_layouts` directory, that define the markup for your theme.

 - `default.html` &mdash; The base layout that lays the foundation for subsequent layouts. The derived layouts inject their contents into this file at the line that says ` {{ content }} ` and are linked to this file via 
 - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts
 - `post.html` &mdash; The layout for your posts.

 ##### *Main Heading and Content-injection*

 The *home* layout will inject all content from your `index.md` / `index.html` **before** the **`Posts`** heading. This will allow you to include non-posts related content to be published on the landing page under a dedicated heading. *We recommended that you title this section with a Heading2 (`##`)*.

Usually the `site.title` itself would suffice as the implicit 'main-title' for a landing-page. But, if your landing-page would like a heading to be explicitly displayed, then simply define a `title` variable in the document's front matter and it will be rendered with an `<h1>` tag.

##### *Post Listing*

It will be included when your site contains one or more valid posts or drafts.

### Includes

Refers to snippets of code within the `_includes` directory that can be inserted in multiple layouts (and another include-file as well) within the same theme-gem.

  - `comments.html` &mdash; Code to markup disqus comment box.
  - `footer.html` &mdash; Defines the site's footer section.
  - `google-analytics.html` &mdash; Inserts Google Analytics module (active only in production environment).
  - `header.html` &mdash; Defines the site's main header section. By default, pages with a defined `title` attribute will have links displayed here.
  - `navigation.html` &mdash; Defines the site's navigation(menu) bar. It will be automatically add more menu when you have more linked category. 
  - `postlist-item.html` &mdash; Defines the post's item when the posts are listed. 
  - `search.html` &mdash;  Code to search box using tipuesearch.


### Sass

Refers to `.scss` files within the `_sass` directory that define the theme's styles.

  - `hydn/about_layout.scss` &mdash;  Sass partial that defines the blog's About Page' style for layout.
  - `hydn/code.scss` &mdash; Sass partial that defines syntax highliting styles for code in your post.
  - `hydn/header.scss` &mdash; Sass partial for resets and defines styles for header
  - `hydn/layout.scss` &mdash; Sass partial for resets and defines each layout's styles for various HTML element
  - `hydn/main.scss` &mdash; Sass partial for resets and defines main styles for various HTML element
  - `hydn/tagpost.scss` &mdash; Sass partial for resets and defines styles for tagpost's element
  - `hydn/typo.scss` &mdash; Sass partial for resets and defines post styles when you get the post.
  

### Assets

Refers to various asset files within the `assets` directory.

  - `assets/css/style.scss` &mdash; Imports sass files from within the `_sass` directory and gets processed into the theme's
    stylesheet: `assets/css/styles.css`.
  - `assets/img` &mdash; Image files for our theme. 
  -`assets/tipuesearch` &mdash; For compose search box in our theme.


### Plugins

-[`jekyll-seo-tag`](https://github.com/jekyll/jekyll-seo-tag) plugin is preinstalled to make sure your website gets the most useful meta tags. See [usage](https://github.com/jekyll/jekyll-seo-tag#usage) to know how to set it up.

-[`jekyll-gist`](https://github.com/jekyll/jekyll-gist) plugin is preinstalled to add gist. See [usage](https://github.com/jekyll/jekyll-gist#usage) to know how to set it up.

-[`jekyll-paginate`](https://github.com/jekyll/jekyll-paginate) plugin is preinstalled to show your posts more useful.








## Usage

Have the following line in your config file:

```yaml
theme: hydn
```


### Customizing templates

To override the default structure and style of hydn, simply create the concerned directory at the root of your site, copy the file you wish to customize to that directory, and then edit the file.

The site's default CSS has now moved to a new place within the gem itself, [`assets/css/style.scss`](assets/css/style.scss).

-------------------------CSS 바꾸는 방법 -----------------
In hydn, if you only need to customize the colors of the theme, refer to the subsequent section on skins. To have your
*CSS overrides* in sync with upstream changes released in future versions, you can collect all your overrides for the Sass
variables and mixins inside a sass file placed at `_sass/minima/custom-variables.scss` and all other overrides inside a sass file
placed at path `_sass/`.
-------------------------CSS 바꾸는 방법 -----------------

You need not maintain entire partial(s) at the site's source just to override a few styles. However, your stylesheet's primary
source (`assets/css/style.scss`) should contain the following:

  - Front matter dashes at the very beginning (can be empty).
  - Directive to import a skin.
  - Directive to import the base styles (automatically loads overrides when available).

Therefore, your `assets/css/style.scss` should contain the following at minimum:

```sass
---
---

@import "hydn/main";
```


### Enabling comments (via Disqus)

Optionally, if you have a Disqus account, you can tell Jekyll to use it to show a comments section below each post.

To enable it, add the following lines to your Jekyll site:

```yaml
disqus: True
disqus_shortname: "hydn"
```

You can find out more about Disqus' shortnames [here](https://help.disqus.com/installation/whats-a-shortname).

Comments are enabled by default and will only appear in production, i.e., `JEKYLL_ENV=production`

If you don't want to display comments for a particular post you can disable them by deleting`{% include comment.html %}` to that post.html's bottom.

### Enabling Searchbox (via tipuesearch)

Optionally, you can search your post via search box.

To enable it, add the following lines to your Jekyll site:

```yaml
tipue_search:
     include:
         pages: false
         collections: []
     exclude:
         files: [search.html, index.html, tagpost.html]
         categories: []
         tags: []
```
In this code, `pages: false` means that you don't want to search genera html pages for focusig post's search. 
And via `exclude`, you can choose file, categories and tags that you don't want to show when you search. 


### Post Author

From `hydn`, `page.author` is expected to be a mapping of attributes from _authors directory. 
If you want to add more registered author, you can add `authorname.html` files in _author directory.  If you add author, you can get author's personal introduce page. Otherwise, you can just display author's name in your post. 

Here is example.
```yaml
authors: [ann, Song Kim]
```
In this code, ann is the registered author, but Song Kim is not. So when you make is post, only ann has her own introduce page.


### Enabling Google Analytics 구글 크롤링 할 수 있도록 하는 법

To enable Google Analytics, add the following lines to your Jekyll site:

```yaml
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `hydn.gemspec` accordingly.



## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
