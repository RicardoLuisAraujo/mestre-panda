import { Application } from "@hotwired/stimulus"
import { Chart, registerables } from 'https://cdn.skypack.dev/chart.js';
Chart.register(...registerables);


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
