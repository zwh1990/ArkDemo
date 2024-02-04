import router from '@ohos.router';

@Entry
@Component
struct IndexTwo {
  @State showChild: boolean = true;

  onPageShow() {
    console.info('IndexTwo onPageShow');
  }

  onPageHide() {
    console.info('IndexTwo onPageHide');
  }

  onBackPress() {
    console.info('IndexTwo onBackPress');
  }

  aboutToAppear() {
    console.info('IndexTwo aboutToAppear');
  }

  aboutToDisappear() {
    console.info('IndexTwo aboutToDisappear');
  }

  build() {
    Column() {
      if (this.showChild) {
        Child()
      }

      Button('delete child').onClick(() => {
        this.showChild = false;
      })

      Button('push to next page').onClick(() => {
        router.pushUrl({ url: 'pages/index' })
      })

      Text($r('app.string.module_desc'))

    }
  }
}

@Component
struct Child {

  @State title: string = 'hello world';

  aboutToAppear() {
    console.info('child aboutToAppear');
  }

  aboutToDisappear() {
    console.info('child aboutToDisappear');
  }

  build() {
    Text(this.title).fontSize(50).onClick(() => {
      this.title = 'hello ArkUi'
    })
  }
}