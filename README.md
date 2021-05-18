# onmetal.github.io

This is the landing page of the onmetal project: <https://onmetal.github.io>

## Adding a new Blog Post

In order to work with this project you need to install the `hugo` cli. An instruction on how to do that can be found [here](https://gohugo.io/getting-started/installing/).

```shell
# adjust the urls in case of a fork
git clone git@github.com:onmetal/onmetal.github.io.git
cd onmetal.github.io
git checkout -b my_awesome_blog_post
# write your article
hugo new posts/my-first-post.md
git add .
git commit -m "my awesome post"
git push origin my_awesome_blog_post
```

Now create a PR in Github containing your changes.

### Storing Images

One note on where to store image or other post related content. Please put your post related images under `/content/posts/images`.

```shell
├── archetypes
├── config.toml
├── content
|   └── post
|     ├── your-post.md
|     ├── images
|     |  ├── your-image.png
```

They can be then referenced via

```shell
![your image](/post/images/your-image.png)
```

in your corresponding article.

## Testing locally

Running the site locally can be done via

```shell
make start-dev # this will include draft posts
make start     # exclude draft posts
```

`hugo` does an auto-rebuild of your content so there is no need to restart the local server.
