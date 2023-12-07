import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {

  connect() {
    // console.log(this.datesToDisableValue);
    // const handleChange = (selectedDates, _dateStr, _instance) => {
    //   const totalPrice =
    //     ((selectedDates[1] - selectedDates[0]) / 86400000) * this.priceValue;
    //   if (!isNaN(totalPrice)) {
    //     this.priceDisplayTarget.textContent = totalPrice;
    //   }
    // };

    flatpickr(this.element, {
      minDate: new Date(),
      dateFormat: "Y-m-d h:i",
      enableTime: true,
    });
  }
}
