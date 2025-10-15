// app.js
import express from "express";
const app = express();
const port = 3000;

// 基本路由
app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.post("/echo", (req, res) => {
  // 回傳收到的 JSON 或表單資料
  res.json({ received: req.body });
});

// 啟動伺服器
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
