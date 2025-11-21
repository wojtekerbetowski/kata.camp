## Kata Camp — Engineer Onboarding and Agent Guide

### What this project is
- **Kata Camp**: community series of practice-first workshops for software engineers.
- Focus: hands-on katas, modern engineering practices, and AI-assisted workflows.
- First edition highlighted on the site as **AI Kata Warsaw** with registration via Evenea and partnership with GDG Warsaw.

### Tech stack
- **Static site generator**: Eleventy (11ty) 2.x with Nunjucks templates
- **Assets**: Webpack 5, Babel, PostCSS (autoprefixer, preset-env, cssnano)
- **Content**: Markdown/Nunjucks in `src/`, Eleventy collections for posts
- **Output**: generated to `public/`
- **Node**: built/run in Docker using `node:20-bookworm` image

### Local development (Docker)
Runs Eleventy dev server and webpack watchers inside Docker, bound to 0.0.0.0:8080.

```bash
# default: serves on http://localhost:8080in/docker-dev.sh

# override port (still maps to Eleventy 8080 inside container)
PORT=5173 bin/docker-dev.sh
```

Notes:
- File changes under your workspace are watched thanks to polling env vars.
- Eleventy server host/port is configured in `.eleventy.js` (host `0.0.0.0`, port `8080`).

### Production build and smoke test (Docker)
- **Build** (installs deps and runs `yarn build`, output to `public/`):

```bash
bin/docker-build.sh
```

- **Smoke test** (verifies the site builds and key strings are present):

```bash
bin/test.sh
```

### Cloudflare Pages deployment (GitHub-integrated)
- Deployed on **Cloudflare Pages** integrated with GitHub.
- **Build command**: `yarn build`
- **Output directory**: `public`
- `wrangler.jsonc` sets `pages_build_output_dir: public`.

Workflow:
- **Pull Request (preview)**: pushing commits to a PR branch triggers Cloudflare Pages to publish a preview URL on the PR.
- **Main branch (production)**: merging/pushing to `main` triggers a production deploy.
- Manual (rarely needed):

```bash
# only if you need to publish local build outputs manually
npx wrangler pages deploy public
```

### Day-to-day workflow for changes
1. Implement edits locally.
2. Ask for local review and provide run steps:
   - Dev: `bin/docker-dev.sh` (open the local URL)
   - Build/test: `bin/docker-build.sh && bin/test.sh`
3. Push commits to a **PR branch** → reviewer uses the Cloudflare Pages preview link on the PR.
4. After approval, merge to **main** for production deployment.

### Useful paths
- **Content**: `src/index.md`, `src/about.md`, blog posts in `src/posts/*.md`
- **Layouts**: `src/layouts/*.njk`
- **Data and nav**: `src/data/site.json` (header links, metadata)
- **Images**: `src/images/`
- **Styles/JS entries**: `src/css/main.css`, `src/js/main.js`

### Quick reference
- **Dev**: `bin/docker-dev.sh`
- **Build**: `bin/docker-build.sh`
- **Test**: `bin/test.sh`
- **Entry points**: `.eleventy.js`, `webpack.config.js`, `postcss.config.js`, `wrangler.jsonc`
