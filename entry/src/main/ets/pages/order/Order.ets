import Header from './components/Header'
import MallOrder from './components/MallOrder'
import ServiceOrder from './components/ServiceOrder'

type ListDataType = {
  title: string
  time: string
  content: string
}

@Component
export default struct Order {
  @State orderTypeIndex: number = 0
  private testData: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  build() {
    Column() {
      Stack() {
        Header({ orderTypeIndex: $orderTypeIndex })
      }

      Scroll() {
        List({ space: 15 }) {
          ForEach(this.testData, () => {
            ListItem() {
              if (this.orderTypeIndex === 0) {
                ServiceOrder()
              } else {
                MallOrder()
              }
            }
          }, item => item)

        }.padding(15)

      }
      .scrollBar(BarState.Off)
      .layoutWeight(1)

    }
    .width('100%')
  }
}