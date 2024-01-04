window.addEventListener('DOMContentLoaded', (event) => {
    new PagefindUI({ 
        element: "#search",  
        baseUrl: "/",
        autofocus: true,
        showSubResults: true,
        showEmptyFilters: false
    });
});