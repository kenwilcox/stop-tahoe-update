# Remove the Red Badge from the System Settings Dock Icon

If you're tired of the persistent red notification badge on the **System Settings** icon in your Dock (indicating a software update is available), this guide walks you through removing it.

> **Note:** The "Software Update Available (1)" entry will still appear inside the System Settings sidebar — this only removes the red badge from the Dock icon.

> **Heads up:** You will likely need to repeat these steps after each macOS update (e.g. upgrading from 15.7.2 to 15.7.3).

---

## Prerequisites

- Download [**Prefs Editor**](https://apps.tempel.org/PrefsEditor/) from Thomas Tempelmann (developer of [Find Any File](https://apps.tempel.org/FindAnyFile/))

---

## Steps

### 1. Open Prefs Editor

Launch the **Prefs Editor** app you just downloaded.

### 2. Find the Dock preferences

In the filter/search box, type:

```
dock
```

### 3. Open your Dock preferences file

Double-click **`com.apple.dock`**, then double-click the option that reads:

```
/Users/<your-username>/Library/Preferences
```

### 4. Locate the System Settings entry

In the filter/search box, type:

```
system
```

Scroll through the results until you find a **Value** that contains:

```
file:///System/Applications/System%20Settings.app/
```

### 5. Note the parent Item number

Look at the **Key** column for that entry and note its parent **Item** number (e.g. `Item 24`).

### 6. Disable the badge

Go back to the filter/search box and type:

```
dock
```

Find the Item number you noted in the previous step. Under that item, locate the badge toggle set to **YES** and **uncheck** it (this sets it to **NO**).

### 7. Save your changes

Press **Cmd + S** to save the file.

### 8. Close Prefs Editor

Close the window and quit **Prefs Editor**.

### 9. Restart the Dock

Open **Terminal** and run:

```bash
killall Dock
```

### 10. Verify

The red badge should now be gone. You can optionally reboot to confirm the change persists.

---

## Reverting

To bring the badge back, repeat the steps above but re-check the value back to **YES**, save, and run `killall Dock` again.

---

## Credits

This method was shared by the community on Reddit ([link to comment](https://www.reddit.com/r/MacOS/comments/1nm1a92/comment/noy9xit/)). Thanks to the original poster for documenting it.
