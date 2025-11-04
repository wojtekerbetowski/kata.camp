# Kata Camp ? Engineer Onboarding Notes

## What this is
- Static website built with Eleventy (11ty), based on a streamlined Eleventy Duo theme.
- Primary goals: share Kata Camp mission, list events, publish short blog posts.

## Build and test (Docker-only)
- Production build (outputs to `public/`):
  - `bin/docker-build.sh`
- Smoke test (checks key strings in the generated site):
  - `bin/test.sh`

## Local development (hot reload in Docker)
- Dev server (Eleventy + webpack watch), binds to 0.0.0.0:8080:
  - `bin/docker-dev.sh`
  - Open http://localhost:8080
  - Optionally set a different port: `PORT=5173 bin/docker-dev.sh`

## Deploy ? Cloudflare Pages
- Build command: `yarn build`
- Output directory: `public`
- `wrangler.jsonc` is present for Pages; avoid `wrangler deploy` (Workers). If needed, use `npx wrangler pages deploy public`.

## Content structure
- Home: `src/index.md` (mission, "Upcoming Events" anchor `#events`)
- About: `src/about.md` (organisers in plain markdown)
- Blog list page: `src/blog.njk` (lists `collections.posts`)
- Blog posts: `src/posts/*.md` (front matter `layout: post`, `title`, `date`, optional `description`, `tags`)
- Site data / nav: `src/data/site.json`
- Images: `src/images/` (social image + banner: `banner.png`)

## Styling
- CSS entry: `src/css/main.css` imports component styles.
- Typography/variables: `src/css/typography.css`, `src/css/variable.css`.
- About page styles: `src/css/about.css`.
- JS entry (minimal): `src/js/main.js`.

## Eleventy configuration
- `.eleventy.js`: sets input/output dirs, plugins, and dev server options (`host: 0.0.0.0`, `port: 8080`).

## Navigation (header links)
- Configured in `src/data/site.json` under `headerLinks`.
- Current items: Blog (`/blog`), Events (`/#events`), Tickets (Evenea external), About (`/about`).

## Social and SEO
- Default social image: `/images/banner.png` (set in `src/data/site.json`).
- Favicon: `src/images/favicon.ico`.

## Dark mode
- Not implemented. Theme uses CSS variables, so adding it is straightforward via `prefers-color-scheme` or a toggle.

## Known pitfalls / decisions
- Use Docker for all builds/dev (no local Node install required).
- Do not use `wrangler deploy` (Workers). For Pages, either rely on CF build or use `wrangler pages deploy public`.
- The original theme?s blog scaffolding and demo posts were removed; only `posts.json` remains to keep Eleventy collections working.
- The footer attribution and Twitter links were removed (`showFooterAttribution: false` in `site.json`).
- Avoid using Markdown heading anchors like `## Title {#id}` with Nunjucks if you hit template parsing errors; plain HTML headings or standard markdown headings are safe.

## Useful commands
- Build: `bin/docker-build.sh`
- Test: `bin/test.sh`
- Dev: `bin/docker-dev.sh`

## Repo hygiene
- History was squashed once; normal commits since then. Main branch is `main`.
- Remote: `origin` ? `https://github.com/wojtekerbetowski/kata.camp.git`
