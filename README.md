# IFCoT Project Page

Static site for **IFCoT: Insights Fusion Chain of Thought for Multimodal Reasoning in LLMs** (IEEE TCSVT 2026).

## Local preview

```bash
cd ifcot-page
python3 -m http.server 8000
# open http://localhost:8000
```

## Deploying to GitHub Pages

1. Create a new repo (e.g. `JXLiu-AI/ifcot-page`) — or push to the `gh-pages` branch of `JXLiu-AI/IFCoT`.
2. Push this directory's contents to the repo root.
3. In **Settings → Pages**, set source to `main` branch (or `gh-pages`), folder `/ (root)`.

```bash
cd ifcot-page
git init && git add . && git commit -m "Initial project page"
git branch -M main
git remote add origin git@github.com:JXLiu-AI/ifcot-page.git
git push -u origin main
```

The page will be live at `https://JXLiu-AI.github.io/ifcot-page/`.

## TODO before going public

- Fill the `Paper` button `href` in `index.html` (currently `#`) with the arXiv / IEEE Xplore URL once available.
- Replace teaser / pipeline / framework figures in `static/images/` if higher-resolution PDFs become available — they were converted from the camera-ready PDF figures at 180 dpi via `pdftoppm`.
- (Optional) Drop a `favicon.svg` of your own — the current one is a placeholder copied from a prior project.
