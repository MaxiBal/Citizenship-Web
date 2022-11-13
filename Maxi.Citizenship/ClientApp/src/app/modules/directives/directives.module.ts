import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AboutDirective } from './about.directive';
import { ScrollDirective } from './scroll.directive';

@NgModule({
  imports: [
    CommonModule
  ],
  declarations: [
    AboutDirective,
    ScrollDirective
  ],
  exports: [
    AboutDirective,
    ScrollDirective
  ]
})
export class DirectivesModule { }
