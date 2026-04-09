#!/usr/bin/env node
const { exec } = require("child_process");
const path = require("path");

const batPath = path.join(__dirname, "S.lab.bat");

exec(`"${batPath}"`, (err, stdout) => {
  if (err) {
    console.error("Error executing script:", err);
    return;
  }
  console.log(stdout);
});
