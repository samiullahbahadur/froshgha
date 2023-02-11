import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="customer-modal"
export default class extends Controller {
  connect() {
    console.log("I am here");
  }
  initialize() {
    this.element.setAttribute("data-action", "click->customer-modal#showModal");
  }
  showModal(event) {
    event.preventDefault();
    this.url = this.element.getAttribute("href");
    console.log(this.url);
    console.log("anything");
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html",
      },
    })
      .then((response) => response.text())
      .then((html) => Turbo.renderStreamMessage(html));
  }
}
