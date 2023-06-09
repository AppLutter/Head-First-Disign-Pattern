/// Duck 클래스에 "구체적으로 구현된" fly() 메소드만 추가하면 모든 오리가 상속 받겠지? 나는 천재야
/// 그 결과 날아다니면 안되는 오리(ex:인형)들도 날게 되었다.
///
/// fly()를 추상 메서드로 놓기로 하였다.
/// 당장은 괜찮았으나.. 6개월마다 fly()의 기능이 수정이 있을거라고 한다.. 6개월마다 매번 override 한 것들을 수정해야할 위기
///
/// Flyable이라는 인터페이스를 따로 만들고
/// fly()가 필요한 클래스(Duck을 상속받은)만 implementation 하기로 한다.
/// 이 것은 두 번째 방법과 차이가 없다.
///
/// 그래서 [여기서 중요한 원칙1]이 있다.
/// 애플리케이션에서 달라지는 부분을 찾아내고, 달라지지 않는 부분과 분리한다.
/// "바뀌는 부분은 따로 뽑아서 캡슐화한다." 그러면 나중에 바뀌지않는 부분에는 영향을 미치지 않고 그 부분만 고치거나 확장할 수 있다.
///
/// Duck 클래스와 별개로 클래스 집합을 만들어야 함. 즉 Flyable을 상속받는 여러개의 구현 클래스를 만들자
/// 그리고 Duck의 인스턴스에 행동(Flyable을 상속받은 구현 클래스)
///
/// [중요한 원칙2]
/// 구현보다는 인터페이스에 맞춰서 프로그래밍 한다.
/// 각 행동은 인터페이스로 표현하고 이런 인터페이스를 사용해서 행동을 구현한다.
///
/// [추가로 중요한 것]
/// 오리가 나는 행동을 Duck 클래스에서 정의한 메소드를 써서 구현하지 않고 다른 클래스에 [위임]한다는 것!!
///
/// [중요한 원칙3]
/// 상속보다는 구성을 활용한다.
///
///
///
/// [전략 패턴]
/// 알고리즘을 정의, 캡슐화해서 각각의 알고리즘을 수정해서 쓸 수 있게 해준다.
/// 클라이언트로부터 알고리즘을 분리해서 독립적으로 변경 가능
///
///
/// [원칙 정리]
/// 바뀌는 부분은 캡슐화 !
/// 상속보다는 구성 !
/// 구현보다는 인터페이스에 맞춰서 프로그래밍 !
///
/// 대부분의 패턴과 원칙은 소프트웨어의 변경 문제와 연관외더 있다.
///
///

void main() {}
