import "bootstrap";
import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { sidebarToggle } from '../components/navbar';
import { scrollDown } from '../components/scroll-down';
import { openPage} from '../components/tabs';

initMapbox();
initAutocomplete();
sidebarToggle();
scrollDown();
openPage();
document.getElementById("defaultOpen").click();
