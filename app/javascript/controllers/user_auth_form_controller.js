import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['email', 'submit'];

  connect() {
    this.submitTarget.addEventListener('click', this.validateEmail.bind(this));
  }

  validateEmail(e) {
    const email = this.emailTarget.value;
    const validEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    e.preventDefault();

    if (!validEmail || email.length === 0) {
      console.log("email is not valid");
    } else {
      console.log("email is valid");
    }
  }
}
