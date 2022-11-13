import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatSidenav } from '@angular/material/sidenav';
import { AuthService } from './modules/core/services/auth.service';
import { SidenavService } from './services/sidenav/sidenav.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements AfterViewInit {

  @ViewChild("sidenav") public sidenav!: MatSidenav;

  constructor(private sidenavService: SidenavService, private authService: AuthService) { }

  ngAfterViewInit(): void {
    this.sidenavService.setSidenav(this.sidenav);
    this.authService.login();
  }

}
