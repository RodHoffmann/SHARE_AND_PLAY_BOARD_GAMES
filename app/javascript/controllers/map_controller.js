import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: 'pk.eyJ1Ijoicm9kaG9mZm1hbm4iLCJhIjoiY2xmNnV4MDh5MDYyODNybW9iaGlwcDJzMiJ9.lRnAPpPOYXznAK6-NmKjtQ',
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue;
    this.map = new mapboxgl.Map({
      container: this.element, // container ID
      style: 'mapbox://styles/mapbox/streets-v12', // style URL
      center: [12, 52], // starting position [lng, lat]
      zoom: 6, // starting zoom
    });
    this.#addMarkersToMap()
  }
  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat])
        .addTo(this.map)
    })
  }
}
