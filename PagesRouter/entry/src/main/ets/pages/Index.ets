import router from '@ohos.router';
import CommonConstants from '../common/constants/CommonConstants';
import Logger from '../common/utils/Logger';

const TAG = '[IndexPage]';


@Entry
@Component
struct Index {
  @State message: string = CommonConstants.INDEX_MESSAGE;

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(CommonConstants.FONT_SIZE)
          .fontWeight(FontWeight.Bold)
        Blank()
        Button($r('app.string.next'))
          .fontSize(CommonConstants.BUTTON_FONT_SIZE)
          .width(CommonConstants.BUTTON_WIDTH)
          .height(CommonConstants.BUTTON_HEIGHT)
          .backgroundColor($r('app.color.button_bg'))
          .onClick(() => {
            router.pushUrl(
              {
                url: CommonConstants.SECOND_URL,
                params: {
                  src: CommonConstants.SECOND_SRC_MSG
                }
              }
            ).catch(
              (error: Error) => {
                Logger.info(TAG, 'IndexPage push error' + JSON.stringify(error));
              }
            );
          })
      }
      .width(CommonConstants.FULL_WIDTH)
      .height(CommonConstants.LAYOUT_HEIGHT)
    }
    .height(CommonConstants.FULL_HEIGHT)
    .backgroundColor($r('app.color.page_bg'))
  }
}