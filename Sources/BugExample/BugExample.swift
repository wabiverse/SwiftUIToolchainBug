import CxxModule
import SwiftUI

public enum Example
{  
  public static func doSomething() -> Void
  {
    var cxx = CxxModule()

    cxx.doSomething()
  }
}
