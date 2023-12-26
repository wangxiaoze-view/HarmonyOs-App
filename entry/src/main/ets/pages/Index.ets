import Home from './home/Home';
import Mall from './mall/Mall';
import Message from './message/Message';
import My from './my/My';
import Order from './order/Order';

type BottomNavType = {
  name: string;
  icon: Resource;
  active_icon: Resource;
}

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()
  private app_bottom_nav: BottomNavType[] = [
    { name: '首页', icon: $r('app.media.icon_home'), active_icon: $r('app.media.icon_home_active') },
    { name: '商城', icon: $r('app.media.icon_mall'), active_icon: $r('app.media.icon_mall_active') },
    { name: '订单', icon: $r('app.media.icon_order'), active_icon: $r('app.media.icon_order_active') },
    { name: '消息', icon: $r('app.media.icon_msg'), active_icon: $r('app.media.icon_msg_active') },
    { name: '我的', icon: $r('app.media.icon_my'), active_icon: $r('app.media.icon_my_active') },
  ]

  @Builder
  TabBuilder(item: BottomNavType, index: number) {
    Column({ space: 6 }) {
      Image(this.currentIndex === index ? item.active_icon : item.icon)
        .width(22)
        .width(22)
      Text(item.name)
        .fontColor(this.currentIndex === index ? $r('app.color.tab_bottom_color_active') : $r('app.color.tab_bottom_color'))
        .fontSize(10)
        .fontWeight(this.currentIndex === index ? 500 : 400)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.controller }) {

      TabContent() {
        Column() {
          Home()
        }
        .height('100%')
        .backgroundColor($r('app.color.page_bg_color'))
      }
      .tabBar(this.TabBuilder(this.app_bottom_nav[0], 0))

      TabContent() {
        Column() {
          Mall()
        }
        .height('100%')
        .backgroundColor($r('app.color.page_bg_color'))
      }
      .tabBar(this.TabBuilder(this.app_bottom_nav[1], 1))

      TabContent() {
        Column() {
          Order()
        }
        .height('100%')
        .backgroundColor($r('app.color.page_bg_color'))

      }.tabBar(this.TabBuilder(this.app_bottom_nav[2], 2))

      TabContent() {
        Column() {
          Message()
        }
        .height('100%')
        .backgroundColor($r('app.color.page_bg_color'))

      }.tabBar(this.TabBuilder(this.app_bottom_nav[3], 3))

      TabContent() {
        Column() {
          My()
        }
        .height('100%')
        .backgroundColor($r('app.color.page_bg_color'))
      }.tabBar(this.TabBuilder(this.app_bottom_nav[4], 4))
    }
    // .scrollable(false)
    .barMode(BarMode.Fixed)
    .barHeight(70)
    .animationDuration(400)
    .backgroundColor($r('app.color.bg_color'))
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }
}
