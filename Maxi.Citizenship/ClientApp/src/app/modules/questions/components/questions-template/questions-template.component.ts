import { Component, OnDestroy, OnInit } from '@angular/core';
import { SidenavService } from 'src/app/services/sidenav/sidenav.service';

@Component({
  selector: 'app-questions-template',
  templateUrl: './questions-template.component.html',
  styleUrls: ['./questions-template.component.scss']
})
export class QuestionsTemplateComponent implements OnInit, OnDestroy {



  constructor(private sidenavService: SidenavService) { }

  ngOnInit(): void {
    this.sidenavService.open();
  }

  ngOnDestroy(): void {
      this.sidenavService.close();
  }

}
