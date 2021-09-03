const fs = require("fs");

fs.mkdirSync("dist", { recursive: true });
fs.copyFileSync("README.md", "dist/README.md");
fs.copyFileSync("LICENSE", "dist/LICENSE");
fs.copyFileSync("build/main.wasm", "dist/main.wasm");
fs.copyFileSync("build/main.wat", "dist/main.wat");