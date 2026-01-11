## Problem

The `.container` class in `styles.css` had `align-items: center;`, which caused all pages using this class (including `index.html` and `advanceSearch.html`) to have their main content horizontally centered. The goal was to left-align the input fields specifically on the `advanceSearch.html` page, without affecting the centering on `index.html`.

## Solution

To achieve page-specific horizontal alignment for the form on `advanceSearch.html` while maintaining the centered layout on `index.html`, the following steps were taken:

1.  **Add a unique ID to the form in `advanceSearch.html`:**
    The `<form>` tag on `advanceSearch.html` was given a unique `id` (e.g., `id="advanced-search-form"`). This allows for targeting this specific form with a more specific CSS rule.

2.  **Create a more specific CSS rule in `styles.css`:**
    A new CSS rule was added to `styles.css` targeting the newly created `id`. This rule sets `align-items: flex-start;`. Due to CSS specificity rules, an `id` selector (`#advanced-search-form`) overrides a class selector (`.container`), ensuring that only the advanced search form's contents are left-aligned, while other elements using `.container` (like on `index.html`) retain their `align-items: center;` style.

    Example CSS addition:
    ```css
    #advanced-search-form {
        align-items: flex-start;
    }
    ```
