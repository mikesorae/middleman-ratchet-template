# Notes

this is a template project for middleman using ratchet2.0.

# Requirement

* ruby 2.0 or later
* middleman 3.3
* bower

# How to use

## 1) clone repository into your local

```
git clone https://github.com/mikesorae/middleman-ratchet-template.git
cd middleman-ratchet-template
```

## 2) install ruby gems by bundler

```
bundle install
```

## 3) install bower packages

```
bower install
```

# Helpers for UIKit

## UIButton

```
= ui_button "title", "./target.html", type: "primary", outline: false
```

## UISwitch

```
= ui_switch on: true
```

## UISegment

```
= ui_segment %w(one two three), selected: 1
```

## UITableView

```
= ui_table_view
  = ui_table_view_divider
    | section name
  = ui_table_view_cell
    | list item 1
  = ui_table_view_cell
    | list item 2
```
