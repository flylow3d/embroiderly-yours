// Screenshot a local file via Edge CDP. Usage: node tools/shot.mjs <file:///...> <out.png> <w> <h>
import { spawn } from "node:child_process";

const EDGE = "C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe";
const PORT = 9224;
const URL = process.argv[2];
const OUT = process.argv[3];
const W = parseInt(process.argv[4] || "1280", 10);
const H = parseInt(process.argv[5] || "900", 10);

const proc = spawn(EDGE, [
  "--headless=new", "--disable-gpu", `--remote-debugging-port=${PORT}`,
  "--user-data-dir=" + process.env.TEMP + "\\edge-shot-profile",
  `--window-size=${W},${H}`, "--hide-scrollbars", URL,
], { stdio: "ignore" });

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
await sleep(3500);

const list = await (await fetch(`http://127.0.0.1:${PORT}/json`)).json();
const page = list.find((t) => t.type === "page");
const ws = new WebSocket(page.webSocketDebuggerUrl);
await new Promise((r) => (ws.onopen = r));

let id = 0;
const pending = new Map();
ws.onmessage = (e) => {
  const m = JSON.parse(e.data);
  if (m.id && pending.has(m.id)) { pending.get(m.id)(m); pending.delete(m.id); }
};
const send = (method, params) =>
  new Promise((res) => { const i = ++id; pending.set(i, res); ws.send(JSON.stringify({ id: i, method, params })); });

await send("Page.enable", {});
await sleep(800);
const { result } = await send("Page.captureScreenshot", { format: "png" });
const { writeFile } = await import("node:fs/promises");
await writeFile(OUT, Buffer.from(result.data, "base64"));
ws.close();
proc.kill();
console.log("saved", OUT);
process.exit(0);
