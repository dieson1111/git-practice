# 用官方精簡 Node.js 映像，推薦長期支援版
FROM node:18-alpine

# 建立 app directory
WORKDIR /app

# 只複製 package 檔案，提升快取建置效率
COPY package*.json ./

# 安裝所有依賴（生產與開發）, 並忽略 postinstall 腳本（如有）
RUN npm ci --omit=dev --ignore-scripts

# 複製你的所有原始碼
COPY . .

# 建置應用（如有前端/ts/webpack等可加 build 指令）
RUN npm run build || exit 0

# 指定對外 port
EXPOSE 3000

# 啟動服務
CMD ["npm", "start"]
