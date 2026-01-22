---
description: Strict protocol for safe code editing and committing
---

# Safe Edit Protocol (MANDATORY)

This workflow enforces the "Atomic Interaction" rule by utilizing the agent's implementation constraints.

## Phase 1: Edit & Verify
1.  **Analyze**: Understand the changes needed.
2.  **Edit**: Use `replace_file_content` or `multi_replace_file_content` to modify code.
3.  **Verify**: Use `view_file` to check the changes or run `flutter analyze` if possible.
4.  **HARD STOP**: You **MUST** call the `notify_user` tool here.
    *   **Message**: "Modifications completed. Verification passed. Ready to commit?"
    *   **Purpose**: This tool physically returns control to the user. You CANNOT proceed until the user responds.

## Phase 2: Commit (ONLY after User Responds "Yes")
1.  **Check Status**: `git status`.
2.  **Commit**: `git commit -m "..."`.
3.  **Push**: `git push`.
