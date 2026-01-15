---
description: Build and Deployment Instructions
---
---
// turbo-all

> [!CAUTION]
> **STRICT RULE: DO NOT BUILD LOCALLY**

This project uses **GitHub Actions** for all build and deployment processes.

- **NEVER** run `flutter build apk` or `flutter build ios` locally.
- **ALWAYS** push changes to the `main` branch to trigger a build.

## How to Deploy
1. Commit your changes:
   ```bash
   git add .
   git commit -m "Your commit message"
   ```
2. Push to GitHub:
   ```bash
   git push origin main
   ```

Running local builds will fail or cause synchronization issues. **Violating this rule is strictly forbidden.**
