

### Google search URL Parameters

```
https://www.google.com/search?q=your+search+terms&hl=en&gl=us&tbm=

For Harvard search in google:
https://www.google.com/search?q=Harvard+&sca_esv=a7edb0de10d9816f&sxsrf=AE3TifMbiP7ZRDVWuP_0aDVCaeRFYVNHCA%3A1767619148879&source=hp&ei=TLpbac6aM4rZ7M8P7NmWiAU&iflsig=AOw8s4IAAAAAaVvIXHFdiv-9-4-onMl3E0QZkmKVfo0o&ved=0ahUKEwjO8Nu7vvSRAxWKLPsDHeysBVEQ4dUDCB0&uact=5&oq=Harvard+&gs_lp=Egdnd3Mtd2l6IghIYXJ2YXJkIDIFEC4YgAQyBRAAGIAEMgUQABiABDIFEC4YgAQyBRAAGIAEMgUQABiABDIFEC4YgAQyBRAAGIAEMgUQABiABDIFEAAYgARI3BJQ4QxYxBFwAXgAkAEAmAGrAaABqQKqAQMwLjK4AQPIAQD4AQL4AQGYAgOgAt0CqAIKwgIHECMYJxjqApgDEPEFRMbk-42SXEuSBwMxLjKgB50XsgcDMC4yuAfNAsIHAzMtM8gHK4AIAA&sclient=gws-wiz
```
### Common URL Parameters Explained
- `q`: The search query (replace `your+search+terms` with your actual search terms, using `+` for spaces).
- `hl`: Language of the search results (e.g., `en` for English).
- `gl`: Geographical location for the search (e.g., `us` for the United States).
- `tbm`: Type of search (e.g., `isch` for images, `vid` for videos, `nws` for news).

### NOTE
	For Google Search only the q parameter is required to perform a search.

### Example HTML Form to Perform a Google Search
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
### Explanation of How This Works
When we type "Harvard" and click the button, your browser does this:

Looks at the Destination: It sees action="https://www.google.com/search".

Looks at the Data: It takes what you typed in the input named q.

Combines Them: It creates a URL by adding a ? and the data to the destination.

Math: **Action + ? + name + = + value**

Result: https://www.google.com/search?q=Harvard

Redirects: It sends you to that new URL, which is Google's actual results page.

### Key Takeaways (Bullet Points)
**Query Strings:** Data sent to a server via the URL always starts with ?.

**Parameters:** Data is formatted as name=value. If you have multiple, they are separated by &.

**Reverse Engineering:** You can learn how any website works by looking at its URL after you do an action (like searching).

**Google's Key:** Google's server specifically looks for a parameter named q to know what to search for.

**The Goal:** We are building the "skin" (HTML/CSS), but you are using Google's "brain" (Server) by sending the user to their URL with the correct parameters.


### GET in the context of Web

* In the context of the web and this project, GET is one of the main ways browsers talk to servers.

* GET means "Go get this page." When you use GET in a form, it takes the data you typed, attaches it to the end of the URL, and asks the server for the resulting page.

* The Default: If you don't specify a method in your <form> tag, the browser assumes you want to use GET.



