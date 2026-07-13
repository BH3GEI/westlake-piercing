export interface StrikeState {
  time: number; phase: string; hp: number; alive: boolean;
  ammo: number; reserve: number; reloading: boolean; reloadFrac: number;
  aliveBots: number; totalBots: number; wins: number; losses: number;
  speed: number; buttons: number; analog: number;
}
declare const entry: {
  boot(): Object;
  pulse(): StrikeState;
  press(button: number): void;
  hold(button: number, active: boolean): void;
  look(dx: number, dy: number): void;
  setPhase(value: string): void;
  resetRound(): void; addWin(): void; addLoss(): void;
  setBotCount(value: number): void;
  configureWeapon(value: Object): void; configureBots(value: Object): void;
  loadMap(index: number): void; toMenu(): void;
};
export default entry;
