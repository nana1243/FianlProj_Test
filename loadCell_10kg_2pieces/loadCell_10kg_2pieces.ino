#include "HX711.h"

// HX711 circuit wiring
#define LOADCELL_DOUT_PIN         2
#define LOADCELL_SCK_PIN          3

// scale - 10Kg loadcell : 226 / 5kg loadcell : 372 // 10kg 두개 연결시 ?
// ADC 모듈에서 측정된 결과값을 (loadcellValue)값 당 1g으로 변환해 줌
float loadcellValue = 113.0; 

HX711 scale;

void setup() {
  // put your setup code here, to run once:
  
  Serial.begin(9600);

  // 로드셀 HX711 보드 pin 설정
  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);

  // 부팅 후 잠시 대기 (2초)
  delay(2000);

  // 측정값 1회 읽어오기
  Serial.print("read: \t\t\t");
  Serial.println(scale.read());

  delay(1000);

  // 스케일 설정
  scale.set_scale(loadcellValue);
  
  // 오프셋 설정(10회 측정 후 평균값 적용) - 저울 위에 아무것도 없는 상태를 0g으로 정하는 기준점 설정(저울 위에 아무것도 올려두지 않은 상태여야 합니다.)   
  scale.tare(10);    

  // 설정된 오프셋 및 스케일 값 확인
  Serial.print("Offset value :\t\t");
  Serial.println(scale.get_offset());
  Serial.print("Scale value :\t\t");
  Serial.println(scale.get_scale());

  // (read - offset) 값 확인 (scale 미적용)
   Serial.print("(read - offset) value: \t");  
   Serial.println(scale.get_value());
  delay(2000);

}

void loop() {
  // put your main code here, to run repeatedly:

  // 오프셋 및 스케일이 적용된 측정값 출력 (5회 측정 평균값) 
 
  String value = "value :\t";
  String unit = " g";
  int tmp = scale.get_units(5);
  int weight = abs(tmp);
  //Serial.print(abs(weight));    // 5회 측정 평균값, 소수점 아래 2자리 출력
  Serial.println(value+weight+unit);

  // 3초 대기
  delay(3000);
  
}
