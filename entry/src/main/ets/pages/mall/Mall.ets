import GoodsColumnCard from '../../components/GoodsColumnCard'
import GoodsRowCard from '../../components/GoodsRowCard'
import HeaderSearch from './components/HeaderSearch'
import Tools from './components/Tools'

@Component
export default struct Mall {
  private goodsData: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  @State isColumn: boolean = false

  build() {
    Column() {
      Stack() {
        Column() {
          HeaderSearch()
          Tools({ isColumn: $isColumn })
        }
        .padding(14)
      }

      Scroll() {
        if (!this.isColumn) {
          List({ space: 14 }) {
            ForEach(this.goodsData, (item) => {
              ListItem() {
                GoodsRowCard({ title: item.toString() })
              }
              .padding({ left: 14, right: 14 })
            })
          }
          .height('100%')
        } else {
          GridRow({ columns: 2, gutter: { x: 15, y: 15 } }) {
            ForEach(this.goodsData, (item) => {
              GridCol() {
                GoodsColumnCard({ title: item.toString() })
              }
            })
          }
          .padding({ left: 14, right: 14 })
        }
      }
      .layoutWeight(1)
      .padding({ bottom: 15 })
    }
  }
}