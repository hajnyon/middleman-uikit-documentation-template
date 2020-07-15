// This is where it all goes :)

document.addEventListener('DOMContentLoaded', () => {
    anchors.add('h2:not(.no-anchor)');
    var a = document.getElementById('edit-page-link');
    a.setAttribute('href', a.href + '?return_url=' + encodeURIComponent(window.location.href));
});
