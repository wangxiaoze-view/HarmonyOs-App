type StatusType = {
  status: number
  name: string
}

@Component
export default struct Header {
  @Link orderTypeIndex: number
  @State statusIndex: number = 0
  @State statusList: StatusType[] = [
    { name: '全部', status: 0 },
    { name: '待付款', status: 1 },
    { name: '待预约', status: 2 },
    { name: '服务中', status: 3 },
    { name: '已完成', status: 4 },
    { name: '已取消', status: 5 },
  ]
  @State mallStatusList: StatusType[] = [
    { name: '全部', status: 0 },
    { name: '待付款', status: 1 },
    { name: '待发货', status: 2 },
    { name: '已发货', status: 3 },
    { name: '已取消', status: 5 },
  ]
  @State childStatusIndex: number = 0
  @State childStatus: StatusType[] = [
    { name: '全部', status: 0 },
    { name: '待上门', status: 1 },
    { name: '待完工', status: 2 },
    { name: '待验收', status: 3 },
  ]

  @Builder
  BuilderTab(name: string, index: number) {
    Text(name)
      .width(100)
      .textAlign(TextAlign.Center)
      .fontSize(14)
      .backgroundColor(0xFF0000)
      .fontColor($r('app.color.sub_title_color'))
  }

  build() {
    Column() {
      // header
      Row() {
        Row() {
          Text('服务订单')
            .width(102)
            .height(32)
            .fontSize(15)
            .borderRadius(100)
            .textAlign(TextAlign.Center)
            .backgroundColor(this.orderTypeIndex === 0 ? $r('app.color.tab_bottom_color_active') : '')
            .fontColor(this.orderTypeIndex === 0 ? $r('app.color.bg_color') : $r('app.color.p_color'))
            .onClick(() => {
              this.orderTypeIndex = 0
              this.statusIndex = 0
            })

          Text('商品订单')
            .width(102)
            .height(32)
            .fontSize(15)
            .borderRadius(100)
            .textAlign(TextAlign.Center)
            .backgroundColor(this.orderTypeIndex === 1 ? $r('app.color.tab_bottom_color_active') : '')
            .fontColor(this.orderTypeIndex === 1 ? $r('app.color.bg_color') : $r('app.color.p_color'))
            .onClick(() => {
              this.orderTypeIndex = 1
              this.statusIndex = 0
            })
        }
        .borderRadius(100)
        .border({
          width: 1,
          color: $r('app.color.tab_bottom_color_active'),
          style: BorderStyle.Solid
        })

        Image($r('app.media.icon_su'))
          .width(32)
          .height(32)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .height(61)

      //  status

      Row() {
        Scroll() {
          Row() {
            List() {
              ForEach(this.orderTypeIndex === 0 ? this.statusList : this.mallStatusList, (item: StatusType, index: number) => {
                ListItem() {
                  Text(item.name)
                    .width(60)
                    .fontSize(14)
                    .fontWeight(index === this.statusIndex ? 600 : 400)
                    .fontColor(index === this.statusIndex ? $r('app.color.tab_bottom_color_active') : $r('app.color.sub_title_color'))
                }
                .onClick(() => {
                  this.statusIndex = index
                })
              }, item => JSON.stringify(item))
            }
            .alignListItem(ListItemAlign.Center)
            .listDirection(Axis.Horizontal)
          }
          .width('100%')
        }
        .scrollable(ScrollDirection.Horizontal)
      }
      .height(49)
      .width('100%')

      //   childStatus

      if (this.orderTypeIndex === 0 && this.statusIndex === 3) {
        Row({ space: 20 }) {
          ForEach(this.childStatus, (item: StatusType, index: number) => {
            Text(item.name)
              .fontSize(10)
              .textAlign(TextAlign.Center)
              .borderRadius(100)
              .width(52)
              .height(21)
              .fontColor(index === this.childStatusIndex ? $r('app.color.tab_bottom_color_active') : $r('app.color.sub_title_color'))
              .borderColor(index === this.childStatusIndex ? $r('app.color.tab_bottom_color_active') : '#DFD8D8')
              .borderWidth(1)
              .borderStyle(BorderStyle.Solid)
              .onClick(() => {
                this.childStatusIndex = index
              })
          }, item => JSON.stringify(item))

        }
        .height(37)
      }

    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
    .padding({ left: 12, right: 12 })
    .backgroundColor($r('app.color.bg_color'))
  }
}