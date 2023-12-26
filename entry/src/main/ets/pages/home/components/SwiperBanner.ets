@Component
export default struct SwiperBanner {
  build() {
    Swiper() {
      Image($r('app.media.banner'))
        .width('100%')
        .height(134)
        .margin({top: 14, bottom: 14})
        .borderRadius(6)
    }
    .indicator(false)
    .disableSwipe(true)
  }
}