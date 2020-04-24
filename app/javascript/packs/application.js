require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("payments/summary")

import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';
import { scroll } from '../pages/scroll';

initMapbox();
scroll();

changeBadgeColor();


function changeBadgeColor(){
  const badge = document.getElementById('booking-badge');

  badge.classList.remove("badge-warning");
  badge.classList.add("badge-primary");

}
