@Component
export default struct HeaderSearch {
  @State goodsName: string = ''
  build() {
    Row() {
      Image($r('app.media.icon_ss'))
        .width(16)
        .height(16)

      Flex() {
        Text('商品名称')
          .width('100%')
          .height('100%')
          .borderRadius(100)
          .backgroundColor(Color.Transparent)
      }
      .margin({left: 10})
    }
    .height(48)
    .padding({left: 12, right: 12})
    .borderRadius(150)
    .backgroundColor($r('app.color.bg_color'))
    .justifyContent(FlexAlign.SpaceBetween)
  }
}