import { Component, Injectable } from '@angular/core';
import { MatSidenav } from '@angular/material/sidenav';

@Injectable({
  providedIn: 'root'
})
export class SidenavService {

  private sidenav!: MatSidenav;

  public canBeOpened : boolean = false;

  constructor() { }

  public setSidenav(s: MatSidenav) {
    this.sidenav = s;
  }

  public open() {
    return this.sidenav.open();
  }

  public close() {
    return this.sidenav.close();
  }

  public toggle() {
    this.sidenav.toggle();
  }

  public setContent(component: Component) {

  }
}
