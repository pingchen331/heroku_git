## 包含heroku cli及 git套件的docker-container
* 複製專案
```
git clone https://github.com/pingchen331/heroku_git.git
```
* 切換到專案資料夾
```
cd heroku_git
```
* 初次使用，執行first-start.sh
```
./first-start.sh
```
* 輸入github登入資訊(email、使用者名稱、密碼)，完成後會開始建構容器映像檔，並進入容器
### 注意：登入資訊只應存在本地資料夾，若需將專案上傳github，請特別注意！！！
* 進入容器後執行以下指令登入heroku
```
heroku login
```
* 第二次以後使用（登入資訊已設定完成、映像檔已在本地端建立）
```
./start.sh
```
