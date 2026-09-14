# 淺談垂直起降與短距起降無人機

VTOL &amp; STOL UAV 課程講義（互動式單頁網站）。兩小時課程，涵蓋三大類垂起固定翼與短距起降飛機的設計邏輯，每個構型都對照 ArduPilot 裡真實存在的參數與 SITL 模擬模型。

## 線上閱讀

開啟 GitHub Pages 後即可瀏覽：`https://nycu-uav.github.io/UAV-VTOL-STOL/`

啟用方式：Repo → Settings → Pages → Source 選 `Deploy from a branch`，Branch 選 `main` / `(root)`。

## 內容

| 節 | 時間 | 主題 |
|---|---|---|
| 00 | 8′ | 為什麼要垂起／短起 |
| 01 | 10′ | 垂起固定翼家族與 ArduPilot 的三個開關參數 |
| 02 | 15′ | 標準式 VTOL：QuadPlane（SLT）、`Q_FRAME_CLASS` 圖解 |
| 03 | 15′ | 傾轉式 VTOL：Tilt-rotor 與 Tilt-wing |
| 04 | 12′ | 尾座式 VTOL：Tailsitter |
| 05 | 10′ | 過渡機制與飛行模式、Q-assist、AUTO 任務 |
| — | 10′ | 休息 |
| 06 | 20′ | 短距起降 STOL 原理：升力方程式與高升力裝置 |
| 07 | 8′ | STOL 的 ArduPilot 設定：襟翼排程、自動起飛與降落 |
| 08 | 12′ | 選型、常見失敗與 Q&amp;A |

## 頁面功能

- **基礎／進階切換**（右上角）：進階模式會展開完整的 ArduPilot 參數表
- **聽眾／講者切換**（右上角，或網址加 `?speaker`，例如 `https://nycu-uav.github.io/UAV-VTOL-STOL/?speaker`）：講者檢視會多顯示講師備註、各節時間分配、課堂提問，以及上課前待確認的事項；聽眾檢視只顯示給聽眾看的內容
- **互動過渡動畫**：同一個空速進度下並排比較三種構型的過渡行為
- **翼型互動圖**：切換高升力裝置與攻角，即時看 C<sub>L</sub>–α 曲線與氣流分離
- **失速速度計算器**：輸入重量與翼面積，算出 V<sub>s</sub>、翼負荷與建議的 `AIRSPEED_MIN`
- **課堂影片**：點縮圖即在頁內播放（youtube-nocookie 嵌入）
- 支援亮／暗主題、手機版面、列印

## 本機預覽

直接雙擊 `index.html` 時，YouTube 會因為缺少 Referer 而拒絕嵌入（Error 153），此時點縮圖會改為另開 YouTube。要在本機測試頁內播放，請用本機伺服器：

```bash
python3 -m http.server 8000   # 然後開 http://localhost:8000/
```

或直接執行 `preview.bat`（Windows）／`preview.sh`（macOS、Linux）。

## 資料來源與註記

參數名稱、預設值與說明對照 ArduPilot 官方文件與 master 分支原始碼（`quadplane.cpp`、`tailsitter.cpp`、`tiltrotor.cpp`、`Parameters.cpp`、`AP_Landing.cpp`、`mode_takeoff.cpp`）整理。2026-09-14 已將全部參數表逐條對照 ArduPilot 參數定義檔（master）、ArduPlane-stable（V4.7.1）原始碼與官方 wiki 查證；原始碼無法確認的經驗值與影片內容，列在講者模式（`?speaker`）頁尾的「上課前待確認」。

韌體版本以 ArduPilot Plane 4.x 為準；頁面使用 4.5 版以後的參數名稱（例如 `AIRSPEED_MIN`，4.5 版以前叫 `ARSPD_FBW_MIN`），完整對照表在頁尾參考資料。
