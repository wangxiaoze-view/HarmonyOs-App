import Prompt from '@system.prompt'
import Goods from './components/Goods'
import GridCard from './components/GridCard'
import Header from './components/Header'
import HeaderInfo from './components/HeaderInfo'
import NumberCardTool from './components/NumberCardTool'
import SwiperBanner from './components/SwiperBanner'

@Component
export default struct Home {
  private scroller: Scroller = new Scroller()

  build() {
    Column() {
      Stack() {
        Header()
      }
      .backgroundColor(Color.Transparent)

      Scroll() {
        Column() {
          HeaderInfo()
          SwiperBanner()
          GridCard()
          NumberCardTool()
          Goods()
        }
        .alignItems(HorizontalAlign.Start)
        .justifyContent(FlexAlign.Start)
        .padding(17)
        .backgroundImage($r('app.media.icon_vj'))
        .backgroundImageSize({
          width: '70%',
          height: '40%'
        })
      }
      .width('100%')
      .scrollBar(BarState.Off)
      .layoutWeight(1)
    }
  }
}
