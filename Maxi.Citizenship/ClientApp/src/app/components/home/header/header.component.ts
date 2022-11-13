import { animate, style, transition, trigger } from '@angular/animations';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  animations: [
    trigger('insertRemoveTrigger', [
      transition(':enter', [
        style({opacity: 0}),
        animate('300ms', style({opacity: 1}))
      ])
    ])
  ]
})
export class HomeHeaderComponent implements OnInit {

  isHeading = true;
  isSubheading = true;
  isHeadingBtn = true;


  constructor() { }

  ngOnInit(): void {
  }

}
