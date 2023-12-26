type ListDataType = {
  title: string
  time: string
  content: string
}

@Component
export default struct Message {
  private listData: ListDataType[] = [
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
    { title: '测试标题', time: '2023-12-12 16:12:00', content: '您的订单消费23.00元，小师妹正在努力安排师傅！' },
  ]

  build() {
    Column() {
      Stack() {
        Row() {
          Text('消息列表')
        }
        .width('100%')
        .height(61)
        .padding({left: 12, right: 12})
        .justifyContent(FlexAlign.Center)
        .backgroundColor($r('app.color.bg_color'))
      }


      Scroll() {
        List() {
          ForEach(this.listData, (item: ListDataType, index: number) => {
            ListItem() {
              Column({space: 10}) {
                Text(item.title + index)
                  .fontSize(16)
                  .fontWeight(600)
                  .fontColor($r('app.color.title_color'))
                Text(item.content)
                  .fontSize(14)
                  .fontColor($r('app.color.sub_title_color'))
                Text(item.time)
                  .fontSize(14)
                  .fontColor($r('app.color.sub_title_color'))
              }
              .backgroundColor($r('app.color.bg_color'))
              .alignItems(HorizontalAlign.Start)
              .width('100%')
              .padding(14)
            }
          })
        }
        .height('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
  }
}