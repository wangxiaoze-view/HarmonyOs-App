@Component
export default struct HeaderInfo {
  build() {
    Column({space: 6}) {
      Row() {
        Text('Hi, 帘邦总局')
          .fontSize(20)
          .fontWeight(600)
          .fontColor($r('app.color.title_color'))

        Row() {
          Image($r('app.media.icon_ss'))
            .width(16)
            .height(16)

          Text('查找师傅')
            .fontSize(14)
            .fontColor($r('app.color.sub_title_color'))
        }
        .width(97)
        .height(32)
        .backgroundColor($r('app.color.bg_color'))
        .alignItems(VerticalAlign.Center)
        .justifyContent(FlexAlign.Center)
        .borderRadius(50)
        .onClick(() => {
          console.info("查找师傅")
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Text('欢迎使用安帮客，专业的窗帘上门服务平台')
        .fontSize(14)
        .fontColor($r('app.color.sub_title_color'))
    }
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.Start)
  }
}