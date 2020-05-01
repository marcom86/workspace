require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


import "bootstrap";

import { initMapbox } from '../plugins/init_mapbox';
import { scroll, scrollUpTutorial, scrollUpNewSpaces } from '../pages/scroll';


initMapbox();
scroll();
scrollUpTutorial();
scrollUpNewSpaces();



