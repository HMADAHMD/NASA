import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "password", "toggleButton", "eyeIcon" ];
  toggle(){
    this.passwordTargets.forEach(passwordField => {
      const type = passwordField.type === "password" ? "text" : "password";
      passwordField.type = type;
    });

    const newText = this.passwordTargets[0].type === "password" ? "Show password" : "Hide password";
    this.eyeIconTarget.textContent = newText;
  }
}