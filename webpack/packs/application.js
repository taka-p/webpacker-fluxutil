/* eslint no-console:0 */

// Support component names relative to this directory:
import '../src/stylesheets/application.sass';
var componentRequireContext = require.context("javascripts/components", true);
var ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);
