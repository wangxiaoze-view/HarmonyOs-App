@Component
export default struct MyHeader {
  build() {
    Column({space: 24}) {
      Row({space: 12}) {
        Image($r('app.media.icon_avthor'))
          .width(60)
          .height(60)

        Row() {
          Column({space: 4}) {
            Text('去登陆')
              .fontSize(18)
              .fontWeight(600)
              .fontColor($r('app.color.title_color'))
            Text('13411111111')
              .fontSize(13)
              .fontColor($r('app.color.sub_title_color'))
          }
          .alignItems(HorizontalAlign.Start)

          Image($r('app.media.icon_right'))
            .width(18)
            .height(18)
        }
        .layoutWeight(1)
        .width('100%')
        .height(60)
        .justifyContent(FlexAlign.SpaceBetween)

      }
      .alignItems(VerticalAlign.Top)
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .margin({ top: 70 })


      GridRow({columns: 3, gutter: {x: 15}}) {
        GridCol() {
          Column({space: 8}) {
            Text('2729.00')
              .fontSize(19)
              .fontColor($r('app.color.title_color'))
              .fontWeight(600)
            Text('服务余额')
              .fontSize(14)
              .fontColor($r('app.color.sub_title_color'))
          }
        }
        GridCol() {
          Column({space: 8}) {
            Text('-2729.00')
              .fontSize(19)
              .fontColor($r('app.color.tab_bottom_color_active'))
              .fontWeight(600)
            Text('商品余额')
              .fontSize(14)
              .fontColor($r('app.color.sub_title_color'))
          }
        }
        GridCol() {
          Column({space: 8}) {
            Text('3')
              .fontSize(19)
              .fontColor($r('app.color.title_color'))
              .fontWeight(600)
            Text('优惠券')
              .fontSize(14)
              .fontColor($r('app.color.sub_title_color'))
          }
        }
      }
    }
    .width('100%')
    .height(249)
    .padding(30)
    .backgroundImage($r('app.media.icon_vj'))
    .backgroundColor($r('app.color.bg_color'))
  }
}