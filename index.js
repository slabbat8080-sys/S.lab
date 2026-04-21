#!/usr/bin/env node
const fs = require("fs");
const path = require("path");

const batPath = path.join(__dirname, "S.lab.bat");

try {
  const content = fs.readFileSync(batPath, "utf-8");
  console.log(content);
} catch (err) {
  console.error("Error reading script file:", err);
}
