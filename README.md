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

## 명령어 정리 (기본 명령어 및 개념 이해)

1. sh에 대한 이해
    -  sh, bash, csh, 
2. 이미지 관리 (캐시 관련) 과 컨테이너 관리에 대해서 이해
3. 컨테이너에 할당되는 네트워크 관리
4. 이미지 및 컨테이너 저장과 

## 쿠버네티스의 pod 내 컨네이너 관리에 필요함

1. 쿠버네티스에서 docker의 서비스를 제공하지 않는다고 하지만, 최신 버전 도커에서 containerd를 제공하기 때문에 서비스는 이용가능하다.
2. 쿠버네티스 클러스터 관리는 AWS의 EKS, GCP의 GKE를 활용하고 로컬환경에서도 가상머신을 활용해서 구성할 수 있다.




-------
## Docker Compose 사용
