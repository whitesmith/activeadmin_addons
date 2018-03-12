# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

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
