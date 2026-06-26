# CrossFit Workout Programming Agent Guidelines

**Last Updated:** 28 May 2026  
**Purpose:** Source-of-truth instructions for generating and updating this repo's
weekly and daily CrossFit programming files.

---

## Repository Scope

This repository is markdown-first and currently focuses on:

- `workouts/2026/week_XX/` (weekly workout blocks)
- `README.md` (index of available weeks and source screenshots)
- `guides/` (templates and coaching references)
- `research/` (evidence and method notes)
- `assets/images/week_XX_source.<ext>` (source board screenshots)

When adding a new week, update all of these together:

1. `workouts/2026/week_XX/README.md`
2. `workouts/2026/week_XX/monday.md` through `friday.md`
3. `README.md` week list entry (with screenshot link if available)
4. `assets/images/week_XX_source.<ext>` (if source image exists)

---

## Non-Negotiable Class Constraints

1. **Single group start** (no heat splits by default).
2. **Hard 60-minute cap** with explicit timing.
3. **Readable on mobile** (short headers, short bullets, no tables).
4. **Stimulus-preserving scaling** (load, then volume, then complexity).
5. **Every conditioning piece includes an estimate**:
   - For Time: `Time cap: N min (expected: X-Y min)`
   - AMRAP: `Expected rounds: X-Y (...)`
   - EMOM/intervals: `Target: ...` with intended work-rest behavior.

---

## Gym Conventions

- **Lap run:** 1 lap = 350 m. Write `1 Lap Run` in workouts unless a different distance is explicitly stated.

---

## Daily File Structure (`monday.md` etc.)

Use this order unless there is a clear reason not to:

1. `# Day (DD/MM/YYYY)`
2. `**Setup**` with:
   - Equipment
   - Timing
   - Stimulus (1 sentence)
   - Scaling A
   - Scaling B
   - Logistics
   - Top Cues (external, action-focused)
3. `## Warmup (8-12 min)` with RAMP rounds:
   - R1 RAISE (2:00 easy)
   - R2 ACTIVATE (1:30 moderate)
   - R3 POTENTIATE (1:00 hard)
4. `## Post-Warmup Mobility (60-90s)`
5. `## Strength / Skill` (optional)
6. `## Reset Window` (optional, usually 3-5 min)
7. `## Movement Prep` (2-5 min, before main conditioning)
8. `## Main Conditioning`
9. `## Cooldown` or `## Cooldown & Debrief` (2-4 min)

Notes:
- Keep warmups implement-light (usually 0-1 extra implement).
- Prefer no barbell in warmup; rehearse barbell in Movement Prep.
- Use standard movement names; explain uncommon drills plainly.

---

## Warmup, Prep, and Coaching Rules

**RAMP intent by round:**
- R1: raise temperature and breathing.
- R2: rhythm/coordination specific to the day.
- R3: fast turnover and neural readiness, not fatigue.

**Mobility:**
- 2-3 positions max, 30-45s each side/position.
- Keep it targeted and short; avoid long static blocks pre-workout.

**Movement Prep:**
- Use empty bar/light load and crisp low reps.
- Rehearse first demanding movement patterns before the metcon.

**Cueing:**
- External cues only, one idea at a time, short phrases.
- Prefer action/outcome language over body-part instructions.

---

## Scaling Hierarchy

Apply in this order:

1. **Load** (preserve movement pattern and intended pace)
2. **Volume** (preserve time domain)
3. **Complexity / ROM** (preserve primary stimulus safely)

Default to 2 tiers (`Scaling A`, `Scaling B`). Add a third tier only when it
materially improves safety or preserves stimulus in a mixed group.

---

## Weekly README Standard (`workouts/2026/week_XX/README.md`)

Expected order:

1. `# Week XX (...)`
2. `## Source Screenshot` (if image exists)
3. `## Overview`
4. `## Daily Workouts` (Mon-Fri links with one-line descriptors)
5. `## Lesson Planning Notes`
6. Optional: `## Equipment Needs`, `## Focus Areas`, `## Scaling Notes`

Use relative day links (`monday.md`, not absolute paths) for GitHub mobile.

Source screenshot block format:

```md
## Source Screenshot

[Open source screenshot](../../../assets/images/week_XX_source.<ext>)

![Week XX source screenshot](../../../assets/images/week_XX_source.<ext>)
```

---

## Root README Maintenance

When a week is added or revised:

- Add/update the entry under `## Current Programming` in `README.md`.
- Match the date range and week number.
- Include the screenshot link when available.
- Keep naming consistent with the folder (`week_XX`) and asset filename.

---

## Quality Checklist Before Finalizing

- Timeline fits a real 60-minute class.
- Warmup clearly maps to the day's demands.
- Bottlenecks/equipment flow are solved on paper.
- Scaling preserves stimulus (not just "make it easier").
- Main piece has explicit estimate format.
- File reads cleanly on a phone.
- Weekly and root README references are synchronized.

---

## Canonical References

- `guides/CrossFit_Workout_Complete.md`
- `guides/CrossFit_Movement_Warmups.md`
- `guides/Coach_Quickguide.md`
- `guides/Weekly_README_Block_Template.md`
- `research/RAMP_Meta_Annotated.md`
- `research/PAP_PAPE_Research.md`
- `research/Functional_Fitness_Lesson_Planning_Reference.md`

If guidance conflicts, prefer this file plus the most recent week format in
`workouts/2026/`.

---

**Maintained by:** Tomasz Wojcikowski
