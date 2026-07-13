const [source, target] = process.argv.slice(2);
if (!source || !target) throw new Error("usage: bun wrap-bundle.ts <source.js> <target.js>");

const bundle = await Bun.file(source).text();
const wrapped = `export function startPocketFigma(host, pak) {
  globalThis.ui = host;
  globalThis.__pak = pak.buffer.slice(pak.byteOffset, pak.byteOffset + pak.byteLength);
${bundle}
}

export function pulsePocketFigma(event) {
  const buttons = event & 0xffff;
  const analog = (event >>> 16) & 0xffff;
  if (typeof globalThis.frame === "function") globalThis.frame(buttons, analog);
}
`;
await Bun.write(target, wrapped);
