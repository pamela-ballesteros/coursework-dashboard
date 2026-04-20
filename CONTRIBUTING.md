# How to add a course

A quick checklist for future-you.

## 1. Create the course folder

```bash
cp -r courses/_TEMPLATE courses/NN-course-slug
```

Where:
- `NN` is the course number (01, 02, …) — keeps folders sorted
- `course-slug` is a short, lowercase, hyphenated name (e.g. `03-research-methods`)

## 2. Drop in materials

- **Syllabus** → `syllabus/` (PDF or markdown)
- **Notes** → `notes/` (one markdown file per topic, or a single `notes.md`)
- **Assignments** → `assignments/NN-slug/` with the prompt, your work, and a short `README.md`
- **Extra readings / links / datasets** → `resources/`

## 3. Fill in the course README

Open `courses/NN-course-slug/README.md` and replace the placeholders. The sections that matter most for future reference:

- **Summary** — write this for yourself 2 years from now
- **Key concepts** — 5–8 is plenty
- **Takeaways** — what actually stuck

## 4. Update the main dashboard

Two things to update:

**a) The top-level `README.md`** — add/edit the row in the Courses table.

**b) `index.html`** — find the `courses` array in the `<script>` block and add a new object for the course. The existing MBAN 5560 entry is the template to copy. Fields you need:

- `id` — matches the folder name
- `number`, `code`, `name`, `term`, `instructor`, `level`, `focus`, `summary`
- `tags` — short chips shown on the card
- `categories` — which filter chips the course belongs to (e.g. `["fundamentals", "deep-learning"]`)
- `keyConcepts` — array of `{ term, desc }`
- `tools` — list of packages/tools
- `labs` — array of `{ n, title, theme, cat, qmd, html }`
- `readme` — relative path to the course's README.md

## 5. Commit

```bash
git add .
git commit -m "Add course NN: [name]"
git push
```

## Tips

- Keep assignment folders self-contained — prompt, work, short README. That way each one is a mini-portfolio piece.
- If you're unsure whether to include a file, include it. You can always thin out later; you rarely re-upload.
- Use the `resources/` folder for things you want to remember but didn't produce yourself (papers, links, cheat sheets).
