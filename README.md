# flutter_getx_app_template

GetX 프레임워크를 이용한 Flutter 애플리케이션 템플릿

## 시작하기

이 프로젝트는 GetX를 최대한 활용하는 프로젝트입니다. GetX 프레임워크의 자세한 사용법은 [이 문서]()를 참고하세요.

프로젝트의 각 부분들을 GetX에서 공식으로 제공하는 [cli]()를 이용합니다.

이 템플릿으로 Flutter 애플리케이션 프로젝트를 시작하려면 상단의 **Use This Template** 버튼을 눌러주세요

프로젝트가 만들어지면 다음 체크리스트를 확인하세요.

- [ ] pubspec.yaml 파일에서 `name` 키와 `description` 키의 내용을 수정하세요
- [ ] 다국어 지원을 위한 시트를 작업하시는 구글 계정으로 만드세요 자세한 내용은 **다국어 컨트롤러** 메뉴를 확인하세요
- [ ] 안드로이드, 아이폰 패키지 이름을 변경하세요. `com.changjoo.park` 으로 찾아 바꾸세요.

## 글로벌 컨트롤러

애플리케이션 전체 범위에서 영향을 주는 컨트롤러는 `lib/app/controllers` 에 있습니다.

### 인증 컨트롤러

이 프로젝트는 파이어베이스 등 외부 인증 프로젝트를 구현하지 않습니다. `lib/app/controllers/auth_controller.dart` 에서 GetX의 [get_storage](https://pub.dev/packages/get_storage)를 이용하여 파이어베이스 인증 모듈 중 [authStateChanges](https://firebase.flutter.dev/docs/auth/usage/#authentication-state)와 유사하게 구현해두었습니다. 파이어베이스를 이용하는 경우 이 부분에 파이어베이스 관련 코드를 구현하면됩니다.



### 다국어 컨트롤러

다국어 컨트롤러는 [flutter_sheet_localization](https://pub.dev/packages/flutter_sheet_localization) 라이브러리와 빌드러너를 이용하는 [flutter_sheet_localization_generator ](https://pub.dev/packages/flutter_sheet_localization_generator) 를 사용합니다.

이 프로젝트에서 사용하는 구글 스프레드시트는 [이 링크](https://docs.google.com/spreadsheets/d/1NsChpiLO0Y4Vj2BS-SSsIQVeXowbgCPKj4uItHFOPGc/edit?usp=sharing)를 눌러 확인하실 수 있습니다.

**주의사항**

*build_runner.bat* 또는  *build_runner.sh* 를 실행했을 때 정상적으로 구글 스프레드시트의 내용이 반영되지 않는 경우가 있습니다.

이 경우 다음 명령어를 이용해 프로젝트를 초기화하세요

```sh
flutter clean
flutter pub get
# 이후 다시 build_runner.bat 또는 build_runner.sh 를 실행해주세요
```

### 테마 컨트롤러

미구현

### 로딩

HTTP 요청 등 긴 작업을 해야할 때 사용자의 입력을 막으려면 `showLoadingIndicator` 메소드를 실행하세요

작업을 마치고 로딩 화면을 없애려면 `hideLoadingIndicator`  메소드를 실행하세요.

## 페이지

### 인증 페이지

이 템플릿에서 이메일로 로그인 버튼을 누르면 올바른 이메일과 아무 비밀번호를 입력하면 홈 화면으로 이동할 수 있습니다.

<img src="./images/signin.png" height="300px">

### 이메일 회원 가입 페이지

<img src="./images/signup.png" height="300px">


## 기타

### get 라이브러리 업데이트

get_cli 라이브러리는 pubspec.yaml을 읽어 명령어를 수행합니다. symver를 이용하면 오류가 발생합니다.

get 라이브러리를 업데이트하려면 https://pub.dev 에서 버전을 확인 후 입력해주세요

```yaml
# 오류가 발생할 수 있습니다.
get: ^3.24.0

# 작동합니다.
get: 3.24.0
```