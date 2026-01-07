## Google Search URL Parameters

```
https://www.google.com/search?q=your+search+terms&hl=en&gl=us&tbm=
```


## Common URL Parameters Explained
- `q`: The search query (replace `your+search+terms` with your actual search terms, using `+` for spaces).
- `hl`: Language of the search results (e.g., `en` for English).
- `gl`: Geographical location for the search (e.g., `us` for the United States).
- `tbm`: Type of search (e.g., `isch` for images, `vid` for videos, `nws` for news).

**Note:** For Google Search, only the `q` parameter is required to perform a search.



## Example HTML Form to Perform a Google Search
```html
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Search</title>
    </head>
    <body>
        <form action="https://www.google.com/search">
            <input type="text" name="q">
            <input type="submit" value="Google Search">
        </form>
    </body>
</html>
```


## Explanation of How This Works
When we type "Harvard" and click the button, your browser does this:

Looks at the Destination: It sees action="https://www.google.com/search".

Looks at the Data: It takes what you typed in the input named q.

Combines Them: It creates a URL by adding a ? and the data to the destination.

Math: **Action + ? + name + = + value**

Result: https://www.google.com/search?q=Harvard

Redirects: It sends you to that new URL, which is Google's actual results page.



## Key Takeaways
*   **Query Strings:** Data sent to a server via the URL always starts with ?.
*   **Parameters:** Data is formatted as name=value. If you have multiple, they are separated by &.
*   **Reverse Engineering:** You can learn how any website works by looking at its URL after you do an action (like searching).
*   **Google's Key:** Google's server specifically looks for a parameter named q to know what to search for.
*   **The Goal:** We are building the "skin" (HTML/CSS), but you are using Google's "brain" (Server) by sending the user to their URL with the correct parameters.




## GET in the Context of Web

* In the context of the web and this project, GET is one of the main ways browsers talk to servers.

* GET means "Go get this page." When you use GET in a form, it takes the data you typed, attaches it to the end of the URL, and asks the server for the resulting page.

* The Default: If you don't specify a method in your <form> tag, the browser assumes you want to use GET.



## Starting the Project

### Flexbox Layout

```css
form {
    display: flex;
    flex-direction: column;
    justify-content: center;
    height: 100vh;
    align-items: center;
}
```

* `display: flex;` - This makes the form a flex container, enabling flexbox layout.
* `flex-direction: column;` - This arranges the child elements (input fields and buttons) vertically in a column.
* `justify-content: center;` - This centers the child elements vertically within the form.
* `height: 100vh;` - This sets the height of the form to

1. The Meaning of vh
	* v = **Viewport** (The visible browser window).
	*  h = Height.
	* 100 = 100%.

**Translation:** height: 100vh; means "**Make this element exactly as tall as the visible screen.**"

2. **The Problem: "Shrink-Wrapping"**
By default, HTML elements (like your <form> or a <div>) act like shrink-wrap. They only stretch big enough to hold what is inside them.

**Scenario A** (No Height Set): Your form has a text box (20px) and a button (20px). The form's total height is roughly 40px. Even if you say "Center the items vertically!", the browser looks at the form and says, "The items are filling the whole space. There is no empty space to move them into."

3.** The Solution: Creating Empty Space**
**To center something, you need empty space around it.**

Scenario B (With height: 100vh): You force the form to be 1000px tall (or however tall your screen is). Now, the content is still only 40px, but the container is 1000px. There is now 960px of empty space. justify-content: center takes that empty space and splits it evenly top and bottom, pushing your content to the middle.

**Analogy: **The Painting and the Wall
Without 100vh: It is like framing a photo with a frame that is the exact same size as the photo. You cannot "center" the photo inside the frame; it fills the whole thing.

With 100vh: It is like hanging a small photo on a huge, blank wall. Now you can measure the wall and place the photo exactly in the center. 100vh creates the wall.

## Google Image Search 

### Google Image Search URL

```https://www.google.com/search?tbm=isch&q=your+search+terms
```
### Parameters Explained
