# Google Play Store Listing Workflow Guide

This document explains how to manage and update the Talkie Play Store listing.

## 1. Why use Markdown files?
We maintain `store_listing_[lang].md` files in this directory (`docs/play_store/`) as the **Source of Truth**.
- **Versioning:** Changes are tracked in Git.
- **Collaboration:** Easier to draft and review text than in the Console.
- **Backup:** Prevents data loss if the Console crashes or overrides text.

## 2. Global Standard Methods

There are two common ways to handle Internationalization (i18n) for app stores:

### Method A: Manual Entry (Recommended for Indies/Small Teams)
Most developers use the Google Play Console UI directly.
1.  Open **Google Play Console**.
2.  Go to **Store presence** > **Main store listing**.
3.  Click **Manage translations** > **Add Language**.
4.  Select the languages (e.g., Japanese, Chinese).
5.  **Copy & Paste** the text from our `store_listing_[lang].md` files into the corresponding fields (Title, Short Description, Full Description).

### Method B: Automation (Fastlane)
Large teams often use **Fastlane Supply** to automate uploads.
- **Structure:** Text files are kept in specific folders:
    - `fastlane/metadata/android/en-US/full_description.txt`
    - `fastlane/metadata/android/ja-JP/full_description.txt`
- **Command:** Run `fastlane supply` to push all text changes to Google Play automatically.
- **Pros:** Saves time if you support 80+ languages.
- **Cons:** Requires complex setup and strict file structure.

## 3. Our Strategy
For Talkie, we follow a hybrid approach:
1.  **Drafting:** Create `store_listing_[lang].md` for major target languages (KO, EN, JA, ZH, ES).
2.  **Deployment:** Manually copy-paste these into Google Play Console for the highest accuracy and control.

## 4. FAQ
**Q: Do we need to translate this for all 80 supported languages?**
**A: No.** It is **not mandatory**.
- If you don't provide a translation for a specific language (e.g., Italian), users in that region will see the **Default Language** (English).
- **Strategy:** Focus on your **Top 3-5 target markets** (e.g., Korea, Japan, US, China). It is inefficient to manage 80 descriptions manually.
- **Recommendation:** Start with matching `store_listing_ko.md`, `store_listing_ja.md`, `store_listing_en.md` (Default), and add others only if you see significant traffic from those regions.
