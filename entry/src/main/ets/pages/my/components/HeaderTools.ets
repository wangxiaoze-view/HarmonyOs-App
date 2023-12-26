@Component
export default struct HeaderTools {
  build(){
    GridRow({columns: 5, gutter: {x: 15}}) {
      GridCol() {
        Column({space: 8}) {
          Text('2')
            .fontSize(16)
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
          Text('待付款')
            .fontSize(12)
            .fontColor($r('app.color.sub_title_color'))
        }
      }

      GridCol() {
        Column({space: 8}) {
          Text('4')
            .fontSize(16)
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
          Text('我的理赔')
            .fontSize(12)
            .fontColor($r('app.color.sub_title_color'))
        }
      }

      GridCol() {
        Column({space: 8}) {
          Text('6')
            .fontSize(16)
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
          Text('我的售后')
            .fontSize(12)
            .fontColor($r('app.color.sub_title_color'))
        }
      }

      GridCol() {
        Column({space: 8}) {
          Text('0')
            .fontSize(16)
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
          Text('我的投诉')
            .fontSize(12)
            .fontColor($r('app.color.sub_title_color'))
        }
      }

      GridCol() {
        Column({space: 8}) {
          Text('0')
            .fontSize(16)
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
          Text('商品配件')
            .fontSize(12)
            .fontColor($r('app.color.sub_title_color'))
        }
      }
    }
    .padding(18)
    .margin({top: 12.5})
    .backgroundColor($r('app.color.bg_color'))
  }
}