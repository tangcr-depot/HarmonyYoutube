import router from '@ohos.router'
import { RoutePath } from '../route/RoutePath'

@Entry
@Component
struct SplashPage {
  aboutToAppear() {
    setTimeout(() => {
      router.replaceUrl({ url: RoutePath.LoginPage })
    }, 2000)
  }

  build() {
    Stack() {
      Image($r('app.media.youtube')).objectFit(ImageFit.ScaleDown)
    }.width("100%").height("100%").backgroundColor($r("app.color.color_white")).alignContent(Alignment.Center)
  }
}