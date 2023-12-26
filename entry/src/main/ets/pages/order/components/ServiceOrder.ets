@Component
export default struct ServiceOrder {
  build() {
    Column({space: 8}) {
      Row() {
        Text('窗帘安装')
          .fontColor($r('app.color.title_color'))
          .fontWeight(500)
          .fontSize(16)
        Text('等上门')
          .fontColor($r('app.color.sub_title_color'))
          .fontSize(12)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Divider().color('#E6E6E6')

      Row() {
        Row({space: 24}) {
          Text('订单编号')
            .fontSize(14)
            .fontColor($r('app.color.sub_title_color'))
          Text('20231114DK6NF')
            .fontSize(14)
            .fontColor($r('app.color.title_color'))
        }
        Text('¥140.00')
          .fontSize(14)
          .fontColor($r('app.color.title_color'))
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row({space: 24}) {
        Text('上门时间')
          .fontSize(14)
          .fontColor($r('app.color.sub_title_color'))

        Text('2023-10-17 [周二] 15:00 电话打不通')
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .maxLines(1)
          .fontSize(14)
          .fontColor($r('app.color.tab_bottom_color_active'))
          .layoutWeight(1)

      }
      .width('100%')

      Row({space: 24}) {
        Text('业主信息')
          .fontSize(14)
          .fontColor($r('app.color.sub_title_color'))
        Text('程保林 13971291358-1256')
          .fontSize(14)
          .fontColor($r('app.color.title_color'))
          .layoutWeight(1)
      }
      .width('100%')

      Row({space: 24}) {
        Text('服务地址')
          .fontSize(14)
          .fontColor($r('app.color.sub_title_color'))
        Text('江苏省 苏州市 昆山市 昆城景苑18-2108')
          .fontSize(14)
          .fontColor($r('app.color.title_color'))
          .layoutWeight(1)
      }
      .alignItems(VerticalAlign.Top)
      .width('100%')


    }
    .width('100%')
    .backgroundColor($r('app.color.bg_color'))
    .padding(15)
    .borderRadius(6)
    .alignItems(HorizontalAlign.Start)

  }
}