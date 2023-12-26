import Prompt from '@system.prompt';

type CardType = {
  number: number;
  title: string
}
@Component
export default struct NumberCardTool {
  private cardConfig: CardType[] = [
    {number: 7, title: '待预约'},
    {number: 12, title: '服务中'},
    {number: 3, title: '待发货'},
    {number: 0, title: '费用增加'},
  ]
  build() {
    Grid() {
      ForEach(this.cardConfig, (item: CardType, index: number) => {
        GridItem() {
          Column() {
            Text(item.number.toString())
              .fontSize(18)
              .fontWeight(600)
              .fontColor($r('app.color.title_color'))
            Text(item.title)
              .fontSize(13)
              .fontColor($r('app.color.sub_title_color'))
          }
          .height(80)
          .alignItems(HorizontalAlign.Center)
          .justifyContent(FlexAlign.Center)
        }
        .onClick(() => {
          Prompt.showToast({
            message: this.cardConfig[index].title
          })
        })
      }, item => JSON.stringify(item))
    }
    .width('100%')
    .height(80)
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .backgroundColor($r('app.color.bg_color'))
    .borderRadius(6)
    .margin({bottom: 15})
  }
}