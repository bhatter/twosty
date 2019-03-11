import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { sidebarToggle } from '../components/navbar';
import { openPage} from '../components/tabs';
import { scroll } from '../components/scroll';

initMapbox();
initAutocomplete();
sidebarToggle();
openPage();
// document.getElementById("defaultOpen").click();
scroll();
