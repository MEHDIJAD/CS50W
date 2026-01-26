# 📒 Notes

## Introduction to JavaScript


### Explan code

```javascript
function hello() {
	document.querySelector('h1').innerHTML = 'Goodby'
}
```
This code defines a JavaScript function named `hello`. When this function is called, it selects the first `<h1>` element in the HTML document using `document.querySelector('h1')` and changes its inner HTML content to the string 'Goodby'.

* **NT :** the ```===``` in JavaScript menans "strict equality", which checks both value and type.

```javascript
document.addEventListener('DOMContentLoaded', function() {
	document.querySelector('button').onclick = count;
});
```
**This code snippet :**

Initializes an event listener that waits for the DOM to fully load.
Once loaded, it attaches a click event handler to the first button element on the page, which calls the 'count' function when the button is clicked.
