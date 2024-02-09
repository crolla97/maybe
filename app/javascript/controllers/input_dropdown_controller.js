import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["input", "label", "option"]

  static values = {
    value: String
  }

  selectOption (e) {
    const value = e.target.getAttribute('data-value');

    if (value) {

      this.optionTargets.forEach((element) => {
        element.classList.remove('bg-gray-100');
        element.children[0].classList.add('hidden');
      });

      /* WIP Depending on how the currency value wants to be updated */
      // this.inputTarget.value = value
      this.labelTarget.innerHTML = value
      e.currentTarget.classList.add('bg-gray-100')
      e.currentTarget.children[0].classList.remove('hidden');
    }
  }
}
