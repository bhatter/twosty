const sidebarToggle = () => {
  const logo = document.getElementById('navbar-menu');
    logo.addEventListener( 'click', (event) => {
      const sidebar = document.getElementById('sidebar');
      sidebar.classList.toggle('active-sidebar');
    });
};

export { sidebarToggle };
