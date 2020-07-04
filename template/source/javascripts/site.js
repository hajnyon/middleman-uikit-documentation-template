// This is where it all goes :)

document.addEventListener("DOMContentLoaded", () => {
  var a = document.getElementById('edit-page-link');
  a.setAttribute('href', a.href + "?return_url=" + encodeURIComponent(window.location.href));
});
