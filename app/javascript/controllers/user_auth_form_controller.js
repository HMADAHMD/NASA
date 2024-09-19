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
      fetch(`/api/user_by_emails/${email}`, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
        },
      })
      .then(response => {
        if (response.ok) {
          Turbo.visit('users/sign_in');
        } else {
          Turbo.visit('users/sign_up');
        }
        }).catch((error) => {
          console.error("Fetch error:", error);
          Turbo.visit('users/sign_up')
        });
    }
  }
}
