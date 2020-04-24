require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';
import { scroll } from '../pages/scroll';


initMapbox();
scroll();



