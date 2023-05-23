void main() {}

/// [옵저버 패턴]
/// 한 객체의 상태가 바뀌면 그 객체에 의존하는 다른 객체에게 연락이 가고 자동으로 내용이 갱신되는 방식

///  각 항목의 디스플레이
///
///  class WeatherData {
///    void measurementsChanged() {
///      double temp = getTemperature();
///      double humidity = getHumidity();
///      double pressure = getPressure();

///      currentConditionsDisplay.update(temp, humidity, pressure);
///      statisticsDisplay.update(temp, humidity, pressure);
///      forecastDisplay.update(temp, humidity, pressure);
///    }
///  }
///
///
/// 위 코드에서
///      currentConditionsDisplay.update(temp, humidity, pressure);
///      statisticsDisplay.update(temp, humidity, pressure);
///      forecastDisplay.update(temp, humidity, pressure);
/// 이 부분은 캡슐화가 필요하다 !! 왜?!?!!? => 바뀔 수 있기 때문에
/// 이 코드는 전부 다 update() 메서드를 가지고 있다 => 실행중에 셋 중 하나의 요소를 update목록에서 빼거나 다른걸 더하고 싶다면..?
/// 지금 상태에선 어렵다 => 구체화 되어있으므로
/// 그렇기 때문에 [옵저버 패턴]을 적용해보자
///
///
/// [옵저버 패턴]이해
/// 1. 신문사는 신문을 발행한다.
/// 2. 구독자들은 구독을 한다. 신문을 지속적으로 받게 된다.
/// 3. 그 중 구독을 해지하는 사람도 있다. 취소한 사람들은 신문을 받지 않게 된다.
/// 4. 몇몇이 취소 했다고 해서, 신문 발행을 멈추지 않는다.(몇몇이 listen을 cancel했다고 프로그램을 멈추게 하지 않으니까?)
/// 5. 지속적으로 구족과 해지가 반복된다.
///
/// 즉 신문사(subject) + 구독자(observer)가 있다면 => [옵저버 패턴]이 되는 것!!
///
///
///
///
///
/// [옵저버 패턴] 구조
///

abstract class Subject {
  void registerObserver(Observer o);

  void removeObserver(Observer o);

  void notifyObservers();
}

class ConcreteSubject implements Subject {
  @override
  void notifyObservers() {
    // TODO: implement notifyObservers
  }

  @override
  void registerObserver(Observer o) {
    // TODO: implement registerObserver
  }

  @override
  void removeObserver(Observer o) {
    // TODO: implement removeObserver
  }

  void getState() {}
  void setState() {}
}

/// Subject를 받으면 원하는 것만 추출해서 업데이트가 가능하다.
abstract class Observer {
  void update(Subject subject);
}

class ConcreteObserver implements Observer {
  @override
  void update(Subject subject) {
    // TODO: implement update
  }
}
