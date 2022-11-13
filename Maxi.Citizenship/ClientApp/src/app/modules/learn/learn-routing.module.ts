import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ConstitutionComponent } from './components/constitution/constitution.component';
import { DeclarationComponent } from './components/declaration/declaration.component';
import { LearnComponent } from './components/learn-home/learn.component';

const routes: Routes = [
  { path: '', component: LearnComponent },
  { path: 'constitution', component: ConstitutionComponent },
  { path: 'declaration-of-independence', component: DeclarationComponent}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class LearnRoutingModule { }
