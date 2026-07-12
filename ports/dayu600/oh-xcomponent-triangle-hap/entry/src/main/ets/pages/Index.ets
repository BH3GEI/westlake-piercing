// Index.ets — @Entry page for the rotating-triangle app. ArkUI header/footer
// chrome (composed by RenderService) around a SURFACE XComponent whose native
// side (libraryname:'entry' → libentry.so) drives GLES2 geometry onto the panel.
// The XComponent is sized by layoutWeight, so the app has visible ArkUI text
// chrome above/below the GL overlay regardless of overlay z-order.
@Entry
@Component
struct Index {
  build() {
    Column() {
      Text('西湖 · GLES2 旋转三角')
        .fontSize(22)
        .fontColor(0xFFFFFFFF)
        .fontWeight(FontWeight.Bold)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding({ top: 48, bottom: 16 })

      XComponent({ id: 'gl', type: XComponentType.SURFACE, libraryname: 'entry' })
        .width('100%')
        .layoutWeight(1)

      Text('rotating triangle · OH-native rail · 5ce panel')
        .fontSize(14)
        .fontColor(0xFFB0B8D0)
        .width('100%')
        .textAlign(TextAlign.Center)
        .padding({ top: 16, bottom: 40 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(0xFF0B1020)
  }
}
