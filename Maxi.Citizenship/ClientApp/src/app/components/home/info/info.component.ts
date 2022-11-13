import { trigger, transition, style, animate } from '@angular/animations';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-info',
  templateUrl: './info.component.html',
  styleUrls: ['./info.component.scss'],
  animations: [
    trigger('insertRemoveTrigger', [
      transition(':enter', [
        style({opacity: 0}),
        animate('100ms', style({opacity: 1}))
      ])
    ]),
    trigger('removeTrigger', [
      transition(':leave', [
        style({opacity: 1}),
        animate('100ms', style({opacity: 0}))
      ])
    ])
  ]
})
export class InfoComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
