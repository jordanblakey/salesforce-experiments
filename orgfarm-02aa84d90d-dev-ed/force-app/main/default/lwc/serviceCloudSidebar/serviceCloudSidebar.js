import { LightningElement } from "lwc";

export default class ServiceCloudSidebar extends LightningElement {
  count = 0;
  onClick() {
    console.log("test!!!");
    this.count += 1;
  }
  connected;
}
