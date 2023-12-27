import Prompt from '@system.prompt'
import hilog from '@ohos.hilog'
import { ProxyLogin } from '../../api/Login_api'
import Logger from '../../utils/Logger'
import { httpRequestGet } from '../../utils/HttpRequest'
import http from '@ohos.net.http'

@Entry
@Component
struct Login {
  @State phone: string = ''
  @State pas: string = ''

  build() {
    Column() {
      Stack() {
        Row() {
          Image($r("app.media.arrow_left"))
            .width(18)
            .height(34)
        }
        .width('100%')
        .justifyContent(FlexAlign.Start)
      }
      .height(60)
      .padding({left: 15, right: 15})


      Scroll() {
        Column({space: 10}) {
          Text('您好，')
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
            .fontSize(29)
          Text('欢迎登录安帮客安装服务系统')
            .fontWeight(600)
            .fontColor($r('app.color.title_color'))
            .fontSize(21)


          Row() {
            TextInput({ placeholder: '请输入手机号', text: this.phone })
              .borderRadius(0)
              .height(50)
              .type(InputType.PhoneNumber)
              .style(TextInputStyle.Inline)
              .layoutWeight(1)
              .borderRadius(6)
              .enterKeyType(EnterKeyType.Next)
              .maxLength(11)
              .onChange((value: string) => {
                this.phone = value
              })
          }
          .margin({top: 80})
          .width('100%')


          Row() {
            TextInput({ placeholder: '请输入密码', text: this.pas })
              .borderRadius(0)
              .height(50)
              .type(InputType.Password)
              .style(TextInputStyle.Inline)
              .layoutWeight(1)
              .borderRadius(6)
              .enterKeyType(EnterKeyType.Done)
              .maxLength(15)
              .onChange((value: string) => {
                this.pas = value
              })
          }
          .margin({top: 20})
          .width('100%')

          Text('忘记密码')
            .textAlign(TextAlign.End)
            .width('100%')
            .margin({top: 8})
            .fontSize(14)
            .fontColor($r('app.color.sub_title_color'))
            .onClick(() => {

            })


          Button('登录')
            .width('100%')
            .margin({top: 58})
            .backgroundColor($r('app.color.tab_bottom_color_active'))
            .height(44)
            .onClick(() => {
              if (!this.phone) {
                return Prompt.showToast({
                  message: '请输入正确的手机号',
                })
              }
              if (!this.pas) {
                return Prompt.showToast({
                  message: '请输入正确的密码'
                })
              }

              ProxyLogin({
                loginName: this.phone,
                data: this.pas
              }).then(r => {
                Prompt.showDialog({
                  title: '测试',
                  message: JSON.stringify(r)
                })
              })
            })

        }
        .width('100%')
        .padding(42)
        .alignItems(HorizontalAlign.Start)




      }
      .width('100%')
    }
    .backgroundColor($r('app.color.bg_color'))
  }
}