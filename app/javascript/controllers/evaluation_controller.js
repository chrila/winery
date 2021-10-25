import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "slider", "textfield" ]

  syncValues(source, target) {
    target.value = source.value
  }

  updateSliderValue() {
    this.syncValues(this.textfieldTarget, this.sliderTarget)
  }

  updateTextfieldValue() {
    this.syncValues(this.sliderTarget, this.textfieldTarget)
  }
}
