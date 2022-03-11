# docker_springboot_00



------
## 사용 명령어 (첫 실행)
1. DockerFile 작성
2. docker build -t docker-example00:1.0 . 명령어 실행
    - docker build를 진행한다.
    - -t(--tag) 태그명을 지정하는 옵션을 추가해서 docker-example00:1.9 으로 만든다
    - dockerfile은 .에 있다.
3. docker run --rm -p 8080:8080 docker-example00:1.0
    - docker run을 진행하되
    - --rm(일회성으로 컨테이너를 실행하는데 컨테이너가 종료되면 관련 리소스(파일시스템,볼륨)을 제거
    - -p(포트포워딩 : 로컬포트(8080):컨테이너포트(8080))
    - 실행할 이미지 이름은 이것이다!
4. docker ps -a
    - docker의 가동중인 컨테이너를 보여주려는데
    - -a(그냥 내려온것도 다보여줘!)
6. docker stop container_id
    - docker stop할건데
    - container_id로 알려줄게!(not 컨테이너이름)

-------
## Docker Compose 사용
