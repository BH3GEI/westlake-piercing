# Candidate apps resource prebuild report — Agent-A
Generated while boards offline. Goal: identify theme class and framework resource coverage gaps for 2048 / noice / gsh, so they can be flashed when boards return.

Framework-res 76a92b8f file inventory: 1909 XML files, 1636 image drawables.
Pre-extracted XML byte channel: 1908 named XML resources.
Raw image drawable byte channel: `framework-drawable-raw-bytes-all/` — **all 1636 framework drawable names, 6226 density/qualifier variants, 14.2 MB** extracted from 76a92b8f. The 2–3 PNGs needed by noice/gsh are included.

## Summary table

| app | theme class | framework file refs | XML covered | arsc-only color | raw image needed | value refs |
|---|---|---:|---:|---:|---:|---:|
| 2048 | Framework Holo | 78 | 10 | 68 | 0 | 171 |
| noice | AppCompat (Material3) | 80 | 10 | 68 | 2 | 198 |
| gsh | AppCompat | 156 | 13 | 142 | 1 | 211 |

**All XML file references that exist in framework-res are already present in the XML byte channel.** No additional AXML pre-extraction is required for these three apps. The only pre-build material still needed is the 2 raw PNG drawables for noice (and 1 shared by gsh); these have been extracted along with **all** framework image drawables into `framework-drawable-raw-bytes-all/` so any future app is also covered.

## 2048
- manifest theme: `@style/AppTheme`
- parent chain: `AppTheme → AppBaseTheme → @android:style/Theme.Holo.Light.DarkActionBar`
- class: **Framework Material/Holo**
  - Uses framework theme directly; still requires framework-res in AssetManager for action-bar attrs.
- framework **file** references: 78
  - XML byte channel covered: 10
  - color references resolved via arsc (no XML file, simple value): 68
    - `@color/black`
    - `@color/system_accent1_0`
    - `@color/system_accent1_10`
    - `@color/system_accent1_100`
    - `@color/system_accent1_1000`
    - `@color/system_accent1_200`
    - `@color/system_accent1_300`
    - `@color/system_accent1_400`
    - `@color/system_accent1_50`
    - `@color/system_accent1_500`
    - `@color/system_accent1_600`
    - `@color/system_accent1_700`
    - `@color/system_accent1_800`
    - `@color/system_accent1_900`
    - `@color/system_accent2_0`
    - ... and 53 more
- framework **value** references (arsc/theme): 171 (style/attr/id/string/dimen/...)
  - sample: `attr/actionBarDivider`, `attr/actionBarItemBackground`, `attr/actionBarSize`, `attr/actionButtonStyle`, `attr/actionMenuTextAppearance`, `attr/actionMenuTextColor`, `attr/actionModeBackground`, `attr/actionModeCloseDrawable`, `attr/actionModeShareDrawable`, `attr/actionOverflowButtonStyle`, `attr/borderlessButtonStyle`, `attr/buttonStyle`, `attr/buttonStyleSmall`, `attr/checkboxStyle`, `attr/checkedTextViewStyle`, `attr/colorAccent`, `attr/colorBackground`, `attr/colorBackgroundFloating`, `attr/colorButtonNormal`, `attr/colorControlActivated` ...

## noice
- manifest theme: `@style/Theme.App`
- parent chain: `Theme.App → Base.Theme.App → Base.V21.Theme.App → Theme.Material3.DayNight → Theme.Material3.Light → Base.Theme.Material3.Light → Base.V14.Theme.Material3.Light → Theme.MaterialComponents.Light → Base.Theme.MaterialComponents.Light → Base.V21.Theme.MaterialComponents.Light → Base.V14.Theme.MaterialComponents.Light → Base.V14.Theme.MaterialComponents.Light.Bridge → Platform.MaterialComponents.Light → Theme.AppCompat.Light → Base.Theme.AppCompat.Light → Base.V21.Theme.AppCompat.Light → Base.V7.Theme.AppCompat.Light → Platform.AppCompat.Light → Platform.V21.AppCompat.Light → @android:style/Theme.Material.Light.NoActionBar`
- class: **AppCompat**
  - Requires same handling as uptodown: addAssetPath(framework-res 76a92b8f) into app AssetManager **before** applyStyle.
- framework **file** references: 80
  - XML byte channel covered: 10
  - color references resolved via arsc (no XML file, simple value): 68
    - `@color/black`
    - `@color/system_accent1_0`
    - `@color/system_accent1_10`
    - `@color/system_accent1_100`
    - `@color/system_accent1_1000`
    - `@color/system_accent1_200`
    - `@color/system_accent1_300`
    - `@color/system_accent1_400`
    - `@color/system_accent1_50`
    - `@color/system_accent1_500`
    - `@color/system_accent1_600`
    - `@color/system_accent1_700`
    - `@color/system_accent1_800`
    - `@color/system_accent1_900`
    - `@color/system_accent2_0`
    - ... and 53 more
  - image drawable references (need raw PNG/WebP bytes from framework-res): 2
    - `@drawable/ic_menu_close_clear_cancel`
    - `@drawable/ic_menu_search`
- framework **value** references (arsc/theme): 198 (style/attr/id/string/dimen/...)
  - sample: `attr/actionBarDivider`, `attr/actionBarItemBackground`, `attr/actionBarSize`, `attr/actionButtonStyle`, `attr/actionMenuTextAppearance`, `attr/actionMenuTextColor`, `attr/actionModeBackground`, `attr/actionModeCloseDrawable`, `attr/actionModeShareDrawable`, `attr/actionOverflowButtonStyle`, `attr/borderlessButtonStyle`, `attr/buttonBarButtonStyle`, `attr/buttonBarStyle`, `attr/buttonStyle`, `attr/buttonStyleSmall`, `attr/checkboxStyle`, `attr/checkedTextViewStyle`, `attr/colorAccent`, `attr/colorBackground`, `attr/colorBackgroundFloating` ...

## gsh
- manifest theme: `@style/AppThemeBar`
- parent chain: `AppThemeBar → Theme.AppCompat.DayNight.NoActionBar → Theme.AppCompat.Light.NoActionBar → Theme.AppCompat.Light → Base.Theme.AppCompat.Light → Base.V23.Theme.AppCompat.Light → Base.V22.Theme.AppCompat.Light → Base.V21.Theme.AppCompat.Light → Base.V7.Theme.AppCompat.Light → Platform.AppCompat.Light → Platform.V21.AppCompat.Light → @android:style/Theme.Material.Light.NoActionBar`
- class: **AppCompat**
  - Requires same handling as uptodown: addAssetPath(framework-res 76a92b8f) into app AssetManager **before** applyStyle.
- framework **file** references: 156
  - XML byte channel covered: 13
  - color references resolved via arsc (no XML file, simple value): 142
    - `@color/black`
    - `@color/system_accent1_0`
    - `@color/system_accent1_10`
    - `@color/system_accent1_100`
    - `@color/system_accent1_1000`
    - `@color/system_accent1_200`
    - `@color/system_accent1_300`
    - `@color/system_accent1_400`
    - `@color/system_accent1_50`
    - `@color/system_accent1_500`
    - `@color/system_accent1_600`
    - `@color/system_accent1_700`
    - `@color/system_accent1_800`
    - `@color/system_accent1_900`
    - `@color/system_accent2_0`
    - ... and 127 more
  - image drawable references (need raw PNG/WebP bytes from framework-res): 1
    - `@drawable/ic_menu_close_clear_cancel`
- framework **value** references (arsc/theme): 211 (style/attr/id/string/dimen/...)
  - sample: `attr/actionBarDivider`, `attr/actionBarItemBackground`, `attr/actionBarSize`, `attr/actionButtonStyle`, `attr/actionMenuTextAppearance`, `attr/actionMenuTextColor`, `attr/actionModeBackground`, `attr/actionModeCloseDrawable`, `attr/actionModeShareDrawable`, `attr/actionOverflowButtonStyle`, `attr/borderlessButtonStyle`, `attr/buttonStyle`, `attr/buttonStyleSmall`, `attr/checkboxStyle`, `attr/checkedTextViewStyle`, `attr/colorAccent`, `attr/colorBackground`, `attr/colorBackgroundFloating`, `attr/colorButtonNormal`, `attr/colorControlActivated` ...

---

## Covered XML file references (present in `framework-xml-bytes/`)

- 2048 / noice / gsh all share: `@anim/accelerate_interpolator`, `@anim/decelerate_interpolator`, `@anim/linear_interpolator`, `@interpolator/accelerate_quad`, `@interpolator/decelerate_quad`, `@interpolator/fast_out_linear_in`, `@interpolator/fast_out_slow_in`, `@interpolator/linear`, `@interpolator/linear_out_slow_in`.
- 2048 additionally uses `@drawable/btn_radio`.
- noice additionally uses `@interpolator/accelerate_decelerate`.
- gsh additionally uses `@interpolator/accelerate_cubic`, `@interpolator/decelerate_cubic`, `@transition/fade`, `@transition/move`.

No other framework XML files are referenced by these apps' packaged resources.

## Raw image drawables extracted

| name | variants available in `framework-drawable-raw-bytes-all/` |
|---|---|
| `ic_menu_close_clear_cancel` | drawable-ldpi/mdpi/hdpi/xhdpi `.png` |
| `ic_menu_search` | drawable-ldpi/mdpi/hdpi/xhdpi/xxhdpi `.png` |

In fact **all 1636 framework drawable names / 6226 variants (14.2 MB)** have been pre-extracted into `framework-drawable-raw-bytes-all/` so no image asset should be a blocker for any future app either.

These should be served via the same byte-inject path as XML (open by density-qualified asset path), because file-level `AssetManager.open` is still dead on OHOS.

## Board-return flash checklist (per app)

1. Deploy framework-res `76a92b8f` and run `createSystemAssetsInZygoteLocked(reinitialize=true, ...)`.
2. For AppCompat apps (noice, gsh): ensure app AssetManager `addAssetPath(76a92b8f)` **before** `applyStyle(AppTheme)`.
3. For 2048 (Holo): still add framework-res to AM, but theme is framework-only.
4. No new XML byte channel work is needed; only serve the 2 PNGs above if the app inflates a view that references them.
5. Run RESOURCE-PLAYBOOK Step 4 (arsc native real bind) and Step 6 (?attr post-resolve) as for uptodown.
