@Entry
@Component
struct Index {

  @State message: string = 'Hello World'

  build() {
    // Row() {
    // Column() {
    // Text(this.message)
    //   .fontSize(100)
    //   .fontWeight(FontWeight.Normal)
    // }
    // .height('100%')

    Column() {
      Text('ArkUi message')
      HelloComponent({ message: 'hello' })
        .margin(10)
      HelloComponent({ message: 'world' })
        .margin(5)
    }
  }
}

@Component
struct HelloComponent {
  @State message: string = '123';

  build() {
    Row() {
      Button(this.message)
        .fontSize(20)
        .fontColor(Color.White)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          this.message = 'Hello, ArkUi';
        })
    }
  }
}