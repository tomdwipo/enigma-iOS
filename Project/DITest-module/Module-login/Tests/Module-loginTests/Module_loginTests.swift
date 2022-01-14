import XCTest
@testable import Module_login
import Swinject

final class Module_loginTests: XCTestCase {
    func test_usecase_without_swinject(){
        let loginNetwork = LoginNetworkImpl()
        let loginRepository = LoginRepositoryImpl(network: loginNetwork)
        let sut = GetMessageUseCase(repository: loginRepository)
        
        XCTAssertEqual(sut.getMessage(), "Oke")
    }
    
    func test_usecase_with_swinject(){
        let sut: GetMessageUseCase = SetupModuleLogin.resolve
        XCTAssertEqual(sut.getMessage(), "Oke")
    }
}
