# Minimize Waterfox UI

![Screenshot of a new tab without the close tab "X" and the new tab "+"](https://nailfile.yachts/698a11bc0b591.png)

## Find Profile Directory
1. Type `about:support` in address bar
2. Find "Profile Directory" row
3. Note the full path (likely `/home/simon/.var/app/net.waterfox.waterfox/data/waterfox/Profiles/[random].default-release`)

## Enable Custom CSS
1. Type `about:config` in address bar, accept warning
2. Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
3. Set to `true`

## Create userChrome.css
1. Navigate to your profile directory
2. Create folder named `chrome` (lowercase)
3. Inside `chrome`, create file `userChrome.css`
4. Add CSS rules:
```css
/* Hide close buttons on tabs */
.tabbrowser-tab .tab-close-button {
  display: none !important;
}

/* Hide new tab button */
#tabs-newtab-button {
  display: none !important;
}

/* Hide back/forward buttons */
#back-button, #forward-button {
  display: none !important;
}
```

5. Save file and restart Waterfox
