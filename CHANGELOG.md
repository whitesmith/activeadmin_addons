# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

### ### 1.8.2

##### Fixed
* Removes vendor directory from build to reduce gem size

### 1.8.0

##### Added
* Added date time picker filter [#333](https://github.com/platanus/activeadmin_addons/pull/333)
* Added filters option in nested selects [#301](https://github.com/platanus/activeadmin_addons/pull/301)
* Date range filters and date picker inputs now has `autocomplete: 'off'` by default [#320](https://github.com/platanus/activeadmin_addons/pull/320)
* Added `tags` option to default select2 inputs [#322](https://github.com/platanus/activeadmin_addons/pull/322)
* Added Webpacker compatibility, if ActiveAdmin has been installed using that mode. [#319](https://github.com/platanus/activeadmin_addons/pull/319)

##### Fixed
* Added CSRF header for interactive select tag [#262](https://github.com/platanus/activeadmin_addons/pull/262)
* Replaced deprecated `chromedriver-helper` gem with `webdrivers` to avoid chromedriver version error [#265](https://github.com/platanus/activeadmin_addons/pull/265)
* Manually install bundler in CI [#286](https://github.com/platanus/activeadmin_addons/pull/286)
* Avoid generating second body element [#302](https://github.com/platanus/activeadmin_addons/pull/302)
* Avoid showing `toggle_bool_column` if update action is disabled [#306](https://github.com/platanus/activeadmin_addons/pull/306)
* Moved `sassc-rails` from dev dependencies to normal dependencies [#294](https://github.com/platanus/activeadmin_addons/pull/294)

##### Changed
* Updated ruby to 2.7 and rails to 5.2.4.1 [#293](https://github.com/platanus/activeadmin_addons/pull/293)
* Replaced EOL'd sass with sassc [#292](https://github.com/platanus/activeadmin_addons/pull/292)
* Remove unsupported `select2-rails` gem, vendor files directly [#264](https://github.com/platanus/activeadmin_addons/pull/264) and bump select2 to 4.0.13 [#296](https://github.com/platanus/activeadmin_addons/pull/296)
* Updated `require_all` gem to 2.0 [#313](https://github.com/platanus/activeadmin_addons/pull/313)
* Dependabot bumps for devise, rack, loofah
* Release with circle ci instead of travis

### 1.7.1

##### Fixed
* `toggle_bool_column` fails working with decorated objects.

### 1.7.0

##### Added
* Nested select input allows to work with non virtual attributes.

##### Changed
* Image and attachment builders don't ask for file existence anymore.

### 1.6.0

##### Added
* Include active_material gem.
* Define custom Material style for xdan jQuery DateTimePicker.
* Define custom Material style for toggle_bool.
* Include generator argument theme to be able to install addons with/without material theme.
* Allow customization for active_material, date_picker & toggle_bool

##### Fixed

* Use chromedriver-helper gem to avoid "unable to connect to chromedriver".

### 1.5.0

##### Added

* Allow toggle bool in table_for.
* New buttons for toggle bool.

### 1.4.0

##### Added

* Add interactive tag selector for enums.
* Add named AASM machines support.

##### Removed

* Remove useless coffee-rails dependency.

##### Fixed

* Use pessimistic version for require_all gem to avoid incompatible 2.0 version.

### v1.3.0

##### Added

* Add `predicate` option on Ajax search.

##### Fixed

* Add sass-rails as dependency to avoid sass syntax error.

### v1.2.0

##### Changed

* Use Chrome instead of Firefox to run integration tests.
* Update Rails to 4.2 version at least.

### v1.1.2

##### Fixed

* Demodulize class name in CustomBuilder.

### v1.1.1

##### Fixed

* Alias build instead of add_classes_to_body.

### v1.1.0

##### Added

* Add Toggleable Booleans.

### v1.0.1

##### Fixed

* Don't rely on :class_name option being set on association to identify its class.

### v1.0.0

##### Changed

* Update select 2 to version 4.
* Set DateTimePickerInput default options from gem's setup block.
* Rename :ajax_filter to :search_select_filter.
* Rename :range_select to :numeric_range_filter.

### v0.12.0

##### Added

* Add selected list input to handle many to many associations.

### v0.11.0

##### Added

* Add ability to enable select2 for specific select controls
* Make default select configurable.
* Add initializer to setup addons.
* Add automatic deployment on tags push through travis.
* Enable allowClear in select2_search.
* Allow :order option if Ajax Search.
* Respect date_time_picker input_html[:value].
* Allow date_time_picker in ActiveAdmin custom pages.
* Allow customizable select2 values.

##### Fixed

* Replace slashes to underscore in module name.
