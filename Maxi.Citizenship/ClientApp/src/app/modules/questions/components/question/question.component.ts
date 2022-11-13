import { animate, style, transition, trigger } from '@angular/animations';
import { Component, Input, OnChanges, OnDestroy, OnInit, SimpleChanges } from '@angular/core';
import { ActivatedRoute, ParamMap, Router } from '@angular/router';
import { Observable, Subscription } from 'rxjs';
import { SpeakerService } from 'src/app/modules/core/services/speaker.service';
import { Answer, Question, QuestionsResponse, QuestionsService } from 'src/app/services/questions/questions.service';
import { QuestionDataService } from '../../services/questiondata/questiondata.service';


@Component({
  selector: 'app-question',
  templateUrl: './question.component.html',
  styleUrls: ['./question.component.scss'],
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
export class QuestionComponent implements OnInit, OnDestroy {

  @Input("questionIndex") questionIndex!: number;
  question?: Question;

  sub!: Subscription;

  correct = false;
  shouldShowCorrect = false;

  showPrompt = true;

  answered = false;

  answers!: Answer[];

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private questionsService: QuestionsService,
    public questionDataService: QuestionDataService,
    private speakerService: SpeakerService) {
  }

  ngOnDestroy(): void {
    this.sub.unsubscribe();
  }

  ngOnInit(): void {

    if (!this.questionIndex) {
      this.sub = this.route.paramMap.subscribe((params: ParamMap) => {

        this.questionDataService.setAnswered(false);
        this.questionDataService.setCorrect(false);

        let questionNumber = params.get('questionNum')
        if (questionNumber) {
          this.questionIndex = +questionNumber;
        }

        this.questionsService.getQuestions().subscribe((data: Question[]) => {
          this.question = data.find(q => q.id==this.questionIndex);

          this.questionsService.getAnswer(this.questionIndex)?.subscribe((data: Answer[]) => {
            this.answers = data;
          })
        })
      });
    }
    else {
      this.questionsService.getQuestions().subscribe((data: Question[]) => {
        this.question = data[this.questionIndex - 1];

        this.questionsService.getAnswer(this.question.id)?.subscribe((data: Answer[]) => {

          this.answers = data;
        })
      })
    }

    this.questionDataService.answer.subscribe((data: string) => {
      if (data != "")
        this.verifyAnswer(data);
    });

    this.speakerService.setupVoices();

  }



  nextQuestion(): void {
    this.questionDataService.setAnswer("")
    this.router.navigate(['/question', 'q', this.questionIndex + 1])
  }

  learnMore(): void {
    this.router.navigate(['/learn', this.question?.imageUrl]);
  }

  gotoQuestionHome(): void {
    this.router.navigate(['/question']);
  }

  switchAudible(): void {
    this.questionsService.setAudible(!this.getAudible());
  }

  getAudible = () =>
    this.questionsService.getAudible()

  verifyAnswer(text: string) : void {

    let isCorrect = false;

    let editedText = text.toLowerCase()

    for (let answer of this.answers) {
      if (answer.key && editedText.includes(answer.key)) {
        isCorrect = true;
        break;
      }
    }

    this.questionDataService.setCorrect(isCorrect);
    this.questionDataService.setAnswered(true);
  }

  speakPrompt() {
    if (this.question)
      this.speakerService.speak(this.question.prompt, true);
  }

}
