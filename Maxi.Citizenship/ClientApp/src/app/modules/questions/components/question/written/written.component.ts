import { Component, OnInit, Input, OnChanges, SimpleChanges } from '@angular/core';
import { Question, QuestionsService } from 'src/app/services/questions/questions.service';
import { QuestionDataService } from '../../../services/questiondata/questiondata.service';


@Component({
  selector: 'questions-written',
  templateUrl: './written.component.html',
  styleUrls: ['./written.component.scss'],

})
export class WrittenComponent implements OnInit, OnChanges {


  @Input('questionId') questionId !: number;



  userAnswer!: string;

  constructor(
    private questionDataService: QuestionDataService,
    private questionService: QuestionsService
    ) {

    this.userAnswer = "";
  }
  ngOnChanges(changes: SimpleChanges): void {
    this.userAnswer = '';
  }

  ngOnInit(): void {
  }

  submitAnswer(): void {
    this.questionDataService.setAnswer(this.userAnswer);
  }



}
