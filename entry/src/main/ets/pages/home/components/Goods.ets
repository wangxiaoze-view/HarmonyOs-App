import GoodsColumnCard from '../../../components/GoodsColumnCard'

@Component
export default struct Goods {
  build() {
    Column() {
      Row() {
        Text('推荐商品')
          .fontSize(15)
          .fontWeight(600)
          .fontColor($r('app.color.title_color'))

        Text('更多')
          .fontSize(13)
          .fontColor($r('app.color.sub_title_color'))
      }
      .width('100%')
      .padding(15)
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor($r('app.color.bg_color'))
      .borderRadius(6)

      GridRow({columns: 2, gutter: {x: 15, y: 15}}) {
        GridCol() {
          GoodsColumnCard()
        }
        GridCol() {
          GoodsColumnCard()
        }

        GridCol() {
          GoodsColumnCard()
        }

        GridCol() {
          GoodsColumnCard()
        }
      }

    }
    .borderRadius(6)
  }
}