v1.8.0
=================
* Upgrade to Polymer 1.4.0

v1.7.1
=================
* Added auto github pages rebuilding on tag push

v1.7.0
=================
* Added enable-column-resize attribute on px-data-table, allowing the user to resize columns by clicking and dragging the right border of a header

v1.6.2
=================
* fix bug when dropping first user defined column on 'selected' column

v1.6.1
=================
* Columns tracked directly in the light dom: if adding data through the dataTable attribute px-data-table-column will be added in the light dom for each appropriate column. The column order is tracked within the light dom as well.

v1.6.0
=================
* Added columns hiding/showing functionality: hideColumn(columnName) and showColumn(columnName) API functions and show-column-chooser attribute on px-data-table, adding a dropdown allowing to select which column should be hidden.
* Added column reordering functionality: drag and drop column headers. Enabled through the enable-column-reorder attribute on px-data-table.

v1.5.2
=================
* added a css variable for dropdown border.

v1.5.1
=================
* fixed an issue with dropdown tooltips within data table

v1.5.0
=================
* Fixes to correctly notify table-data attribute when changes happen to the table data and propagate them out of the component.
* Fixes to make table react correctly when the underlying model (table-data) changes.
* Fixes to dropdown width and to make the cell text (character) width consistent with other column definitions.
* Sass fixes for shadow DOM.

v1.4.0
=================
* Added css variable to support custom cell padding: --px-data-table-padding-top, --px-data-table-padding-bottom, --px-data-table-padding-left, --px-data-table-padding-right

v1.3.1
=================
* Updated dropdown to latest version

v1.3.0
=================
* Added Dropdown functionality

v1.2.0
=======
* Initial support for cell and row highlighting. See demo.html for an example.
* Support for 'high'/'medium'/'low' highlight styles on given cell or row.
* Light DOM observation of addition and removal of px-data-table-columns elements. Table now dynamically reacts to these changes.
* Remove 'x' from input elements on IE and Edge.
* Fix for making highlight and selected rows consistent when filtering or ordering of columns.
* Fixes for IE when using column and cell highlight.
* More tests.


v1.1.3
=================
* Move bower components to use registered component names.

v1.1.2
=================
* Fix 1px border-collapse padding bug.

v1.1.1
=================
* Updated README with preventing auto-synching your info.

v1.1.0
=================
* Add hide-pagination-control property to allow user to control if the data table pagination controls are available or not to the user.

v1.0.5
=================
* Fixes for table borders disappearing in Safari
* Fixes for column only and row only cell borders.
* Removal of '5' row option in pagination control to match data table design.

v1.0.3
=================
* Updated License

v1.0.2
=================
 * removed extraneous 5 from array which was causing a dropdown bug

v1.0.1
==================
* Fixes missing tooltip and incorrect positioning on validation error.

v1.0.0
==================
* Now possible to set a column as 'editable' and allow the cell to be selected and the content edited.
* Per-cell validation is now possible. As a cell is edited and the change accepted a (developer supplied) validation routine is executed, a cell will be marked as

 v0.0.1
==================
* Initial release
