import HeaderTools from './components/HeaderTools'
import MyHeader from './components/MyHeader'
import MyList from './components/MyList'

@Component
export default struct My {
  build() {
    Column() {

      Stack() {
        MyHeader()
      }

      Scroll() {
        Column(){
          HeaderTools()
          MyList()


        }
        .height('100%')
      }
      .scrollBar(BarState.Off)
      .layoutWeight(1)

    }
    .width('100%')
  }
}