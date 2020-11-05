var btnSidebar = document.getElementById('sidebarCollapse'),
    sidebar = document.getElementById('sidebar'),
    content = document.getElementById('content');
btnSidebar.addEventListener('click', function () {
    sidebar.classList.toggle('hidden');
    content.classList.toggle('hidden');
});