import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { QuestionsHomeComponent } from '../components/questions-home/questions-home.component';
import { QuestionComponent } from '../components/question/question.component';
import { PracticeTestComponent } from '../components/practice-test/practice-test.component';

const routes: Routes = [
  {path: '', component: QuestionsHomeComponent},
  {path: 'q/:questionNum', component: QuestionComponent, },
  {path: 'practice-test', component: PracticeTestComponent },
]

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class QuestionsRoutingModule { }
