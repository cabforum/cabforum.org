(function() {
    var path = window.location.pathname;
    var redirects = {
        '/wp-content/uploads/': '/uploads/',
        '/feed/': '/posts/feed/'
    };

    for (var prefix in redirects) {
        if (path.indexOf(prefix) === 0) {            
            var newUrl = redirects[prefix] + path.slice(prefix.length);
            if (newUrl.startsWith('/')) {
                newUrl = '{{ relURL "" }}' + newUrl.slice(1);
            }
            
            console.log('Redirecting ' + path + ' to ' + newUrl);

            location.href = newUrl;
            return;
        }
    }

    // If no redirect is found, redirect to the homepage
    setTimeout(function(){
        location.href = '{{ relURL "" }}';
    }, 20000);
})();
