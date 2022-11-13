import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MaterialModule } from '../material/material.module';
import { QuestionsRoutingModule } from './questions-routing/questions-routing.module';
import { QuestionsTemplateComponent } from './components/questions-template/questions-template.component';
import { QuestionComponent } from './components/question/question.component';
import { QuestionsService } from 'src/app/services/questions/questions.service';
import { QuestionsHomeComponent } from './components/questions-home/questions-home.component';
import { FlexLayoutModule } from '@angular/flex-layout';
import { FormsModule } from '@angular/forms';
import { PracticeTestComponent } from './components/practice-test/practice-test.component';
import { AudibleComponent } from './components/question/audible/audible.component';
import { WrittenComponent } from './components/question/written/written.component';
import { QuestionDataService } from './services/questiondata/questiondata.service';



@NgModule({
  declarations: [
    QuestionsTemplateComponent,
    QuestionComponent,
    QuestionsHomeComponent,
    PracticeTestComponent,
    AudibleComponent,
    WrittenComponent
  ],
  imports: [
    CommonModule,
    MaterialModule,
    QuestionsRoutingModule,
    FlexLayoutModule,
    FormsModule
  ],
  providers: [
    QuestionsService,
    QuestionDataService
  ]
})
export class QuestionsModule { }
