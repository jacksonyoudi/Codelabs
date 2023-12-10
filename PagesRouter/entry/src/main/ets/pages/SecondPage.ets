import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstants';

@Entry
@Component
struct SecondPage {
  @State message: string = CommonConstants.SECOND_MESSAGE;
  @State src: string = (router.getParams() as Record<string, string>)[CommonConstants.SECOND_SRC_PARAM];


  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(CommonConstants.FONT_SIZE)
          .fontWeight(FontWeight.Bold)
        Text(this.src)
          .fontSize(CommonConstants.PARAMS_FONT_SIZE)
          .opacity(CommonConstants.PARAMS_OPACITY)
        Blank()
        Button($r('app.string.back'))
          .fontSize(CommonConstants.BUTTON_FONT_SIZE)
          .width(CommonConstants.BUTTON_WIDTH)
          .height(CommonConstants.BUTTON_HEIGHT)
          .backgroundColor($r('app.color.button_bg'))
          .onClick(() => {
            router.back();
          })
      }
      .width(CommonConstants.FULL_WIDTH)
      .height(CommonConstants.LAYOUT_HEIGHT)
    }
    .height(CommonConstants.FULL_HEIGHT)
    .backgroundColor($r('app.color.page_bg'))
  }

}