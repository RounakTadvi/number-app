# number_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Issue

The state of the ListItemWidget is being lost when the list is scrolled out of view, leading to the reset of the count value. This is because the count value is not being stored in the widget's state, but rather in the ListWidget's state.

# Rework:

Replaced the list of ListItemWidget with a list of integers (_itemCounts) in the _ListWidgetState to represent the count for each list item.
Modified the ListView.builder to use the _itemCounts list to build the list of ListItemWidget, and passed the count value and a callback function to increment the count to each ListItemWidget.
Implemented the _incrementCount function in _ListWidgetState to update the count value for each ListItemWidget.
Added a onCountIncremented callback to the ListItemWidget to notify _ListWidgetState when the count is incremented.
