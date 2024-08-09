# 1. 베이스 이미지 설정: Node.js 14 버전을 사용합니다.
FROM node:14

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 의존성 파일 복사 및 설치
COPY package*.json ./
RUN npm install

# 4. 애플리케이션 코드 복사
COPY . /app

# 5. 애플리케이션 포트 노출
EXPOSE 3000

# 6. 애플리케이션 실행 명령어
CMD ["npm", "start"]