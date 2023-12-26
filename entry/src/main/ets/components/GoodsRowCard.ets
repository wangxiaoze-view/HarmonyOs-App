
@Component
export default struct GoodsRowCard {
  private title: string
  build() {
    Row({ space: 8 }) {
      Image($r('app.media.goods_image'))
        .width(120)
        .height(120)
        .borderRadius(6)

      Column({ space: 4 }) {
        //多端头圆形电机电动直轨套装
        Text(this.title)
          .fontSize(15)
          .fontWeight(600)
          .fontColor($r('app.color.title_color'))
          .maxLines(2)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })

        Row({ space: 6 }) {
          Text('青菱')
            .fontSize(9)
            .fontColor($r('app.color.sub_title_color'))
            .backgroundColor($r('app.color.tag_bg_color'))
            .padding({left: 6, right: 6, top: 2, bottom: 2})
            .borderRadius(2)

          Text('电动直轨')
            .fontSize(9)
            .fontColor($r('app.color.sub_title_color'))
            .backgroundColor($r('app.color.tag_bg_color'))
            .padding({left: 6, right: 6, top: 2, bottom: 2})
            .borderRadius(2)
        }

        Text('¥160.00')
          .fontSize(17)
          .fontWeight(600)
          .fontColor($r('app.color.tab_bottom_color_active'))
          .margin({top: 14})

      }
      .height(120)
      .width('100%')
      .padding(12)
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .backgroundColor($r('app.color.bg_color'))
    .borderRadius(6)
  }
}