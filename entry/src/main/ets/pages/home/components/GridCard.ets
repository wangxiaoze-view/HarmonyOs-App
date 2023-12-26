type GridCardType = {
  icon: Resource;
  title: string;
  subTitle: string
}
@Component
export default struct GridCard {
  private cardHeight: number = 80
  private gridConfig: GridCardType[] = [
    {icon: $r('app.media.icon_az'), title: '窗帘测量', subTitle: '精细化测量服务'},
    {icon: $r('app.media.icon_cl'), title: '窗帘安装', subTitle: '专业的安装平台'},
  ]
  build() {
    Grid() {
      ForEach(this.gridConfig, (item: GridCardType) => {
        GridItem() {
          Row() {
            Image(item.icon)
              .width(34)
              .height(34)
              .margin({right: 12})
            Column({space: 2}) {
              Text(item.title)
                .fontColor($r('app.color.title_color'))
                .fontSize(16)
              Text(item.subTitle)
                .fontSize(10)
                .fontColor($r('app.color.sub_title_color'))
            }
            .alignItems(HorizontalAlign.Start)
          }
          .width('100%')
          .height(this.cardHeight)
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.Center)
          .borderRadius(6)
          .backgroundColor($r('app.color.bg_color'))
        }
      }, item => JSON.stringify(item))
    }
    .height(this.cardHeight)
    .columnsTemplate('1fr 1fr')
    .columnsGap(15)
    .margin({bottom: 15})
  }
}