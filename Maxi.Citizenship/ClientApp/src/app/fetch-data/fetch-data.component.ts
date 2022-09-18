import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';

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

export interface Question {
  id: number;
  prompt: string | null;
  category: string | null;
  categoryId: number;
  subCategory: string | null;
  subCategoryId: number;
  hasAsterisk: boolean;
  imageUrl: string | null;

  answers: Answer[] | null;
  show_answer: boolean;
}

export interface Answer {
  id: number;
  questionId: number;
  key: string | null;
  addlInfo: string | null;
  imgUrl: string | null;
  isSupplemental: boolean;
  sort: number;
}
