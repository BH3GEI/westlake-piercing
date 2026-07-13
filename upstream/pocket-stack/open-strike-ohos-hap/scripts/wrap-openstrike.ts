const [source, target] = process.argv.slice(2);
if (!source || !target) throw new Error("usage: bun wrap-openstrike.ts <source.js> <target.js>");
const bundle = await Bun.file(source).text();
const wrapped = `let previousAlive = true;

export function startOpenStrike(uiHost, strikeHost, pak) {
  previousAlive = true;
  globalThis.ui = uiHost;
  globalThis.__pak = pak.buffer.slice(pak.byteOffset, pak.byteOffset + pak.byteLength);
  globalThis.strike = {
    maps: ["OHOS CORE TEST"],
    loadMap: (i) => strikeHost.loadMap(i),
    toMenu: () => strikeHost.toMenu(),
    setPhase: (v) => strikeHost.setPhase(v),
    resetRound: () => strikeHost.resetRound(),
    addWin: () => strikeHost.addWin(),
    addLoss: () => strikeHost.addLoss(),
    setBotCount: (n) => strikeHost.setBotCount(n),
    configureWeapon: (v) => strikeHost.configureWeapon(v),
    configureBots: (v) => strikeHost.configureBots({
      count: v.count,
      speed: v.speed,
      attackInterval: v.attackInterval,
      damageMin: 0,
      damageMax: 0
    })
  };
${bundle}
  if (typeof globalThis.frame !== "function") throw new Error("official OpenStrike bundle installed no frame()");
}

export function pulseOpenStrike(state) {
  const events = [];
  if (previousAlive && !state.alive) events.push({ type: "playerDied" });
  previousAlive = !!state.alive;
  if (globalThis.strike && typeof globalThis.strike.__dispatch === "function") {
    globalThis.strike.__dispatch(state, events);
  }
  if (typeof globalThis.frame === "function") globalThis.frame(state.buttons, state.analog);
}
`;
await Bun.write(target, wrapped);
