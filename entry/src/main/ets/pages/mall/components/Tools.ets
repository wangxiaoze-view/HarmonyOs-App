import router from '@ohos.router';

type TabStatusType = {
  name: string;
  type: number
}
@Component
export default struct Tools {
  @Link isColumn: boolean
  @State currentIndex: number = 0
  private tabStatus: TabStatusType[] = [
    { name: '常用', type: 1 },
    { name: '收藏', type: 2 },
    { name: '全部', type: 3 },
  ]

  build() {
    Row() {
      Row({space: 24}) {
        ForEach(this.tabStatus, (item: TabStatusType, index: number) => {
          Text(item.name)
            .fontSize(this.currentIndex === index ? 16 : 14)
            .fontWeight(this.currentIndex === index ? 600 : 400)
            .fontColor(this.currentIndex === index ? $r('app.color.title_color') : $r('app.color.sub_title_color'))
            .onClick(() => {
              this.currentIndex = index
            })
        }, item => JSON.stringify(item))
      }

      Row({space: 19}) {
        Image($r('app.media.icon_gwc'))
          .width(22)
          .height(22)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/mall/Carts'
            })
          })

        Image($r('app.media.icon_lb'))
          .width(22)
          .height(22)
          .onClick(() => {
            this.isColumn = !this.isColumn
          })

        Text('|')

        Row() {
          Text('筛选')
          Image($r('app.media.icon_sx'))
            .width(22)
            .height(22)
        }
      }
    }
    .width('100%')
    .margin({top: 14})
    .justifyContent(FlexAlign.SpaceBetween)
  }
}