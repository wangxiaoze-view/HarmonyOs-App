@Component
export default struct MallOrder {
  build() {
    Column({space: 8}) {
      Row({space: 12}) {
        Image($r('app.media.goods_image'))
          .width(80)
          .height(80)
          .borderRadius(6)

        Column({space: 12}) {
          Text('Q302电动直轨套装')
            .fontSize(16)
            .fontColor($r('app.color.title_color'))
            .fontWeight(500)

          Row({space: 15}) {
            Text('1.23+0.58米，单层，左L，无幔轨，顶装，双开，右边，满墙/满盒尺寸(是)，主卧')
              .fontSize(11)
              .fontColor($r('app.color.tip_color'))
              .layoutWeight(1)
            Column({space: 3}) {
              Text('¥1660.00')
                .fontSize(15)
                .fontWeight(600)
                .fontColor($r('app.color.title_color'))
              Text('共2件')
                .fontSize(11)
                .fontColor($r('app.color.tip_color'))
            }
            .alignItems(HorizontalAlign.End)
          }
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
      }
      .alignItems(VerticalAlign.Top)
      .justifyContent(FlexAlign.Start)


      Row() {
        Row({space: 24}) {
          Text('下单时间')
            .fontSize(13)
            .fontColor($r('app.color.sub_title_color'))
          Text('2023-10-23 16:36')
            .fontSize(13)
            .fontColor($r('app.color.sub_title_color'))
        }
        Text('待付款')
          .fontSize(12)
          .fontColor($r('app.color.tip_color'))
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row({space: 24}) {
        Text('收货信息')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))

        Text('吴亚庆 15105515655')
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .maxLines(1)
          .fontSize(13)
          .layoutWeight(1)
          .fontColor($r('app.color.sub_title_color'))
      }
      .width('100%')

      Row({space: 24}) {
        Text('收货地址')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))
        Text('四川省 成都市 青白江区 大同街道中交凤凰华府1期1栋1403号')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))
          .layoutWeight(1)
      }
      .width('100%')

      Row({space: 24}) {
        Text('订单编号')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))
        Text('S2021122330467')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))
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