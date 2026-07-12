// Index.ets — the single @Entry page. A full-bleed XComponent whose native
// side (libraryname:'entry' → libentry.so) drives GLES2 onto the panel.
// libraryname 'entry' MUST match the napi nm_modname in gl_xcomponent.cpp.
@Entry
@Component
struct Index {
  build() {
    Column() {
      XComponent({ id: 'gl', type: XComponentType.SURFACE, libraryname: 'entry' })
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}
