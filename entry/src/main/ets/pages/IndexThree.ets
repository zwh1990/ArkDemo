/**
 * 自定义构建函数传值
 */

@Builder function ABuilder($$: { param1: string }) {
  Row() {
    Text(`UseStateVarByReference: ${$$.param1}`)
      .margin(20)
  }
}

@Builder function BBuilder(param1: string) {
  Row() {
    Text(`UseStateVarByReference: ${param1}`)
      .margin(20)
  }
}

@Entry
@Component
struct IndexThree {
  @State label: string = 'hello';
  @State label2: string = 'hello';

  build() {
    Column() {
      ABuilder({ param1: this.label })
      Button('click me').onClick(() => {
        this.label = 'ArkUi'
      })
      BBuilder(this.label2)
    }
  }
}