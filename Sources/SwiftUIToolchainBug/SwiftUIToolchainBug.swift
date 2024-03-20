import Foundation
import BugExample
import SwiftUI

@main
public struct SwiftUIToolchainBug 
{
  static func main()
  {
    Example.doSomething()
    print("will exit now...")
  }
}
