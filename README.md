# HPCTracker

**An unofficial planner and progress log for the Independent Characters Hobby Progress Challenge.**

Plan a unit for every month of the challenge, keep before and after photos of each one, write
painting notes, and let the tracker handle the deadlines and the bonus-entry rules. It runs
entirely on your own computer: no account, no cloud service, and nothing sent anywhere.

> HPCTracker is a fan-made tool. It is not affiliated with or endorsed by The Independent
> Characters. Submitting your entries to the challenge is still something you do yourself —
> this just keeps your own record.

---

## Contents

- [What it does](#what-it-does)
- [Requirements](#requirements)
- [Getting started](#getting-started)
- [Using the tracker](#using-the-tracker)
- [The challenge rules it follows](#the-challenge-rules-it-follows)
- [Your data](#your-data)
- [Troubleshooting](#troubleshooting)
- [Updating](#updating)
- [For contributors](#for-contributors)

---

## What it does

- **Year Board.** All twelve challenge months at a glance. Each shows the planned unit, its bonus
  category, before/after thumbnails, status, and what's due next.
- **Deadline tracking.** Counts down to the two monthly deadlines in Pacific time, as the organisers
  set them. Months turn magenta as a deadline approaches and pink once it has passed.
- **Bonus rules enforced.** One bonus per month, each category only once, six at most. Categories
  already taken are greyed out, with the month that used them.
- **Photos.** Drag images in, pick them with a file browser, or paste with `Ctrl+V`. Double Up!, Just
  Get It Done!, Reset the Mechanism and Hobby Jam get the extra photo slots their rules call for.
- **Notes.** Recipes, paints used, what to try next time.
- **Backlog.** List the unpainted models you own, then drop one onto a month in two clicks.
- **Stats.** Entries earned toward the maximum of 18, months completed, and your current streak.
- **Name/date card.** The rules require one in every photo. Show it on a phone or tablet next to the
  model, or save it as a PNG to print.
- **Saves automatically.** Plans go into a `data.json` file and photos into a `photos` folder, right
  next to the app. Back it all up by copying the folder.

## Requirements

- **Python 3.8 or newer.** No extra packages; the tracker uses only Python's standard library.
  - Windows: install it from the [Microsoft Store](https://apps.microsoft.com/search?query=python) or
    [python.org](https://www.python.org/downloads/).
  - macOS and Linux usually include `python3` already.
- **A current web browser:** Chrome, Edge, Firefox or Safari.

## Getting started

### 1. Get the files

Either:

- Click **Code → Download ZIP** on this page and unzip it somewhere you'll keep it, for example
  `Documents\HPCTracker`; or
- clone it:

  ```bash
  git clone https://github.com/D-I-Robertson/HPCTracker.git
  ```

Keep the folder somewhere permanent. **Your plans and photos will be saved inside it.**

### 2. Start the tracker

**Windows:** double-click **`Start Tracker.cmd`**.

**macOS / Linux:** open a terminal in the folder and run:

```bash
python3 server.py
```

A small console window opens and your browser opens the tracker at
`http://127.0.0.1:8787/hobby-progress-challenge.html`.

**Leave that small window open while you use the tracker.** Close it (or press `Ctrl+C` in it) when
you're done. Closing the browser tab does not stop it; starting it again while it's already running
just reopens the page.

### 3. Plan your first month

Click the first month on the Year Board, type in the unit you plan to paint, and you're away.

> **Don't open `hobby-progress-challenge.html` by double-clicking it.** It will still load, but a
> web page opened straight from disk isn't allowed to write into its own folder, so your work would
> go into the browser's internal storage instead. The tracker shows an amber banner when this
> happens. Close the tab and use `Start Tracker.cmd` instead.

## Using the tracker

### Year Board
Your home screen. Every month is a card; click one to open it. The current month is outlined in
blue. The coloured stripe along the top of each card is decoration: it steps through the palette
from October to September.

### A month
- **The plan:** unit name, game system or army, unit type, and status (*Planned*, *In progress*,
  *Complete*, *Missed*, *Skipped*).
- **Bonus entry:** pick a category. Anything you can't choose is greyed out and says why. Tick
  **Bonus earned** once you've met its requirements and submitted it.
- **Photos:** a *Before* box (unpainted, primed or basecoated) and an *After* box (finished). Drag
  images in, use **Add…**, or click a box and paste with `Ctrl+V`. Hover a photo to view, save or
  delete it.
- **Notes:** free text, saved as you type.
- **Name card:** the button in the header shows the unit name and today's date for your photos.
- Use **‹ ›** at the bottom to step between months.

### Bonuses
All fourteen categories with their rules, showing which you've earned, which are planned for a
month, and which are still available. The counter shows how many of your six you've used.

### Backlog
Add the units waiting on your shelf. **Plan into…** copies one onto a month and opens it.

### Stats
Your entries toward the maximum of 18, months completed, streak, photo count, and a
month-by-month table.

### Data
Where your data is stored, backup and restore, the challenge dates setting, and **Erase all data**.

## The challenge rules it follows

The tracker is set up for **The 2027 Hobby Progress Challenge**, the 2026/27 edition:
**1 October 2026 – 30 September 2027**.
Full rules: <https://theindependentcharacters.com/blog/the-2027-hobby-progress-challenge/>

**Each month:**

| Deadline | What |
|---|---|
| **10th, 23:59 Pacific** | Photo of the unit unpainted, primed or basecoated, with a name/date card |
| **Last day of the month, 23:59 Pacific** | Photo of the finished unit, with a name/date card |

Deadlines follow US daylight saving automatically. Miss a month and you lose that month's entry,
but the rules let you finish the unit the next month, so the month stays editable.

**Entries:** one per completed month (12 max) plus up to six bonus entries, for **18 maximum**.
Completing all twelve months puts you in a special prize pool.

**The fourteen bonus categories**: one per month, each usable once, six in total:

1. Vehicle, Behemoth, or Cavalry Type Unit
2. Battleline Unit
3. Character
4. Monstrous Creature / Dreadnought
5. Titanic Month (Knight-sized)
6. Flyer Unit
7. Terrain Set
8. Display Board
9. Double Up! — two units in one month
10. Reset the Mechanism — before/after of your workspace
11. Just Get It Done! — finish two units that were no more than 75% done
12. You're in the Army Now! — a playable 2000-point force (40K, The Old World, AoS or Horus Heresy)
13. Hobby Jam — paint alongside someone else, with a screenshot as evidence
14. Ebay Rescue — strip and repaint an older model

Always check the official rules for the final word.

## Your data

Everything is saved automatically into the tracker's own folder:

| File | Contents |
|---|---|
| `data.json` | Your plan, statuses, bonus choices, notes and backlog. Plain text. |
| `data.json.bak` | A copy of `data.json` from the last time you started the tracker |
| `photos/` | Your photos at full size, named by month and slot, e.g. `2026-10_main_before_….jpg` |
| `photos/thumbs/` | Small previews used by the Year Board |

**Backing up** means copying the whole folder. If it lives in a OneDrive, iCloud or Dropbox folder,
it's already backed up.

**Moving to another computer:** copy the whole folder across and start it there.

**Undoing a bad session:** close the tracker, delete `data.json`, and rename `data.json.bak` to
`data.json`.

**Single-file backups:** *Data → Export backup file* writes everything, photos included, into one
`.hpcbackup.json` file. *Import backup file* restores it, replacing what's there.

### Privacy

- The tracker's helper (`server.py`) only listens on `127.0.0.1`, so nothing outside your computer
  can connect to it.
- It rejects requests that don't come from a page on your own machine, and only ever writes inside
  its own folder.
- It makes no internet connections, and neither does the page: no fonts, scripts, analytics or
  services are loaded from anywhere.

> **If you fork or contribute to this repository,** your `data.json` and `photos/` are listed in
> `.gitignore` so they aren't committed by accident. Keep it that way. They're your personal
> record, and this repository is public.

## Troubleshooting

**The badge in the top-right says "Not saving".**
The small tracker window was closed. Run `Start Tracker.cmd` again and **keep the browser tab
open**. It keeps retrying and will say *"Saving again — nothing was lost"* once it catches up. If you
try to close the tab while it can't save, the browser asks you first.

**An amber banner says "Not saving to the tracker folder".**
The page was opened directly instead of through the launcher. Close it and use `Start Tracker.cmd`.
Anything you entered in that tab can be brought across with *Data → Export*, then *Import* in the
properly started tracker.

**"Python 3 is needed…" or the Microsoft Store opens.**
Python isn't installed. Install it, then run `Start Tracker.cmd` again.

**Port 8787 is already in use.**
The tracker picks the next free port automatically. To choose one yourself:
`python server.py --port 9000` (or `"Start Tracker.cmd" --port 9000` from a command prompt).

**I don't want a browser tab to open automatically.**
Run `python server.py --no-browser` and open the address it prints.

**Photos I deleted in File Explorer still appear.**
Refresh the page. Each time it loads, it drops any photo whose file no longer exists. (Deleting
photos from inside the tracker is tidier.)

**"Open the tracker folder" does nothing on macOS or Linux.**
That button is Windows-only. Open the folder in your file manager instead.

## Updating

Your data lives in `data.json` and `photos/`, separate from the app. To update:

1. Close the tracker.
2. Replace `hobby-progress-challenge.html`, `server.py` and `Start Tracker.cmd` with the new
   versions, or run `git pull` if you cloned it.
3. Start it again.

**For a future year's challenge:** if only the dates move, change the first month under
*Data → Challenge window*. If the rules change, the bonus categories and constants live at the top of
the script in `hobby-progress-challenge.html`.

---

## For contributors

### Project layout

```
HPCTracker/
├── hobby-progress-challenge.html   the whole app: markup, styles and script in one file
├── server.py                       local helper: serves the page, saves data and photos
├── Start Tracker.cmd               Windows launcher for server.py
├── README.md
├── .gitignore                      keeps users' data.json and photos/ out of git
└── .gitattributes                  keeps Start Tracker.cmd on CRLF line endings
```

### How it fits together

There's no framework, build step, package manager or database. Open the files and edit them.

- **`hobby-progress-challenge.html`** is plain HTML, CSS and JavaScript with no external
  dependencies. It keeps all state in one JavaScript object and saves it as a whole, shortly after
  each change.
- **`server.py`** uses Python's standard library (`http.server`). It serves the page and exposes a
  small local API. It writes files atomically (to a temporary file, then swapped in), so a crash
  can't leave a half-written `data.json`.
- **Storage fallbacks.** If the page can't reach `server.py`, it falls back in order to the
  browser's IndexedDB, then the File System Access API (the user picks a folder), then memory only.
  All four share one small storage interface in the script.

### Local API

Only reachable from `127.0.0.1`.

| Method | Path | Purpose |
|---|---|---|
| `GET` | `/api/ping` | Confirms the tracker server is running; returns its folder |
| `GET` / `PUT` | `/api/doc` | Read or replace `data.json` |
| `GET` | `/api/blobs` | List files under `photos/` |
| `GET` / `PUT` / `DELETE` | `/api/blob/<name>` | Read, write or delete one photo (`<name>` may start with `thumbs/`) |
| `POST` | `/api/open-folder` | Open the tracker folder in File Explorer (Windows only) |

### `data.json` shape

```jsonc
{
  "version": 1,
  "settings": { "start": "2026-10" },          // first month of the 12-month window
  "months": {
    "2026-10": {
      "unit": "", "system": "", "unitType": "",
      "status": "planned",                     // planned | started | complete | missed | skipped
      "bonusId": null, "bonusDone": false,     // bonusId matches an id in BONUSES
      "notes": "",
      "extras": [],                            // the second unit for Double Up! / Just Get It Done!
      "completedAt": null
    }
  },
  "photos": [
    { "id": "…", "monthKey": "2026-10",
      "group": "main",                         // main | extra0 | bonus
      "phase": "before",                       // before | after | evidence
      "file": "2026-10_main_before_….jpg", "thumb": "thumbs/2026-10_main_before_….jpg",
      "name": "IMG_1041.jpg", "type": "image/jpeg", "size": 0, "w": 0, "h": 0,
      "addedAt": "…", "caption": "" }
  ],
  "backlog": [
    { "id": "…", "unit": "", "system": "", "unitType": "", "notes": "",
      "state": "available" }                   // available | planned | painted
  ]
}
```

### Testing deadline logic

Add `?today=YYYY-MM-DD` to the page address to make the tracker behave as if it were that date,
e.g. `…/hobby-progress-challenge.html?today=2026-10-11`. It changes nothing that's saved, and is the
quickest way to check the countdowns around month ends and daylight-saving changes.

### Colours

The dark theme's accent, status and decorative colours come from one ten-step palette, `#F72585`
through `#4CC9F0`. They're defined once as CSS custom properties at the top of the stylesheet.
Status text uses slightly lightened versions of the palette colours so it passes WCAG AA contrast
(4.5:1) on the dark panels, and every status is also written out in words, so colour is never the
only signal.
