import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GetStartedComponent } from './components/get-started/get-started.component';
import { HomeComponent } from './components/home/home.component';
import { NotFoundComponent } from './components/not-found/not-found.component';
// import { PracticeProblemsComponent } from './components/practice-problems/practice-problems.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  // {path: 'practice-problems', component: PracticeProblemsComponent},
  {path: 'question', loadChildren: () => import("./modules/questions/questions.module").then(m => m.QuestionsModule)},
  {path: 'get-started', component: GetStartedComponent},
  { path: 'learn', loadChildren: () => import('./modules/learn/learn.module').then(m => m.LearnModule) },
  // { path: 'user', loadChildren: () => import('./modules/user/user.module').then(m => m.UserModule) },
  {path: '**', component: NotFoundComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
