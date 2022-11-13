import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Answer, Question } from 'src/app/services/questions/questions.service';

@Component({
  selector: 'app-fetch-data',
  templateUrl: './fetch-data.component.html',
  styleUrls: ['./fetch-data.component.css']
})
export class FetchDataComponent {
  public questions: Question[] = [];

  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') private baseUrl: string) {

    const url = `${baseUrl}api/questions`;
    http.get<Question[]>(url).subscribe(
      {
        next: result => {
          this.questions = result;
        }
      });
  }

  getAnswer(questionId: number): void {
    const prevQuestion = this.questions.find(q => q.answers?.length);
    if (prevQuestion?.id === questionId) {
      prevQuestion.show_answer = false;
      prevQuestion.answers = [];
      return;
    }

    const url = `${this.baseUrl}api/questions/${questionId}/answers`;
    this.http.get<Answer[]>(url).subscribe(result => {
      {
        const currQuestion = this.questions.find(q => q.id === questionId);
        if (currQuestion) {
          if (prevQuestion) {
            prevQuestion.show_answer = false;
            prevQuestion.answers = [];
          }
          currQuestion.answers = result;
          currQuestion.show_answer = true;
        }
      }
    });
  }
}
