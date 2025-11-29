---
layout: base
title: "Coach FAQ: Leading a Great Kata"
permalink: /coaches/faq/
eleventyExcludeFromCollections: true
description: "Practical guidance for Kata Camp coaches—what a kata is, how it differs from workshops, how to prepare, and how to run an effective session."
---

# Coach FAQ: Leading a Great Kata

## What is a kata?
A kata is a guided, hands-on practice inspired by martial arts. Instead of only hearing about a concept, attendees repeat the steps you demonstrate until the skill becomes natural. It’s learning by doing—together.

## How is a kata different from a regular workshop?
- **Narrow and deep**: One focused exercise, completed end‑to‑end.
- **Done together**: You perform a step; attendees repeat it right away.
- **Deliberate practice**: The goal is fluency, not breadth of topics.
- **Lower cognitive load**: Fewer moving parts; more time on fundamentals and decision‑making.

## How should I prepare?
- **Clarify the goal**: One sentence that defines success (e.g., “Roll back to last working version, then change direction safely”).
- **Define prerequisites**: List tools and versions explicitly (editor, runtime, package manager, Docker if needed). Don’t assume anything.
- **Share starting materials**: Provide a repo or zip with branches/tags, sample data, and a short README.
- **Timebox the flow**: Plan 30–40 minutes of material for a 45–60 minute slot; leave 5–10 minutes for Q&A.
- **Script checkpoints**: 5–7 steps, each independently verifiable (a test passes, a command output, a diff, a UI change).
- **Plan for variance**: Decide what you’ll do if 1–2 people get stuck (see facilitation tips below).
- **Technical dry‑run**: Test on a clean machine/container or fresh clone; verify your instructions match reality.

## How do I lead the session?
1. **Welcome (3–5 min)**
   - Who you are, what you do, and why this skill matters in your real work.
   - Ask for a quick show of hands or very brief intros only if the group is ≤8 and time allows.
2. **Set the goal (1 min)**
   - Example script: “Today we’ll reproduce a common rescue: I’m stuck with bad code generation. We’ll roll back to the last known good version and change direction—step by step—so we can move forward safely.”
3. **Run the loop**
   - Demo one step on your screen.
   - Pause for attendees to repeat.
   - Verify with a checkpoint (test passes, log output, visual diff).
   - Briefly explain the reasoning behind the step; keep theory tight and relevant.
   - Repeat until done.
4. **Wrap‑up and discussion (5–10 min)**
   - Summarize the key decisions and trade‑offs.
   - Invite questions and “how would this apply to X?”
   - Suggest next steps or variants they can try at home.

## Do I need to prepare slides?
Usually, no. It’s perfectly fine to share your IDE or terminal and narrate your thinking. We’re software engineers—we learn best from code, diffs, tests, and commands. If you use slides, keep them to 1–3 brief setup or recap slides.

### Facilitation tips when people fall behind
- **Keep the group moving**: It’s okay to continue while 1–2 people catch up; otherwise you risk losing everyone.
- **Provide landmarks**: Announce branch names, file paths, and commands clearly. Paste critical snippets in chat.
- **Offer reset points**: Provide tags/branches per checkpoint so attendees can jump forward if needed.
- **Pair briefly**: If there’s a co‑coach or advanced attendee, ask them to help the stuck person for a minute.

## What usually goes wrong—and how to avoid it
- **Too much material; rushed delivery** → Cut scope. Add depth by explaining foundations or historical context instead.
- **Too basic; attendees disengage** → Assume attendees are as smart as you; pick a problem that’s simple but non‑trivial in judgment.
- **Waiting for everyone at every step** → Use reset points and keep momentum; help lagging attendees during checkpoints.
- **Turning into a slide talk** → Minimize slides. Optimize your demo environment and spend time in editor/terminal.

## What usually goes right
- **“Oh, I didn’t think about it that way” moments** that change mental models.
- **New tactics for spotting and solving issues**—checklists, diffs, tests, logs.
- **Good rapport**—you narrate decisions, trade‑offs, and small habits that compound.

## I’m not an expert in everything. Is that OK?
Yes. Community events thrive on sharing practical slices of your real work. Teach what you do know; learn from other sessions what you don’t. Honesty builds trust.

## Example flow you can adapt (sketch)
- Step 0: Clone the repo and checkout `start`.
- Step 1: Reproduce the failing code generation; capture the error output.
- Step 2: Checkout `last-working` tag; verify tests/command now pass.
- Step 3: Create a new branch; apply the minimal change in a safer direction.
- Step 4: Re‑run code generation; confirm output and tests.
- Step 5: Summarize the decision points; discuss alternatives.

## Day‑of checklist
- Laptop on power; notifications off; font size large enough.
- Repo/materials downloaded; tokens/keys prepared or mocked.
- Terminal/editor theme with high contrast; zoom tested on projector/stream.
- Verify every checkpoint works from a clean state.
- Backup plan: branch per checkpoint; zip file; or codespaces/devcontainer.

## Want kata ideas?
See curated ideas at `/workshop/kata-ideas/`.
