# 클레이튼 web3.py 연습

## 세팅
#### Python 3.9.5
```
pip install -r requirements.txt
```
#### ERC20, ERC721 베이스 다운로드
```
cd contracts
git clone https://github.com/OpenZeppelin/openzeppelin-contracts.git
```

## 실행
### 컨트랙트 확인
```
python main.py
```
### 컨트랙트 배포
```
python main.py deploy
```
### 토큰 전송
```
python main.py send_token
```
