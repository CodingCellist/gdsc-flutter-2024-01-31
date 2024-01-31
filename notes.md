* pro: don't need to learn every mobile stack
* con: no hw interaction, Flutter is its own thing
  - So need to go directly to files if need, e.g. AirDrop
  - Need to learn the stack eventually

* Flutter works around _widgets_
  - Widgets tell us how they want to look
  - Widgets can be structural: how should component grouping work?
* `Text` is barebones enough to need a text reading/rendering direction
* Most Widgets take a named `child` arg
  - or a list of children
* Sizes specified in DPI by default

* `AppBar` widget
  - nice rounded bar thingy
* `Column` to align things
  - With matching `Row`, of course
* `Text` to render text
  - `Card` widget is `Text` widget with some styling
* `TextField`
* `Button` of various kinds
  - with `onPressed` and friends, as expected
* And many more: `Scaffold`, `Form`, `Padding`, `TextFormField`,
    ...

* Widgets may have state
  - `StatelessWidget` vs `StatefulWidget`
* Stateless things get rendered once, and are then immutable
  - _Can_ update the state,
  - but this will not translate to on-screen effects.
* Stateful things have a `setState` function which takes a lambda and runs it on
  state updates

* General code lives in `lib/`
  - Can implement platform-specific things in respective dirs
* `MaterialApp`
  - provides a bunch of default styling
  - can customise subsets of this as we want

* MVVM
  - Model -> View -> ViewModel
  - data -> UI -> mediator between the two

* classes in Dart work roughly the same as classes in Java
* constructors explicitly specify `required` fields
  - by default, fields are not req.d
* have to explicitly declare fields as 'nullable' via `?` suffix

* working with long lists of things is common,
  - so there is template code for it
  - `ListView`
  - à la Java `StringBuilder`
  - except mapped over the list via `ListView.builder`
    * pass in length to `itemCount` and a lambda to `itemBuilder`

* navigate w/i app using `Navigator`
* have magic `showDatePicker`
  - again, common thing to want to do
  - needs a rendering `context`
  - `first_date` and `last_date`
  - curr.y no way to set `last_date` to inf
* for swipe-to-delete:
  - again, fairly common
  - implemented as `Dismissable` widget
  - in `onDismissed` specify how to update the todo-list

* `late` keyword for things which we cannot do now, but will need to do at some
  later point
  - and then `@override` the `initState` and `dispose` functions to handle the
    (de-)construction of these `late` fields as part of the lifecycle of the
    widget
