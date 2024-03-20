import Foundation
import BugExample
import NotSwiftUI

@main
public struct SwiftUIToolchainBug 
{
  static func main()
  {
    Example.doSomething()
    print("will exit now...")
  }
}
