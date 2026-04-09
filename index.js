#!/usr/bin/env node
const { exec } = require("child_process");

exec("S.lab.bat", (err, stdout) => {
  console.log(stdout);
});
