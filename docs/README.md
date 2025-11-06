# GitHub Pages site for AZEquiScope

This `docs/` folder is used to publish a GitHub Pages site that hosts the interactive map HTML output from this project.

How it works

- Place your generated HTML map file in this folder and name it `map.html` (or replace `index.html` with the map file). The `index.html` in this folder currently embeds `map.html` via an iframe.
- In your repository Settings → Pages, set the source to the `main` branch and the `/docs` folder. GitHub Pages will then serve the site at `https://<your-username>.github.io/AZEquiScope/`.

Quick steps

1. Run the notebook or script to generate the interactive HTML (e.g., `map.html`).
2. Copy the HTML into the `docs/` folder. You can use the helper script at `scripts/copy_html_to_docs.sh`.
3. Commit & push the change. In GitHub, enable Pages from the repository Settings (branch: `main`, folder: `/docs`).

Notes

- If your map references external resources, make sure relative paths are preserved when copying into `docs/`.
- For a fully automated publish pipeline (CI), we can add a GitHub Action that copies the latest HTML into `docs/` on push — tell me if you want that.
