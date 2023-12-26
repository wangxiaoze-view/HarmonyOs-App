import Prompt from '@system.prompt'

@Component
export default struct Header {
  build() {
    Row() {
      Image($r('app.media.icon_kf'))
        .width(24)
        .height(24)
        .onClick(() => {
          Prompt.showToast({
            message: '客服 💁'
          })
        })
    }
    .padding(17)
    .width('100%')
    .backgroundColor(Color.Transparent)
  }
}