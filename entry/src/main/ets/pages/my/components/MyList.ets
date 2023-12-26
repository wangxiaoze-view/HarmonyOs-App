@Component
export default struct MyList {
  private pad: number = 20.5
  build(){
    Column() {
      Column() {
        Row({space: 11}) {
          Image($r('app.media.icon_qb'))
            .width(18)
            .height(18)
          Row(){
            Text('我的钱包')
              .fontSize(15)
              .fontColor($r('app.color.title_color'))
              .fontWeight(500)
            Image($r('app.media.icon_right'))
              .width(18)
              .height(18)
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .padding(this.pad)

        Divider()
          .color(0x1a000000)
          .strokeWidth(0.5)
          .padding({left: this.pad, right: this.pad})

        Row({space: 11}) {
          Image($r('app.media.icon_price'))
            .width(18)
            .height(18)
          Row(){
            Text('全国服务价格表')
              .fontSize(15)
              .fontColor($r('app.color.title_color'))
              .fontWeight(500)
            Image($r('app.media.icon_right'))
              .width(18)
              .height(18)
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .padding(this.pad)

        Divider()
          .color(0x1a000000)
          .strokeWidth(0.5)
          .padding({left: this.pad, right: this.pad})

        Row({space: 11}) {
          Image($r('app.media.icon_set'))
            .width(18)
            .height(18)
          Row(){
            Text('设置')
              .fontSize(15)
              .fontColor($r('app.color.title_color'))
              .fontWeight(500)
            Image($r('app.media.icon_right'))
              .width(18)
              .height(18)
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .width('100%')
        .padding(this.pad)

      }
      .margin({top: 12})
      .backgroundColor($r('app.color.bg_color'))



      Row({space: 11}) {
        Image($r('app.media.icon_xs'))
          .width(18)
          .height(18)
        Row(){
          Text('专属销售')
            .fontSize(15)
            .fontColor($r('app.color.title_color'))
            .fontWeight(500)
          Image($r('app.media.icon_right'))
            .width(18)
            .height(18)
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .padding(this.pad)
      .margin({top: this.pad})
      .backgroundColor($r('app.color.bg_color'))

    }
    .width('100%')
  }
}