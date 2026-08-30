# Portfolio site — setup & deploy instructions

This is a Jekyll site (same setup as the shaunwu25.github.io example), ready to host for free on GitHub Pages.

## 1. Create the repo

1. On GitHub, create a new repository named exactly: `YOUR-GITHUB-USERNAME.github.io`
   (replace with your actual GitHub username — this exact naming is what makes GitHub Pages serve it automatically)
2. Upload all files in this folder to that repository (drag-and-drop via the GitHub web UI works fine, or use `git`).

## 2. Turn on GitHub Pages

1. In the repo, go to **Settings → Pages**.
2. Under "Build and deployment", set Source to **Deploy from a branch**, branch `main`, folder `/ (root)`.
3. Save. Your site will build automatically and be live at `https://YOUR-GITHUB-USERNAME.github.io` within a minute or two.

## 3. Before you publish — fill in the placeholders

- `_config.yml` — replace the LinkedIn/GitHub URLs with your real ones.
- `about.md` — add your real email, LinkedIn, and a link to your CV (see below).
- Each file in `_posts/` — replace the bracketed `[...]` placeholder text with your real project descriptions, and add real screenshots.

## 4. Add images

For each project, drop your screenshots into the matching `assets/` subfolder:
- `assets/draabebroen/`
- `assets/e45/`
- `assets/femern/`

Name the main image `cover.jpg` (or update the `image:` line in the post's front matter to match whatever filename you use). Add more images inside the post body with standard Markdown:

```
![description](/assets/draabebroen/screenshot2.jpg)
```

## 5. Add your CV

Drop your CV file into `assets/` (e.g. `assets/Anna_Ullersted_Rasmussen_CV.pdf`) and it will be linked from the About page automatically once you update the link there.

## 6. Preview locally (optional)

If you want to preview before pushing:
```
gem install bundler jekyll
bundle init
echo 'gem "github-pages", group: :jekyll_plugins' >> Gemfile
bundle install
bundle exec jekyll serve
```
Then open `http://localhost:4000`. This step is optional — GitHub Pages will build it automatically once pushed, even without local preview.
