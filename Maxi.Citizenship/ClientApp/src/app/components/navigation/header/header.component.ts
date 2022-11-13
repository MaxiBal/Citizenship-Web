import { MediaMatcher } from '@angular/cdk/layout';
import { ChangeDetectorRef, Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { SidenavService } from 'src/app/services/sidenav/sidenav.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent implements OnInit {

  mobileQuery: MediaQueryList;

  private _mobileQueryListener: () => void;

  constructor(private router: Router,
    media: MediaMatcher,
    public sidenavService: SidenavService,
    changeDetectorRef: ChangeDetectorRef) {

      this.mobileQuery = media.matchMedia('(max-width: 600px)');
      this._mobileQueryListener = () => changeDetectorRef.detectChanges();
      this.mobileQuery.addListener(this._mobileQueryListener);
  }

  navigate(url: string): void {
    this.router.navigate([url]);
  }

  ngOnInit(): void {
  }

  toggleSidenav(): void {
    this.sidenavService.toggle();
  }

}
