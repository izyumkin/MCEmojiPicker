# Changelog

All changes made to this fork on top of the upstream [izyumkin/MCEmojiPicker](https://github.com/izyumkin/MCEmojiPicker).

---

## [fork] Unreleased

### Added
- **Emoji search bar** — ported from upstream PR [#57](https://github.com/izyumkin/MCEmojiPicker/pull/57) (not yet merged upstream). Adds a `UISearchBar` above the emoji grid that filters emojis in real time as the user types. Implemented across three files:
  - `MCEmojiPickerView.swift` — adds `UISearchBar` UI and `UISearchBarDelegate`
  - `MCEmojiPickerViewController.swift` — wires search delegate calls to the view model
  - `MCEmojiPickerViewModel.swift` — adds `searchText` observable and `filterCategoriesBySearchText` logic

### Fixed
- **Duplicate category buttons on iOS 26** — ported from upstream PR [#56](https://github.com/izyumkin/MCEmojiPicker/pull/56), fixing [#60](https://github.com/izyumkin/MCEmojiPicker/issues/60). `draw(_ rect:)` was being called multiple times during layout cycles, causing category icons to accumulate. Fixed by adding a `didSetupUIOnce` guard and making `setupCategoryViews()` idempotent.

- **Skin tone selection incorrect when search is active** — ported from upstream PR [#57](https://github.com/izyumkin/MCEmojiPicker/pull/57) patch 2. When search filtered the emoji list, applying a skin tone used the filtered index to mutate the unfiltered array, targeting the wrong emoji. Fixed by looking up the correct index via `emojiKeys` matching.

- **CamelCase search keys not split into individual words** — `searchKey` values are camelCase (e.g. `"leafyGreen"`). The search was lowercasing the whole string to `"leafygreen"`, so typing "green" or "leafy" individually worked but "leafy green" (with a space) did not. Fixed by converting camelCase to space-separated words before matching, making each word independently searchable.

### Changed
- **Swift language version** — bumped `swiftLanguageVersions` in `Package.swift` from `[.v4_2]` to `[.v5]`.

---

## [fork] feature/cldr-search-aliases

### Added
- **CLDR synonym search** — embeds a pre-processed subset of the [Unicode CLDR annotations dataset](https://github.com/unicode-org/cldr-json) (`cldrEmojiKeywords.json`, ~77KB) as a bundled resource. The ViewModel loads it once at init and uses it to augment search: if the query does not match the primary name, it falls back to checking CLDR keywords. This gives the same alias coverage as the iOS system keyboard — e.g. "lettuce" → 🥬, "aubergine" → 🍆, "courgette" → 🥒, "zucchini" → 🥒. Covers 1,227 of the 1,870 emojis MCEmojiPicker ships (remaining emojis are matched by primary name only).
