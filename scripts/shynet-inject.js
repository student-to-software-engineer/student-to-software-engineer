(function () {
    if (typeof window === 'undefined') return;
    if (window.location.origin === 'http://localhost:3000') return;

    var script = document.createElement("script");
    script.src = "https://shynet-mpb4.onrender.com/ingress/dd7588c0-a5b6-45cd-a6be-a12eded12cd1/script.js";
    script.defer = true;
    document.body.appendChild(script);

    var noscript = document.createElement("noscript");
    noscript.innerHTML =
        '<img src="https://shynet-mpb4.onrender.com/ingress/dd7588c0-a5b6-45cd-a6be-a12eded12cd1/pixel.gif" alt="" referrerpolicy="no-referrer">';
    document.body.appendChild(noscript);
})();
