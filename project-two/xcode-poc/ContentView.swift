import SwiftUI

struct ContentView: View {
    var body: some View {
        let template = "%@\n%@\n%@\n%@"
        let AllText = Text(String(format: template, "Project Two!", ObjCPlusPlusText.sayHello(), ObjCText.sayHello(), SwiftText.sayHello()))
        return AllText
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
