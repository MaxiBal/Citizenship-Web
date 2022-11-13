import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { LearnRoutingModule } from './learn-routing.module';
import { LearnComponent } from './components/learn-home/learn.component';
import { FlexLayoutModule } from '@angular/flex-layout';
import { ConstitutionComponent } from './components/constitution/constitution.component';
import { MaterialModule } from '../material/material.module';
import { DeclarationComponent } from './components/declaration/declaration.component';


@NgModule({
  declarations: [
    LearnComponent,
    DeclarationComponent,
    ConstitutionComponent,

  ],
  imports: [
    CommonModule,
    LearnRoutingModule,
    FlexLayoutModule,
    MaterialModule
  ]
})
export class LearnModule { }
