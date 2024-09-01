import { Controller } from "@hotwired/stimulus";
import { enter, leave, toggle } from "el-transition";

export default class extends Controller {
  static targets = ['openUserMenu', 'userAuthLink'];
  connect() {
    this.openUserMenuTarget.addEventListener('click', this.toggleDropDownMenu);
    this.userAuthLinkTargets.forEach((link) => {
      link.addEventListener('click', (e) => {
        e.preventDefault();
        document.getElementById("modal-trigger").click();
      })
    });
    
    document.addEventListener('click', this.handleOutsideClick.bind(this));
  }

  toggleDropDownMenu(event) {
    event.stopPropagation();
    toggle(document.getElementById('menu-dropdown-items'));
  }

  handleOutsideClick(event) {
    const dropdownMenu = document.getElementById('menu-dropdown-items');
    const isOpen = !dropdownMenu.classList.contains('hidden');
    
    if (isOpen && !this.openUserMenuTarget.contains(event.target) && !dropdownMenu.contains(event.target)) {
      leave(dropdownMenu);
    }
  }
}
