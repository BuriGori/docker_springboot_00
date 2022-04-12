# docker_springboot_00



<br>
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

<br><br>
## 명령어 정리 (기본 명령어 및 개념 이해)

1. sh에 대한 이해
    -  sh, bash, csh, 
2. 이미지 관리 (캐시 관련) 과 컨테이너 관리에 대해서 이해
3. 컨테이너에 할당되는 네트워크 관리
4. 이미지 및 컨테이너 저장

------------
<br><br>
1. docker ps : 현재 실행중인 컨테이너 출력( -a 옵션으로 모든 컨테이너를 확인할 수 있음 )
2. docker volume inspect : 도커 볼륨의 상세 정보를 출력 ( inspect 명령어가 상세 정보에 대한 기능 )
3. docker run : 도커 컨테이너 실행 ( -it[ 상호 작용 및 터미널 ] 옵션과 리눅스 운영체제를 사용한다면 /bin/bash를 사용해서 bash로 상호 작용할 수 있다.)
4. docker system : 도커 정보 출력
5. docker system prune : 도커 이미지, 컨테이너 등을 삭제 ( prune 명령어가 사용하지 않는 것들을 지우기 때문에 조심히 사용해야함 )
6. docker rm[i] : 도거 컨테이너 삭제 [ 도커 이미지 삭제 ]
7. Dockerfile
    - RUN : 도커 이미지에서 실행할 명령어
    - CMD : 컨테이너 내에서 실행할 명령어 ( 두 가지 명령어는 이미지 생성, 컨테이너 생성 과정에서 명령어가 실행되는 것을 알아야 한다. )
    - WORKDIR : 작업 디렉토리 지정
    - COPY : 파일 복사



<br><br>
## 쿠버네티스의 pod 내 컨네이너 관리에 필요함

1. 쿠버네티스에서 docker의 서비스를 제공하지 않는다고 하지만, 최신 버전 도커에서 containerd를 제공하기 때문에 서비스는 이용가능하다.
2. 쿠버네티스 클러스터 관리는 AWS의 EKS, GCP의 GKE를 활용하고 로컬환경에서도 가상머신을 활용해서 구성할 수 있다.




<br><br>
## Docker Compose 사용
